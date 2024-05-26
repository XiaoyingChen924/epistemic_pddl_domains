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
                    ; #11937: <==closure== 50905 (pos)
                    (Pb_survivorat_s_p10)

                    ; #21818: <==closure== 40438 (pos)
                    (Pc_survivorat_s_p10)

                    ; #28673: <==closure== 82175 (pos)
                    (Pa_survivorat_s_p10)

                    ; #40438: origin
                    (Bc_survivorat_s_p10)

                    ; #50905: origin
                    (Bb_survivorat_s_p10)

                    ; #82175: origin
                    (Ba_survivorat_s_p10)

                    ; #39896: <==negation-removal== 50905 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #51329: <==negation-removal== 21818 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #72172: <==negation-removal== 28673 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #78318: <==negation-removal== 82175 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #84973: <==negation-removal== 11937 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #87134: <==negation-removal== 40438 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #11937: <==closure== 50905 (pos)
                    (Pb_survivorat_s_p10)

                    ; #21818: <==closure== 40438 (pos)
                    (Pc_survivorat_s_p10)

                    ; #28673: <==closure== 82175 (pos)
                    (Pa_survivorat_s_p10)

                    ; #40438: origin
                    (Bc_survivorat_s_p10)

                    ; #50905: origin
                    (Bb_survivorat_s_p10)

                    ; #82175: origin
                    (Ba_survivorat_s_p10)

                    ; #39896: <==negation-removal== 50905 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #51329: <==negation-removal== 21818 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #72172: <==negation-removal== 28673 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #78318: <==negation-removal== 82175 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #84973: <==negation-removal== 11937 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #87134: <==negation-removal== 40438 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #11937: <==closure== 50905 (pos)
                    (Pb_survivorat_s_p10)

                    ; #21818: <==closure== 40438 (pos)
                    (Pc_survivorat_s_p10)

                    ; #28673: <==closure== 82175 (pos)
                    (Pa_survivorat_s_p10)

                    ; #40438: origin
                    (Bc_survivorat_s_p10)

                    ; #50905: origin
                    (Bb_survivorat_s_p10)

                    ; #82175: origin
                    (Ba_survivorat_s_p10)

                    ; #39896: <==negation-removal== 50905 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #51329: <==negation-removal== 21818 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #72172: <==negation-removal== 28673 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #78318: <==negation-removal== 82175 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #84973: <==negation-removal== 11937 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #87134: <==negation-removal== 40438 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #19749: <==closure== 29147 (pos)
                    (Pc_survivorat_s_p11)

                    ; #29147: origin
                    (Bc_survivorat_s_p11)

                    ; #34470: origin
                    (Bb_survivorat_s_p11)

                    ; #37707: <==closure== 34470 (pos)
                    (Pb_survivorat_s_p11)

                    ; #40407: origin
                    (Ba_survivorat_s_p11)

                    ; #65462: <==closure== 40407 (pos)
                    (Pa_survivorat_s_p11)

                    ; #29791: <==negation-removal== 40407 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #32441: <==negation-removal== 34470 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #33240: <==negation-removal== 19749 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #78309: <==negation-removal== 65462 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #86139: <==negation-removal== 37707 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #92061: <==negation-removal== 29147 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #19749: <==closure== 29147 (pos)
                    (Pc_survivorat_s_p11)

                    ; #29147: origin
                    (Bc_survivorat_s_p11)

                    ; #34470: origin
                    (Bb_survivorat_s_p11)

                    ; #37707: <==closure== 34470 (pos)
                    (Pb_survivorat_s_p11)

                    ; #40407: origin
                    (Ba_survivorat_s_p11)

                    ; #65462: <==closure== 40407 (pos)
                    (Pa_survivorat_s_p11)

                    ; #29791: <==negation-removal== 40407 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #32441: <==negation-removal== 34470 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #33240: <==negation-removal== 19749 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #78309: <==negation-removal== 65462 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #86139: <==negation-removal== 37707 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #92061: <==negation-removal== 29147 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #19749: <==closure== 29147 (pos)
                    (Pc_survivorat_s_p11)

                    ; #29147: origin
                    (Bc_survivorat_s_p11)

                    ; #34470: origin
                    (Bb_survivorat_s_p11)

                    ; #37707: <==closure== 34470 (pos)
                    (Pb_survivorat_s_p11)

                    ; #40407: origin
                    (Ba_survivorat_s_p11)

                    ; #65462: <==closure== 40407 (pos)
                    (Pa_survivorat_s_p11)

                    ; #29791: <==negation-removal== 40407 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #32441: <==negation-removal== 34470 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #33240: <==negation-removal== 19749 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #78309: <==negation-removal== 65462 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #86139: <==negation-removal== 37707 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #92061: <==negation-removal== 29147 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #21155: <==closure== 45242 (pos)
                    (Pb_survivorat_s_p12)

                    ; #45242: origin
                    (Bb_survivorat_s_p12)

                    ; #47602: <==closure== 70265 (pos)
                    (Pa_survivorat_s_p12)

                    ; #53518: <==closure== 58839 (pos)
                    (Pc_survivorat_s_p12)

                    ; #58839: origin
                    (Bc_survivorat_s_p12)

                    ; #70265: origin
                    (Ba_survivorat_s_p12)

                    ; #24001: <==negation-removal== 70265 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #61979: <==negation-removal== 47602 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #73801: <==negation-removal== 53518 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #76575: <==negation-removal== 45242 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #77732: <==negation-removal== 21155 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #84899: <==negation-removal== 58839 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #21155: <==closure== 45242 (pos)
                    (Pb_survivorat_s_p12)

                    ; #45242: origin
                    (Bb_survivorat_s_p12)

                    ; #47602: <==closure== 70265 (pos)
                    (Pa_survivorat_s_p12)

                    ; #53518: <==closure== 58839 (pos)
                    (Pc_survivorat_s_p12)

                    ; #58839: origin
                    (Bc_survivorat_s_p12)

                    ; #70265: origin
                    (Ba_survivorat_s_p12)

                    ; #24001: <==negation-removal== 70265 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #61979: <==negation-removal== 47602 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #73801: <==negation-removal== 53518 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #76575: <==negation-removal== 45242 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #77732: <==negation-removal== 21155 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #84899: <==negation-removal== 58839 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #21155: <==closure== 45242 (pos)
                    (Pb_survivorat_s_p12)

                    ; #45242: origin
                    (Bb_survivorat_s_p12)

                    ; #47602: <==closure== 70265 (pos)
                    (Pa_survivorat_s_p12)

                    ; #53518: <==closure== 58839 (pos)
                    (Pc_survivorat_s_p12)

                    ; #58839: origin
                    (Bc_survivorat_s_p12)

                    ; #70265: origin
                    (Ba_survivorat_s_p12)

                    ; #24001: <==negation-removal== 70265 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #61979: <==negation-removal== 47602 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #73801: <==negation-removal== 53518 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #76575: <==negation-removal== 45242 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #77732: <==negation-removal== 21155 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #84899: <==negation-removal== 58839 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #20032: origin
                    (Ba_survivorat_s_p1)

                    ; #45532: <==closure== 20032 (pos)
                    (Pa_survivorat_s_p1)

                    ; #67344: <==closure== 72524 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72524: origin
                    (Bb_survivorat_s_p1)

                    ; #73003: origin
                    (Bc_survivorat_s_p1)

                    ; #89605: <==closure== 73003 (pos)
                    (Pc_survivorat_s_p1)

                    ; #40953: <==negation-removal== 89605 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #58046: <==negation-removal== 20032 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68250: <==negation-removal== 67344 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #73143: <==negation-removal== 72524 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #74823: <==negation-removal== 45532 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #79520: <==negation-removal== 73003 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #20032: origin
                    (Ba_survivorat_s_p1)

                    ; #45532: <==closure== 20032 (pos)
                    (Pa_survivorat_s_p1)

                    ; #67344: <==closure== 72524 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72524: origin
                    (Bb_survivorat_s_p1)

                    ; #73003: origin
                    (Bc_survivorat_s_p1)

                    ; #89605: <==closure== 73003 (pos)
                    (Pc_survivorat_s_p1)

                    ; #40953: <==negation-removal== 89605 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #58046: <==negation-removal== 20032 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68250: <==negation-removal== 67344 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #73143: <==negation-removal== 72524 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #74823: <==negation-removal== 45532 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #79520: <==negation-removal== 73003 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #20032: origin
                    (Ba_survivorat_s_p1)

                    ; #45532: <==closure== 20032 (pos)
                    (Pa_survivorat_s_p1)

                    ; #67344: <==closure== 72524 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72524: origin
                    (Bb_survivorat_s_p1)

                    ; #73003: origin
                    (Bc_survivorat_s_p1)

                    ; #89605: <==closure== 73003 (pos)
                    (Pc_survivorat_s_p1)

                    ; #40953: <==negation-removal== 89605 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #58046: <==negation-removal== 20032 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68250: <==negation-removal== 67344 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #73143: <==negation-removal== 72524 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #74823: <==negation-removal== 45532 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #79520: <==negation-removal== 73003 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #14650: origin
                    (Bb_survivorat_s_p2)

                    ; #46662: origin
                    (Ba_survivorat_s_p2)

                    ; #70063: <==closure== 14650 (pos)
                    (Pb_survivorat_s_p2)

                    ; #71571: <==closure== 46662 (pos)
                    (Pa_survivorat_s_p2)

                    ; #83035: origin
                    (Bc_survivorat_s_p2)

                    ; #84604: <==closure== 83035 (pos)
                    (Pc_survivorat_s_p2)

                    ; #27130: <==negation-removal== 71571 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #39397: <==negation-removal== 83035 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #43798: <==negation-removal== 84604 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #52763: <==negation-removal== 70063 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55314: <==negation-removal== 46662 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #57981: <==negation-removal== 14650 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #14650: origin
                    (Bb_survivorat_s_p2)

                    ; #46662: origin
                    (Ba_survivorat_s_p2)

                    ; #70063: <==closure== 14650 (pos)
                    (Pb_survivorat_s_p2)

                    ; #71571: <==closure== 46662 (pos)
                    (Pa_survivorat_s_p2)

                    ; #83035: origin
                    (Bc_survivorat_s_p2)

                    ; #84604: <==closure== 83035 (pos)
                    (Pc_survivorat_s_p2)

                    ; #27130: <==negation-removal== 71571 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #39397: <==negation-removal== 83035 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #43798: <==negation-removal== 84604 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #52763: <==negation-removal== 70063 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55314: <==negation-removal== 46662 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #57981: <==negation-removal== 14650 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #14650: origin
                    (Bb_survivorat_s_p2)

                    ; #46662: origin
                    (Ba_survivorat_s_p2)

                    ; #70063: <==closure== 14650 (pos)
                    (Pb_survivorat_s_p2)

                    ; #71571: <==closure== 46662 (pos)
                    (Pa_survivorat_s_p2)

                    ; #83035: origin
                    (Bc_survivorat_s_p2)

                    ; #84604: <==closure== 83035 (pos)
                    (Pc_survivorat_s_p2)

                    ; #27130: <==negation-removal== 71571 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #39397: <==negation-removal== 83035 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #43798: <==negation-removal== 84604 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #52763: <==negation-removal== 70063 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55314: <==negation-removal== 46662 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #57981: <==negation-removal== 14650 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #12734: origin
                    (Bc_survivorat_s_p3)

                    ; #20558: <==closure== 25494 (pos)
                    (Pa_survivorat_s_p3)

                    ; #25494: origin
                    (Ba_survivorat_s_p3)

                    ; #36431: <==closure== 69835 (pos)
                    (Pb_survivorat_s_p3)

                    ; #57339: <==closure== 12734 (pos)
                    (Pc_survivorat_s_p3)

                    ; #69835: origin
                    (Bb_survivorat_s_p3)

                    ; #14783: <==negation-removal== 57339 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #15745: <==negation-removal== 12734 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #26333: <==negation-removal== 36431 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #27663: <==negation-removal== 20558 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #30243: <==negation-removal== 69835 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #90633: <==negation-removal== 25494 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #12734: origin
                    (Bc_survivorat_s_p3)

                    ; #20558: <==closure== 25494 (pos)
                    (Pa_survivorat_s_p3)

                    ; #25494: origin
                    (Ba_survivorat_s_p3)

                    ; #36431: <==closure== 69835 (pos)
                    (Pb_survivorat_s_p3)

                    ; #57339: <==closure== 12734 (pos)
                    (Pc_survivorat_s_p3)

                    ; #69835: origin
                    (Bb_survivorat_s_p3)

                    ; #14783: <==negation-removal== 57339 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #15745: <==negation-removal== 12734 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #26333: <==negation-removal== 36431 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #27663: <==negation-removal== 20558 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #30243: <==negation-removal== 69835 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #90633: <==negation-removal== 25494 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #12734: origin
                    (Bc_survivorat_s_p3)

                    ; #20558: <==closure== 25494 (pos)
                    (Pa_survivorat_s_p3)

                    ; #25494: origin
                    (Ba_survivorat_s_p3)

                    ; #36431: <==closure== 69835 (pos)
                    (Pb_survivorat_s_p3)

                    ; #57339: <==closure== 12734 (pos)
                    (Pc_survivorat_s_p3)

                    ; #69835: origin
                    (Bb_survivorat_s_p3)

                    ; #14783: <==negation-removal== 57339 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #15745: <==negation-removal== 12734 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #26333: <==negation-removal== 36431 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #27663: <==negation-removal== 20558 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #30243: <==negation-removal== 69835 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #90633: <==negation-removal== 25494 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #32035: <==closure== 90689 (pos)
                    (Pa_survivorat_s_p4)

                    ; #39221: origin
                    (Bc_survivorat_s_p4)

                    ; #61640: <==closure== 70712 (pos)
                    (Pb_survivorat_s_p4)

                    ; #69758: <==closure== 39221 (pos)
                    (Pc_survivorat_s_p4)

                    ; #70712: origin
                    (Bb_survivorat_s_p4)

                    ; #90689: origin
                    (Ba_survivorat_s_p4)

                    ; #14939: <==negation-removal== 90689 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #17880: <==negation-removal== 61640 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #23241: <==negation-removal== 69758 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #55396: <==negation-removal== 70712 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #68770: <==negation-removal== 32035 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #87462: <==negation-removal== 39221 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #32035: <==closure== 90689 (pos)
                    (Pa_survivorat_s_p4)

                    ; #39221: origin
                    (Bc_survivorat_s_p4)

                    ; #61640: <==closure== 70712 (pos)
                    (Pb_survivorat_s_p4)

                    ; #69758: <==closure== 39221 (pos)
                    (Pc_survivorat_s_p4)

                    ; #70712: origin
                    (Bb_survivorat_s_p4)

                    ; #90689: origin
                    (Ba_survivorat_s_p4)

                    ; #14939: <==negation-removal== 90689 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #17880: <==negation-removal== 61640 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #23241: <==negation-removal== 69758 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #55396: <==negation-removal== 70712 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #68770: <==negation-removal== 32035 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #87462: <==negation-removal== 39221 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #32035: <==closure== 90689 (pos)
                    (Pa_survivorat_s_p4)

                    ; #39221: origin
                    (Bc_survivorat_s_p4)

                    ; #61640: <==closure== 70712 (pos)
                    (Pb_survivorat_s_p4)

                    ; #69758: <==closure== 39221 (pos)
                    (Pc_survivorat_s_p4)

                    ; #70712: origin
                    (Bb_survivorat_s_p4)

                    ; #90689: origin
                    (Ba_survivorat_s_p4)

                    ; #14939: <==negation-removal== 90689 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #17880: <==negation-removal== 61640 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #23241: <==negation-removal== 69758 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #55396: <==negation-removal== 70712 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #68770: <==negation-removal== 32035 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #87462: <==negation-removal== 39221 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #29107: <==closure== 83433 (pos)
                    (Pb_survivorat_s_p5)

                    ; #39111: <==closure== 78712 (pos)
                    (Pa_survivorat_s_p5)

                    ; #53173: origin
                    (Bc_survivorat_s_p5)

                    ; #78712: origin
                    (Ba_survivorat_s_p5)

                    ; #80127: <==closure== 53173 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83433: origin
                    (Bb_survivorat_s_p5)

                    ; #10139: <==negation-removal== 80127 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #10147: <==negation-removal== 83433 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #14825: <==negation-removal== 53173 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #15489: <==negation-removal== 78712 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #49897: <==negation-removal== 39111 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #73602: <==negation-removal== 29107 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #29107: <==closure== 83433 (pos)
                    (Pb_survivorat_s_p5)

                    ; #39111: <==closure== 78712 (pos)
                    (Pa_survivorat_s_p5)

                    ; #53173: origin
                    (Bc_survivorat_s_p5)

                    ; #78712: origin
                    (Ba_survivorat_s_p5)

                    ; #80127: <==closure== 53173 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83433: origin
                    (Bb_survivorat_s_p5)

                    ; #10139: <==negation-removal== 80127 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #10147: <==negation-removal== 83433 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #14825: <==negation-removal== 53173 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #15489: <==negation-removal== 78712 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #49897: <==negation-removal== 39111 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #73602: <==negation-removal== 29107 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #29107: <==closure== 83433 (pos)
                    (Pb_survivorat_s_p5)

                    ; #39111: <==closure== 78712 (pos)
                    (Pa_survivorat_s_p5)

                    ; #53173: origin
                    (Bc_survivorat_s_p5)

                    ; #78712: origin
                    (Ba_survivorat_s_p5)

                    ; #80127: <==closure== 53173 (pos)
                    (Pc_survivorat_s_p5)

                    ; #83433: origin
                    (Bb_survivorat_s_p5)

                    ; #10139: <==negation-removal== 80127 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #10147: <==negation-removal== 83433 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #14825: <==negation-removal== 53173 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #15489: <==negation-removal== 78712 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #49897: <==negation-removal== 39111 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #73602: <==negation-removal== 29107 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #11934: origin
                    (Bc_survivorat_s_p6)

                    ; #39458: <==closure== 58964 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55469: <==closure== 58357 (pos)
                    (Pa_survivorat_s_p6)

                    ; #58357: origin
                    (Ba_survivorat_s_p6)

                    ; #58964: origin
                    (Bb_survivorat_s_p6)

                    ; #71655: <==closure== 11934 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16429: <==negation-removal== 55469 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #20906: <==negation-removal== 11934 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #37579: <==negation-removal== 58357 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #54226: <==negation-removal== 58964 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #59475: <==negation-removal== 71655 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #86538: <==negation-removal== 39458 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #11934: origin
                    (Bc_survivorat_s_p6)

                    ; #39458: <==closure== 58964 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55469: <==closure== 58357 (pos)
                    (Pa_survivorat_s_p6)

                    ; #58357: origin
                    (Ba_survivorat_s_p6)

                    ; #58964: origin
                    (Bb_survivorat_s_p6)

                    ; #71655: <==closure== 11934 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16429: <==negation-removal== 55469 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #20906: <==negation-removal== 11934 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #37579: <==negation-removal== 58357 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #54226: <==negation-removal== 58964 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #59475: <==negation-removal== 71655 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #86538: <==negation-removal== 39458 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #11934: origin
                    (Bc_survivorat_s_p6)

                    ; #39458: <==closure== 58964 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55469: <==closure== 58357 (pos)
                    (Pa_survivorat_s_p6)

                    ; #58357: origin
                    (Ba_survivorat_s_p6)

                    ; #58964: origin
                    (Bb_survivorat_s_p6)

                    ; #71655: <==closure== 11934 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16429: <==negation-removal== 55469 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #20906: <==negation-removal== 11934 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #37579: <==negation-removal== 58357 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #54226: <==negation-removal== 58964 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #59475: <==negation-removal== 71655 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #86538: <==negation-removal== 39458 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #17450: origin
                    (Bc_survivorat_s_p7)

                    ; #23427: origin
                    (Bb_survivorat_s_p7)

                    ; #24072: <==closure== 47135 (pos)
                    (Pa_survivorat_s_p7)

                    ; #30626: <==closure== 23427 (pos)
                    (Pb_survivorat_s_p7)

                    ; #38810: <==closure== 17450 (pos)
                    (Pc_survivorat_s_p7)

                    ; #47135: origin
                    (Ba_survivorat_s_p7)

                    ; #25398: <==negation-removal== 24072 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #29833: <==negation-removal== 17450 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #37664: <==negation-removal== 47135 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #41644: <==negation-removal== 38810 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #60177: <==negation-removal== 30626 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #87824: <==negation-removal== 23427 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #17450: origin
                    (Bc_survivorat_s_p7)

                    ; #23427: origin
                    (Bb_survivorat_s_p7)

                    ; #24072: <==closure== 47135 (pos)
                    (Pa_survivorat_s_p7)

                    ; #30626: <==closure== 23427 (pos)
                    (Pb_survivorat_s_p7)

                    ; #38810: <==closure== 17450 (pos)
                    (Pc_survivorat_s_p7)

                    ; #47135: origin
                    (Ba_survivorat_s_p7)

                    ; #25398: <==negation-removal== 24072 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #29833: <==negation-removal== 17450 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #37664: <==negation-removal== 47135 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #41644: <==negation-removal== 38810 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #60177: <==negation-removal== 30626 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #87824: <==negation-removal== 23427 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #17450: origin
                    (Bc_survivorat_s_p7)

                    ; #23427: origin
                    (Bb_survivorat_s_p7)

                    ; #24072: <==closure== 47135 (pos)
                    (Pa_survivorat_s_p7)

                    ; #30626: <==closure== 23427 (pos)
                    (Pb_survivorat_s_p7)

                    ; #38810: <==closure== 17450 (pos)
                    (Pc_survivorat_s_p7)

                    ; #47135: origin
                    (Ba_survivorat_s_p7)

                    ; #25398: <==negation-removal== 24072 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #29833: <==negation-removal== 17450 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #37664: <==negation-removal== 47135 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #41644: <==negation-removal== 38810 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #60177: <==negation-removal== 30626 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #87824: <==negation-removal== 23427 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #29567: origin
                    (Ba_survivorat_s_p8)

                    ; #29654: origin
                    (Bc_survivorat_s_p8)

                    ; #38447: <==closure== 65891 (pos)
                    (Pb_survivorat_s_p8)

                    ; #60357: <==closure== 29567 (pos)
                    (Pa_survivorat_s_p8)

                    ; #65891: origin
                    (Bb_survivorat_s_p8)

                    ; #69943: <==closure== 29654 (pos)
                    (Pc_survivorat_s_p8)

                    ; #15666: <==negation-removal== 29567 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #18942: <==negation-removal== 38447 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #42927: <==negation-removal== 29654 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #71017: <==negation-removal== 60357 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #84234: <==negation-removal== 69943 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #84658: <==negation-removal== 65891 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #29567: origin
                    (Ba_survivorat_s_p8)

                    ; #29654: origin
                    (Bc_survivorat_s_p8)

                    ; #38447: <==closure== 65891 (pos)
                    (Pb_survivorat_s_p8)

                    ; #60357: <==closure== 29567 (pos)
                    (Pa_survivorat_s_p8)

                    ; #65891: origin
                    (Bb_survivorat_s_p8)

                    ; #69943: <==closure== 29654 (pos)
                    (Pc_survivorat_s_p8)

                    ; #15666: <==negation-removal== 29567 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #18942: <==negation-removal== 38447 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #42927: <==negation-removal== 29654 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #71017: <==negation-removal== 60357 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #84234: <==negation-removal== 69943 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #84658: <==negation-removal== 65891 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #29567: origin
                    (Ba_survivorat_s_p8)

                    ; #29654: origin
                    (Bc_survivorat_s_p8)

                    ; #38447: <==closure== 65891 (pos)
                    (Pb_survivorat_s_p8)

                    ; #60357: <==closure== 29567 (pos)
                    (Pa_survivorat_s_p8)

                    ; #65891: origin
                    (Bb_survivorat_s_p8)

                    ; #69943: <==closure== 29654 (pos)
                    (Pc_survivorat_s_p8)

                    ; #15666: <==negation-removal== 29567 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #18942: <==negation-removal== 38447 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #42927: <==negation-removal== 29654 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #71017: <==negation-removal== 60357 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #84234: <==negation-removal== 69943 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #84658: <==negation-removal== 65891 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #19175: origin
                    (Bc_survivorat_s_p9)

                    ; #29499: <==closure== 19175 (pos)
                    (Pc_survivorat_s_p9)

                    ; #38203: <==closure== 39501 (pos)
                    (Pb_survivorat_s_p9)

                    ; #39501: origin
                    (Bb_survivorat_s_p9)

                    ; #59727: <==closure== 64104 (pos)
                    (Pa_survivorat_s_p9)

                    ; #64104: origin
                    (Ba_survivorat_s_p9)

                    ; #12243: <==negation-removal== 39501 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #26923: <==negation-removal== 29499 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #60111: <==negation-removal== 59727 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #60810: <==negation-removal== 38203 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #70548: <==negation-removal== 64104 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #75760: <==negation-removal== 19175 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #19175: origin
                    (Bc_survivorat_s_p9)

                    ; #29499: <==closure== 19175 (pos)
                    (Pc_survivorat_s_p9)

                    ; #38203: <==closure== 39501 (pos)
                    (Pb_survivorat_s_p9)

                    ; #39501: origin
                    (Bb_survivorat_s_p9)

                    ; #59727: <==closure== 64104 (pos)
                    (Pa_survivorat_s_p9)

                    ; #64104: origin
                    (Ba_survivorat_s_p9)

                    ; #12243: <==negation-removal== 39501 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #26923: <==negation-removal== 29499 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #60111: <==negation-removal== 59727 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #60810: <==negation-removal== 38203 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #70548: <==negation-removal== 64104 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #75760: <==negation-removal== 19175 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #19175: origin
                    (Bc_survivorat_s_p9)

                    ; #29499: <==closure== 19175 (pos)
                    (Pc_survivorat_s_p9)

                    ; #38203: <==closure== 39501 (pos)
                    (Pb_survivorat_s_p9)

                    ; #39501: origin
                    (Bb_survivorat_s_p9)

                    ; #59727: <==closure== 64104 (pos)
                    (Pa_survivorat_s_p9)

                    ; #64104: origin
                    (Ba_survivorat_s_p9)

                    ; #12243: <==negation-removal== 39501 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #26923: <==negation-removal== 29499 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #60111: <==negation-removal== 59727 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #60810: <==negation-removal== 38203 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #70548: <==negation-removal== 64104 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #75760: <==negation-removal== 19175 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #41607: origin
                    (not_at_a_p10)

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #41607: origin
                    (not_at_a_p10)

                    ; #81142: origin
                    (at_a_p10)

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #41607: origin
                    (not_at_a_p10)

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #34398: origin
                    (at_a_p12)

                    ; #41607: origin
                    (not_at_a_p10)

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #41607: origin
                    (not_at_a_p10)

                    ; #73566: origin
                    (at_a_p2)

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #41607: origin
                    (not_at_a_p10)

                    ; #73765: origin
                    (at_a_p3)

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #41607: origin
                    (not_at_a_p10)

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #41607: origin
                    (not_at_a_p10)

                    ; #67007: origin
                    (at_a_p5)

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #41607: origin
                    (not_at_a_p10)

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #39372: origin
                    (at_a_p7)

                    ; #41607: origin
                    (not_at_a_p10)

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #41607: origin
                    (not_at_a_p10)

                    ; #81270: origin
                    (at_a_p8)

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #41607: origin
                    (not_at_a_p10)

                    ; #54719: origin
                    (at_a_p9)

                    ; #81142: <==negation-removal== 41607 (pos)
                    (not (at_a_p10))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #31074: origin
                    (not_at_a_p11)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #31074: origin
                    (not_at_a_p11)

                    ; #81142: origin
                    (at_a_p10)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #31074: origin
                    (not_at_a_p11)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #31074: origin
                    (not_at_a_p11)

                    ; #34398: origin
                    (at_a_p12)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #31074: origin
                    (not_at_a_p11)

                    ; #73566: origin
                    (at_a_p2)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #31074: origin
                    (not_at_a_p11)

                    ; #73765: origin
                    (at_a_p3)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #31074: origin
                    (not_at_a_p11)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #31074: origin
                    (not_at_a_p11)

                    ; #67007: origin
                    (at_a_p5)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #31074: origin
                    (not_at_a_p11)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #31074: origin
                    (not_at_a_p11)

                    ; #39372: origin
                    (at_a_p7)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #31074: origin
                    (not_at_a_p11)

                    ; #81270: origin
                    (at_a_p8)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #31074: origin
                    (not_at_a_p11)

                    ; #54719: origin
                    (at_a_p9)

                    ; #12339: <==negation-removal== 31074 (pos)
                    (not (at_a_p11))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #24479: origin
                    (not_at_a_p12)

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #24479: origin
                    (not_at_a_p12)

                    ; #81142: origin
                    (at_a_p10)

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #24479: origin
                    (not_at_a_p12)

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #24479: origin
                    (not_at_a_p12)

                    ; #34398: origin
                    (at_a_p12)

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #24479: origin
                    (not_at_a_p12)

                    ; #73566: origin
                    (at_a_p2)

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #24479: origin
                    (not_at_a_p12)

                    ; #73765: origin
                    (at_a_p3)

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #24479: origin
                    (not_at_a_p12)

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #24479: origin
                    (not_at_a_p12)

                    ; #67007: origin
                    (at_a_p5)

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #24479: origin
                    (not_at_a_p12)

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #24479: origin
                    (not_at_a_p12)

                    ; #39372: origin
                    (at_a_p7)

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #24479: origin
                    (not_at_a_p12)

                    ; #81270: origin
                    (at_a_p8)

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #24479: origin
                    (not_at_a_p12)

                    ; #54719: origin
                    (at_a_p9)

                    ; #34398: <==negation-removal== 24479 (pos)
                    (not (at_a_p12))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #59870: origin
                    (not_at_a_p1)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #59870: origin
                    (not_at_a_p1)

                    ; #81142: origin
                    (at_a_p10)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #59870: origin
                    (not_at_a_p1)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #34398: origin
                    (at_a_p12)

                    ; #59870: origin
                    (not_at_a_p1)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #59870: origin
                    (not_at_a_p1)

                    ; #73566: origin
                    (at_a_p2)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #59870: origin
                    (not_at_a_p1)

                    ; #73765: origin
                    (at_a_p3)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #59870: origin
                    (not_at_a_p1)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #59870: origin
                    (not_at_a_p1)

                    ; #67007: origin
                    (at_a_p5)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #59870: origin
                    (not_at_a_p1)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #39372: origin
                    (at_a_p7)

                    ; #59870: origin
                    (not_at_a_p1)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #59870: origin
                    (not_at_a_p1)

                    ; #81270: origin
                    (at_a_p8)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #54719: origin
                    (at_a_p9)

                    ; #59870: origin
                    (not_at_a_p1)

                    ; #10887: <==negation-removal== 59870 (pos)
                    (not (at_a_p1))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #43249: origin
                    (not_at_a_p2)

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #43249: origin
                    (not_at_a_p2)

                    ; #81142: origin
                    (at_a_p10)

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #43249: origin
                    (not_at_a_p2)

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #34398: origin
                    (at_a_p12)

                    ; #43249: origin
                    (not_at_a_p2)

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #43249: origin
                    (not_at_a_p2)

                    ; #73566: origin
                    (at_a_p2)

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #43249: origin
                    (not_at_a_p2)

                    ; #73765: origin
                    (at_a_p3)

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #43249: origin
                    (not_at_a_p2)

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #43249: origin
                    (not_at_a_p2)

                    ; #67007: origin
                    (at_a_p5)

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #43249: origin
                    (not_at_a_p2)

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #39372: origin
                    (at_a_p7)

                    ; #43249: origin
                    (not_at_a_p2)

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #43249: origin
                    (not_at_a_p2)

                    ; #81270: origin
                    (at_a_p8)

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #43249: origin
                    (not_at_a_p2)

                    ; #54719: origin
                    (at_a_p9)

                    ; #73566: <==negation-removal== 43249 (pos)
                    (not (at_a_p2))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #46621: origin
                    (not_at_a_p3)

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #46621: origin
                    (not_at_a_p3)

                    ; #81142: origin
                    (at_a_p10)

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #46621: origin
                    (not_at_a_p3)

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #34398: origin
                    (at_a_p12)

                    ; #46621: origin
                    (not_at_a_p3)

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #46621: origin
                    (not_at_a_p3)

                    ; #73566: origin
                    (at_a_p2)

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #46621: origin
                    (not_at_a_p3)

                    ; #73765: origin
                    (at_a_p3)

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #46621: origin
                    (not_at_a_p3)

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #46621: origin
                    (not_at_a_p3)

                    ; #67007: origin
                    (at_a_p5)

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #46621: origin
                    (not_at_a_p3)

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #39372: origin
                    (at_a_p7)

                    ; #46621: origin
                    (not_at_a_p3)

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #46621: origin
                    (not_at_a_p3)

                    ; #81270: origin
                    (at_a_p8)

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #46621: origin
                    (not_at_a_p3)

                    ; #54719: origin
                    (at_a_p9)

                    ; #73765: <==negation-removal== 46621 (pos)
                    (not (at_a_p3))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #49494: origin
                    (not_at_a_p4)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #49494: origin
                    (not_at_a_p4)

                    ; #81142: origin
                    (at_a_p10)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #49494: origin
                    (not_at_a_p4)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #34398: origin
                    (at_a_p12)

                    ; #49494: origin
                    (not_at_a_p4)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #49494: origin
                    (not_at_a_p4)

                    ; #73566: origin
                    (at_a_p2)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #49494: origin
                    (not_at_a_p4)

                    ; #73765: origin
                    (at_a_p3)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #49494: origin
                    (not_at_a_p4)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #49494: origin
                    (not_at_a_p4)

                    ; #67007: origin
                    (at_a_p5)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #49494: origin
                    (not_at_a_p4)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #39372: origin
                    (at_a_p7)

                    ; #49494: origin
                    (not_at_a_p4)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #49494: origin
                    (not_at_a_p4)

                    ; #81270: origin
                    (at_a_p8)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #49494: origin
                    (not_at_a_p4)

                    ; #54719: origin
                    (at_a_p9)

                    ; #21386: <==negation-removal== 49494 (pos)
                    (not (at_a_p4))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #81142: origin
                    (at_a_p10)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #34398: origin
                    (at_a_p12)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #73566: origin
                    (at_a_p2)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #73765: origin
                    (at_a_p3)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #67007: origin
                    (at_a_p5)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #39372: origin
                    (at_a_p7)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #81270: origin
                    (at_a_p8)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #54719: origin
                    (at_a_p9)

                    ; #87533: origin
                    (not_at_a_p5)

                    ; #67007: <==negation-removal== 87533 (pos)
                    (not (at_a_p5))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #33266: origin
                    (not_at_a_p6)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #33266: origin
                    (not_at_a_p6)

                    ; #81142: origin
                    (at_a_p10)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #33266: origin
                    (not_at_a_p6)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #33266: origin
                    (not_at_a_p6)

                    ; #34398: origin
                    (at_a_p12)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #33266: origin
                    (not_at_a_p6)

                    ; #73566: origin
                    (at_a_p2)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #33266: origin
                    (not_at_a_p6)

                    ; #73765: origin
                    (at_a_p3)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #33266: origin
                    (not_at_a_p6)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #33266: origin
                    (not_at_a_p6)

                    ; #67007: origin
                    (at_a_p5)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #33266: origin
                    (not_at_a_p6)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #33266: origin
                    (not_at_a_p6)

                    ; #39372: origin
                    (at_a_p7)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #33266: origin
                    (not_at_a_p6)

                    ; #81270: origin
                    (at_a_p8)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #33266: origin
                    (not_at_a_p6)

                    ; #54719: origin
                    (at_a_p9)

                    ; #22817: <==negation-removal== 33266 (pos)
                    (not (at_a_p6))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #33505: origin
                    (not_at_a_p7)

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #33505: origin
                    (not_at_a_p7)

                    ; #81142: origin
                    (at_a_p10)

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #33505: origin
                    (not_at_a_p7)

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #33505: origin
                    (not_at_a_p7)

                    ; #34398: origin
                    (at_a_p12)

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #33505: origin
                    (not_at_a_p7)

                    ; #73566: origin
                    (at_a_p2)

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #33505: origin
                    (not_at_a_p7)

                    ; #73765: origin
                    (at_a_p3)

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #33505: origin
                    (not_at_a_p7)

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #33505: origin
                    (not_at_a_p7)

                    ; #67007: origin
                    (at_a_p5)

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #33505: origin
                    (not_at_a_p7)

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #33505: origin
                    (not_at_a_p7)

                    ; #39372: origin
                    (at_a_p7)

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #33505: origin
                    (not_at_a_p7)

                    ; #81270: origin
                    (at_a_p8)

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #33505: origin
                    (not_at_a_p7)

                    ; #54719: origin
                    (at_a_p9)

                    ; #39372: <==negation-removal== 33505 (pos)
                    (not (at_a_p7))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #24596: origin
                    (not_at_a_p8)

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #24596: origin
                    (not_at_a_p8)

                    ; #81142: origin
                    (at_a_p10)

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #24596: origin
                    (not_at_a_p8)

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #24596: origin
                    (not_at_a_p8)

                    ; #34398: origin
                    (at_a_p12)

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #24596: origin
                    (not_at_a_p8)

                    ; #73566: origin
                    (at_a_p2)

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #24596: origin
                    (not_at_a_p8)

                    ; #73765: origin
                    (at_a_p3)

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #24596: origin
                    (not_at_a_p8)

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #24596: origin
                    (not_at_a_p8)

                    ; #67007: origin
                    (at_a_p5)

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #24596: origin
                    (not_at_a_p8)

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #24596: origin
                    (not_at_a_p8)

                    ; #39372: origin
                    (at_a_p7)

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #24596: origin
                    (not_at_a_p8)

                    ; #81270: origin
                    (at_a_p8)

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #24596: origin
                    (not_at_a_p8)

                    ; #54719: origin
                    (at_a_p9)

                    ; #81270: <==negation-removal== 24596 (pos)
                    (not (at_a_p8))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #10887: origin
                    (at_a_p1)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))

                    ; #59870: <==negation-removal== 10887 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #81142: origin
                    (at_a_p10)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #41607: <==negation-removal== 81142 (pos)
                    (not (not_at_a_p10))

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #12339: origin
                    (at_a_p11)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #31074: <==negation-removal== 12339 (pos)
                    (not (not_at_a_p11))

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #34398: origin
                    (at_a_p12)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #24479: <==negation-removal== 34398 (pos)
                    (not (not_at_a_p12))

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #73566: origin
                    (at_a_p2)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #43249: <==negation-removal== 73566 (pos)
                    (not (not_at_a_p2))

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #73765: origin
                    (at_a_p3)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #46621: <==negation-removal== 73765 (pos)
                    (not (not_at_a_p3))

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #21386: origin
                    (at_a_p4)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #49494: <==negation-removal== 21386 (pos)
                    (not (not_at_a_p4))

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #67007: origin
                    (at_a_p5)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))

                    ; #87533: <==negation-removal== 67007 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #22817: origin
                    (at_a_p6)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #33266: <==negation-removal== 22817 (pos)
                    (not (not_at_a_p6))

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #39372: origin
                    (at_a_p7)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #33505: <==negation-removal== 39372 (pos)
                    (not (not_at_a_p7))

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #81270: origin
                    (at_a_p8)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #24596: <==negation-removal== 81270 (pos)
                    (not (not_at_a_p8))

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #54719: origin
                    (at_a_p9)

                    ; #87589: origin
                    (not_at_a_p9)

                    ; #54719: <==negation-removal== 87589 (pos)
                    (not (at_a_p9))

                    ; #87589: <==negation-removal== 54719 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #50874: origin
                    (at_b_p1)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #66958: origin
                    (at_b_p11)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #81740: origin
                    (at_b_p12)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #40356: origin
                    (at_b_p2)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #82322: origin
                    (not_at_b_p10)

                    ; #86500: origin
                    (at_b_p5)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #33338: origin
                    (at_b_p6)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #47649: origin
                    (at_b_p7)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #67419: origin
                    (at_b_p8)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #77512: origin
                    (at_b_p9)

                    ; #82322: origin
                    (not_at_b_p10)

                    ; #11547: <==negation-removal== 82322 (pos)
                    (not (at_b_p10))

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #50874: origin
                    (at_b_p1)

                    ; #53880: origin
                    (not_at_b_p11)

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #53880: origin
                    (not_at_b_p11)

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11))
        :effect (and
                    ; #53880: origin
                    (not_at_b_p11)

                    ; #66958: origin
                    (at_b_p11)

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #53880: origin
                    (not_at_b_p11)

                    ; #81740: origin
                    (at_b_p12)

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #40356: origin
                    (at_b_p2)

                    ; #53880: origin
                    (not_at_b_p11)

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #53880: origin
                    (not_at_b_p11)

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #53880: origin
                    (not_at_b_p11)

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #53880: origin
                    (not_at_b_p11)

                    ; #86500: origin
                    (at_b_p5)

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #33338: origin
                    (at_b_p6)

                    ; #53880: origin
                    (not_at_b_p11)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #47649: origin
                    (at_b_p7)

                    ; #53880: origin
                    (not_at_b_p11)

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #53880: origin
                    (not_at_b_p11)

                    ; #67419: origin
                    (at_b_p8)

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #53880: origin
                    (not_at_b_p11)

                    ; #77512: origin
                    (at_b_p9)

                    ; #66958: <==negation-removal== 53880 (pos)
                    (not (at_b_p11))

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #50874: origin
                    (at_b_p1)

                    ; #78965: origin
                    (not_at_b_p12)

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #78965: origin
                    (not_at_b_p12)

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #66958: origin
                    (at_b_p11)

                    ; #78965: origin
                    (not_at_b_p12)

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #78965: origin
                    (not_at_b_p12)

                    ; #81740: origin
                    (at_b_p12)

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #40356: origin
                    (at_b_p2)

                    ; #78965: origin
                    (not_at_b_p12)

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #78965: origin
                    (not_at_b_p12)

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #78965: origin
                    (not_at_b_p12)

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #78965: origin
                    (not_at_b_p12)

                    ; #86500: origin
                    (at_b_p5)

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #33338: origin
                    (at_b_p6)

                    ; #78965: origin
                    (not_at_b_p12)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #47649: origin
                    (at_b_p7)

                    ; #78965: origin
                    (not_at_b_p12)

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #67419: origin
                    (at_b_p8)

                    ; #78965: origin
                    (not_at_b_p12)

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #77512: origin
                    (at_b_p9)

                    ; #78965: origin
                    (not_at_b_p12)

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))

                    ; #81740: <==negation-removal== 78965 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #50874: origin
                    (at_b_p1)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #66958: origin
                    (at_b_p11)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #81740: origin
                    (at_b_p12)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #40356: origin
                    (at_b_p2)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #86500: origin
                    (at_b_p5)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #33338: origin
                    (at_b_p6)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #47649: origin
                    (at_b_p7)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #67419: origin
                    (at_b_p8)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #77512: origin
                    (at_b_p9)

                    ; #93137: origin
                    (not_at_b_p1)

                    ; #50874: <==negation-removal== 93137 (pos)
                    (not (at_b_p1))

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #50874: origin
                    (at_b_p1)

                    ; #61055: origin
                    (not_at_b_p2)

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #61055: origin
                    (not_at_b_p2)

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #61055: origin
                    (not_at_b_p2)

                    ; #66958: origin
                    (at_b_p11)

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #61055: origin
                    (not_at_b_p2)

                    ; #81740: origin
                    (at_b_p12)

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #40356: origin
                    (at_b_p2)

                    ; #61055: origin
                    (not_at_b_p2)

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #61055: origin
                    (not_at_b_p2)

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #61055: origin
                    (not_at_b_p2)

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #61055: origin
                    (not_at_b_p2)

                    ; #86500: origin
                    (at_b_p5)

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #33338: origin
                    (at_b_p6)

                    ; #61055: origin
                    (not_at_b_p2)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #47649: origin
                    (at_b_p7)

                    ; #61055: origin
                    (not_at_b_p2)

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #61055: origin
                    (not_at_b_p2)

                    ; #67419: origin
                    (at_b_p8)

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #61055: origin
                    (not_at_b_p2)

                    ; #77512: origin
                    (at_b_p9)

                    ; #40356: <==negation-removal== 61055 (pos)
                    (not (at_b_p2))

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #50874: origin
                    (at_b_p1)

                    ; #65168: origin
                    (not_at_b_p3)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #65168: origin
                    (not_at_b_p3)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #65168: origin
                    (not_at_b_p3)

                    ; #66958: origin
                    (at_b_p11)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #65168: origin
                    (not_at_b_p3)

                    ; #81740: origin
                    (at_b_p12)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #40356: origin
                    (at_b_p2)

                    ; #65168: origin
                    (not_at_b_p3)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #65168: origin
                    (not_at_b_p3)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #65168: origin
                    (not_at_b_p3)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #65168: origin
                    (not_at_b_p3)

                    ; #86500: origin
                    (at_b_p5)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #33338: origin
                    (at_b_p6)

                    ; #65168: origin
                    (not_at_b_p3)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #47649: origin
                    (at_b_p7)

                    ; #65168: origin
                    (not_at_b_p3)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #65168: origin
                    (not_at_b_p3)

                    ; #67419: origin
                    (at_b_p8)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #65168: origin
                    (not_at_b_p3)

                    ; #77512: origin
                    (at_b_p9)

                    ; #10476: <==negation-removal== 65168 (pos)
                    (not (at_b_p3))

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #23028: origin
                    (not_at_b_p4)

                    ; #50874: origin
                    (at_b_p1)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #23028: origin
                    (not_at_b_p4)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #23028: origin
                    (not_at_b_p4)

                    ; #66958: origin
                    (at_b_p11)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #23028: origin
                    (not_at_b_p4)

                    ; #81740: origin
                    (at_b_p12)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #23028: origin
                    (not_at_b_p4)

                    ; #40356: origin
                    (at_b_p2)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #23028: origin
                    (not_at_b_p4)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #23028: origin
                    (not_at_b_p4)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #23028: origin
                    (not_at_b_p4)

                    ; #86500: origin
                    (at_b_p5)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #23028: origin
                    (not_at_b_p4)

                    ; #33338: origin
                    (at_b_p6)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #23028: origin
                    (not_at_b_p4)

                    ; #47649: origin
                    (at_b_p7)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #23028: origin
                    (not_at_b_p4)

                    ; #67419: origin
                    (at_b_p8)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #23028: origin
                    (not_at_b_p4)

                    ; #77512: origin
                    (at_b_p9)

                    ; #16313: <==negation-removal== 23028 (pos)
                    (not (at_b_p4))

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #29837: origin
                    (not_at_b_p5)

                    ; #50874: origin
                    (at_b_p1)

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #29837: origin
                    (not_at_b_p5)

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5))
        :effect (and
                    ; #29837: origin
                    (not_at_b_p5)

                    ; #66958: origin
                    (at_b_p11)

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #29837: origin
                    (not_at_b_p5)

                    ; #81740: origin
                    (at_b_p12)

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #29837: origin
                    (not_at_b_p5)

                    ; #40356: origin
                    (at_b_p2)

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #29837: origin
                    (not_at_b_p5)

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #29837: origin
                    (not_at_b_p5)

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #29837: origin
                    (not_at_b_p5)

                    ; #86500: origin
                    (at_b_p5)

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #29837: origin
                    (not_at_b_p5)

                    ; #33338: origin
                    (at_b_p6)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #29837: origin
                    (not_at_b_p5)

                    ; #47649: origin
                    (at_b_p7)

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #29837: origin
                    (not_at_b_p5)

                    ; #67419: origin
                    (at_b_p8)

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #29837: origin
                    (not_at_b_p5)

                    ; #77512: origin
                    (at_b_p9)

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))

                    ; #86500: <==negation-removal== 29837 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #50874: origin
                    (at_b_p1)

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #11547: origin
                    (at_b_p10)

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #66958: origin
                    (at_b_p11)

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #81740: origin
                    (at_b_p12)

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #40356: origin
                    (at_b_p2)

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #11363: origin
                    (not_at_b_p6)

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #16313: origin
                    (at_b_p4)

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #86500: origin
                    (at_b_p5)

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #33338: origin
                    (at_b_p6)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #47649: origin
                    (at_b_p7)

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #67419: origin
                    (at_b_p8)

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #11363: origin
                    (not_at_b_p6)

                    ; #77512: origin
                    (at_b_p9)

                    ; #33338: <==negation-removal== 11363 (pos)
                    (not (at_b_p6))

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #17022: origin
                    (not_at_b_p7)

                    ; #50874: origin
                    (at_b_p1)

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #17022: origin
                    (not_at_b_p7)

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #17022: origin
                    (not_at_b_p7)

                    ; #66958: origin
                    (at_b_p11)

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #17022: origin
                    (not_at_b_p7)

                    ; #81740: origin
                    (at_b_p12)

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #17022: origin
                    (not_at_b_p7)

                    ; #40356: origin
                    (at_b_p2)

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #17022: origin
                    (not_at_b_p7)

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #17022: origin
                    (not_at_b_p7)

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #17022: origin
                    (not_at_b_p7)

                    ; #86500: origin
                    (at_b_p5)

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #17022: origin
                    (not_at_b_p7)

                    ; #33338: origin
                    (at_b_p6)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #17022: origin
                    (not_at_b_p7)

                    ; #47649: origin
                    (at_b_p7)

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #17022: origin
                    (not_at_b_p7)

                    ; #67419: origin
                    (at_b_p8)

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #17022: origin
                    (not_at_b_p7)

                    ; #77512: origin
                    (at_b_p9)

                    ; #47649: <==negation-removal== 17022 (pos)
                    (not (at_b_p7))

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #28590: origin
                    (not_at_b_p8)

                    ; #50874: origin
                    (at_b_p1)

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #28590: origin
                    (not_at_b_p8)

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #28590: origin
                    (not_at_b_p8)

                    ; #66958: origin
                    (at_b_p11)

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #28590: origin
                    (not_at_b_p8)

                    ; #81740: origin
                    (at_b_p12)

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #28590: origin
                    (not_at_b_p8)

                    ; #40356: origin
                    (at_b_p2)

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #28590: origin
                    (not_at_b_p8)

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #28590: origin
                    (not_at_b_p8)

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #28590: origin
                    (not_at_b_p8)

                    ; #86500: origin
                    (at_b_p5)

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #28590: origin
                    (not_at_b_p8)

                    ; #33338: origin
                    (at_b_p6)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #28590: origin
                    (not_at_b_p8)

                    ; #47649: origin
                    (at_b_p7)

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #28590: origin
                    (not_at_b_p8)

                    ; #67419: origin
                    (at_b_p8)

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #28590: origin
                    (not_at_b_p8)

                    ; #77512: origin
                    (at_b_p9)

                    ; #67419: <==negation-removal== 28590 (pos)
                    (not (at_b_p8))

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #50874: origin
                    (at_b_p1)

                    ; #81607: origin
                    (not_at_b_p9)

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))

                    ; #93137: <==negation-removal== 50874 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #11547: origin
                    (at_b_p10)

                    ; #81607: origin
                    (not_at_b_p9)

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))

                    ; #82322: <==negation-removal== 11547 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #66958: origin
                    (at_b_p11)

                    ; #81607: origin
                    (not_at_b_p9)

                    ; #53880: <==negation-removal== 66958 (pos)
                    (not (not_at_b_p11))

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #81607: origin
                    (not_at_b_p9)

                    ; #81740: origin
                    (at_b_p12)

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))

                    ; #78965: <==negation-removal== 81740 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #40356: origin
                    (at_b_p2)

                    ; #81607: origin
                    (not_at_b_p9)

                    ; #61055: <==negation-removal== 40356 (pos)
                    (not (not_at_b_p2))

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #10476: origin
                    (at_b_p3)

                    ; #81607: origin
                    (not_at_b_p9)

                    ; #65168: <==negation-removal== 10476 (pos)
                    (not (not_at_b_p3))

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #16313: origin
                    (at_b_p4)

                    ; #81607: origin
                    (not_at_b_p9)

                    ; #23028: <==negation-removal== 16313 (pos)
                    (not (not_at_b_p4))

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #81607: origin
                    (not_at_b_p9)

                    ; #86500: origin
                    (at_b_p5)

                    ; #29837: <==negation-removal== 86500 (pos)
                    (not (not_at_b_p5))

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #33338: origin
                    (at_b_p6)

                    ; #81607: origin
                    (not_at_b_p9)

                    ; #11363: <==negation-removal== 33338 (pos)
                    (not (not_at_b_p6))

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #47649: origin
                    (at_b_p7)

                    ; #81607: origin
                    (not_at_b_p9)

                    ; #17022: <==negation-removal== 47649 (pos)
                    (not (not_at_b_p7))

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #67419: origin
                    (at_b_p8)

                    ; #81607: origin
                    (not_at_b_p9)

                    ; #28590: <==negation-removal== 67419 (pos)
                    (not (not_at_b_p8))

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #77512: origin
                    (at_b_p9)

                    ; #81607: origin
                    (not_at_b_p9)

                    ; #77512: <==negation-removal== 81607 (pos)
                    (not (at_b_p9))

                    ; #81607: <==negation-removal== 77512 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #59543: origin
                    (at_c_p1)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #60230: origin
                    (at_c_p10)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #78754: origin
                    (at_c_p11)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #41707: origin
                    (at_c_p12)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #41145: origin
                    (at_c_p2)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #39296: origin
                    (at_c_p3)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #71579: origin
                    (at_c_p4)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #74777: origin
                    (at_c_p6)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #58309: origin
                    (at_c_p7)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #69659: origin
                    (at_c_p9)

                    ; #82880: origin
                    (not_at_c_p10)

                    ; #60230: <==negation-removal== 82880 (pos)
                    (not (at_c_p10))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #59543: origin
                    (at_c_p1)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #60230: origin
                    (at_c_p10)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #75578: origin
                    (not_at_c_p11)

                    ; #78754: origin
                    (at_c_p11)

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #41707: origin
                    (at_c_p12)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #41145: origin
                    (at_c_p2)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #39296: origin
                    (at_c_p3)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #71579: origin
                    (at_c_p4)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #74777: origin
                    (at_c_p6)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #58309: origin
                    (at_c_p7)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #69659: origin
                    (at_c_p9)

                    ; #75578: origin
                    (not_at_c_p11)

                    ; #78754: <==negation-removal== 75578 (pos)
                    (not (at_c_p11))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #59543: origin
                    (at_c_p1)

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #60230: origin
                    (at_c_p10)

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #78754: origin
                    (at_c_p11)

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #41707: origin
                    (at_c_p12)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #41145: origin
                    (at_c_p2)

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #39296: origin
                    (at_c_p3)

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #71579: origin
                    (at_c_p4)

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #31305: origin
                    (at_c_p5)

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #74777: origin
                    (at_c_p6)

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #58309: origin
                    (at_c_p7)

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #34718: origin
                    (at_c_p8)

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #23182: origin
                    (not_at_c_p12)

                    ; #69659: origin
                    (at_c_p9)

                    ; #41707: <==negation-removal== 23182 (pos)
                    (not (at_c_p12))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #36568: origin
                    (not_at_c_p1)

                    ; #59543: origin
                    (at_c_p1)

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #36568: origin
                    (not_at_c_p1)

                    ; #60230: origin
                    (at_c_p10)

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #36568: origin
                    (not_at_c_p1)

                    ; #78754: origin
                    (at_c_p11)

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #36568: origin
                    (not_at_c_p1)

                    ; #41707: origin
                    (at_c_p12)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #36568: origin
                    (not_at_c_p1)

                    ; #41145: origin
                    (at_c_p2)

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #36568: origin
                    (not_at_c_p1)

                    ; #39296: origin
                    (at_c_p3)

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #36568: origin
                    (not_at_c_p1)

                    ; #71579: origin
                    (at_c_p4)

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #36568: origin
                    (not_at_c_p1)

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #36568: origin
                    (not_at_c_p1)

                    ; #74777: origin
                    (at_c_p6)

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #36568: origin
                    (not_at_c_p1)

                    ; #58309: origin
                    (at_c_p7)

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #36568: origin
                    (not_at_c_p1)

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #36568: origin
                    (not_at_c_p1)

                    ; #69659: origin
                    (at_c_p9)

                    ; #59543: <==negation-removal== 36568 (pos)
                    (not (at_c_p1))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #50458: origin
                    (not_at_c_p2)

                    ; #59543: origin
                    (at_c_p1)

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #50458: origin
                    (not_at_c_p2)

                    ; #60230: origin
                    (at_c_p10)

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #50458: origin
                    (not_at_c_p2)

                    ; #78754: origin
                    (at_c_p11)

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #41707: origin
                    (at_c_p12)

                    ; #50458: origin
                    (not_at_c_p2)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #41145: origin
                    (at_c_p2)

                    ; #50458: origin
                    (not_at_c_p2)

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #39296: origin
                    (at_c_p3)

                    ; #50458: origin
                    (not_at_c_p2)

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #50458: origin
                    (not_at_c_p2)

                    ; #71579: origin
                    (at_c_p4)

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #50458: origin
                    (not_at_c_p2)

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #50458: origin
                    (not_at_c_p2)

                    ; #74777: origin
                    (at_c_p6)

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #50458: origin
                    (not_at_c_p2)

                    ; #58309: origin
                    (at_c_p7)

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #50458: origin
                    (not_at_c_p2)

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #50458: origin
                    (not_at_c_p2)

                    ; #69659: origin
                    (at_c_p9)

                    ; #41145: <==negation-removal== 50458 (pos)
                    (not (at_c_p2))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #59543: origin
                    (at_c_p1)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #60230: origin
                    (at_c_p10)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #78754: origin
                    (at_c_p11)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #41707: origin
                    (at_c_p12)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #41145: origin
                    (at_c_p2)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #39296: origin
                    (at_c_p3)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #71579: origin
                    (at_c_p4)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #74777: origin
                    (at_c_p6)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #58309: origin
                    (at_c_p7)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #69659: origin
                    (at_c_p9)

                    ; #81587: origin
                    (not_at_c_p3)

                    ; #39296: <==negation-removal== 81587 (pos)
                    (not (at_c_p3))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #59543: origin
                    (at_c_p1)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #60230: origin
                    (at_c_p10)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #78754: origin
                    (at_c_p11)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #41707: origin
                    (at_c_p12)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #41145: origin
                    (at_c_p2)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #39296: origin
                    (at_c_p3)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #71579: origin
                    (at_c_p4)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #74777: origin
                    (at_c_p6)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #58309: origin
                    (at_c_p7)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #69659: origin
                    (at_c_p9)

                    ; #82159: origin
                    (not_at_c_p4)

                    ; #71579: <==negation-removal== 82159 (pos)
                    (not (at_c_p4))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #59543: origin
                    (at_c_p1)

                    ; #62794: origin
                    (not_at_c_p5)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #60230: origin
                    (at_c_p10)

                    ; #62794: origin
                    (not_at_c_p5)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5))
        :effect (and
                    ; #62794: origin
                    (not_at_c_p5)

                    ; #78754: origin
                    (at_c_p11)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #41707: origin
                    (at_c_p12)

                    ; #62794: origin
                    (not_at_c_p5)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #41145: origin
                    (at_c_p2)

                    ; #62794: origin
                    (not_at_c_p5)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #39296: origin
                    (at_c_p3)

                    ; #62794: origin
                    (not_at_c_p5)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #62794: origin
                    (not_at_c_p5)

                    ; #71579: origin
                    (at_c_p4)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #62794: origin
                    (not_at_c_p5)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #62794: origin
                    (not_at_c_p5)

                    ; #74777: origin
                    (at_c_p6)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #58309: origin
                    (at_c_p7)

                    ; #62794: origin
                    (not_at_c_p5)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #62794: origin
                    (not_at_c_p5)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #62794: origin
                    (not_at_c_p5)

                    ; #69659: origin
                    (at_c_p9)

                    ; #31305: <==negation-removal== 62794 (pos)
                    (not (at_c_p5))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #59543: origin
                    (at_c_p1)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #60230: origin
                    (at_c_p10)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #77228: origin
                    (not_at_c_p6)

                    ; #78754: origin
                    (at_c_p11)

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #41707: origin
                    (at_c_p12)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #41145: origin
                    (at_c_p2)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #39296: origin
                    (at_c_p3)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #71579: origin
                    (at_c_p4)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #74777: origin
                    (at_c_p6)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #58309: origin
                    (at_c_p7)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #69659: origin
                    (at_c_p9)

                    ; #77228: origin
                    (not_at_c_p6)

                    ; #74777: <==negation-removal== 77228 (pos)
                    (not (at_c_p6))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #59543: origin
                    (at_c_p1)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #60230: origin
                    (at_c_p10)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #78354: origin
                    (not_at_c_p7)

                    ; #78754: origin
                    (at_c_p11)

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #41707: origin
                    (at_c_p12)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #41145: origin
                    (at_c_p2)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #39296: origin
                    (at_c_p3)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #71579: origin
                    (at_c_p4)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #74777: origin
                    (at_c_p6)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #58309: origin
                    (at_c_p7)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #69659: origin
                    (at_c_p9)

                    ; #78354: origin
                    (not_at_c_p7)

                    ; #58309: <==negation-removal== 78354 (pos)
                    (not (at_c_p7))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #59543: origin
                    (at_c_p1)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #60230: origin
                    (at_c_p10)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #78754: origin
                    (at_c_p11)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #41707: origin
                    (at_c_p12)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #41145: origin
                    (at_c_p2)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #39296: origin
                    (at_c_p3)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #71579: origin
                    (at_c_p4)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #74777: origin
                    (at_c_p6)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #58309: origin
                    (at_c_p7)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #69659: origin
                    (at_c_p9)

                    ; #87925: origin
                    (not_at_c_p8)

                    ; #34718: <==negation-removal== 87925 (pos)
                    (not (at_c_p8))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #59543: origin
                    (at_c_p1)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #36568: <==negation-removal== 59543 (pos)
                    (not (not_at_c_p1))

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #60230: origin
                    (at_c_p10)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))

                    ; #82880: <==negation-removal== 60230 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #78754: origin
                    (at_c_p11)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))

                    ; #75578: <==negation-removal== 78754 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #41707: origin
                    (at_c_p12)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #23182: <==negation-removal== 41707 (pos)
                    (not (not_at_c_p12))

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #41145: origin
                    (at_c_p2)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #50458: <==negation-removal== 41145 (pos)
                    (not (not_at_c_p2))

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #39296: origin
                    (at_c_p3)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))

                    ; #81587: <==negation-removal== 39296 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #71579: origin
                    (at_c_p4)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))

                    ; #82159: <==negation-removal== 71579 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #31305: origin
                    (at_c_p5)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #62794: <==negation-removal== 31305 (pos)
                    (not (not_at_c_p5))

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #74777: origin
                    (at_c_p6)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))

                    ; #77228: <==negation-removal== 74777 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #58309: origin
                    (at_c_p7)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))

                    ; #78354: <==negation-removal== 58309 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #34718: origin
                    (at_c_p8)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))

                    ; #87925: <==negation-removal== 34718 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #69659: origin
                    (at_c_p9)

                    ; #83615: origin
                    (not_at_c_p9)

                    ; #69659: <==negation-removal== 83615 (pos)
                    (not (at_c_p9))

                    ; #83615: <==negation-removal== 69659 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #23757: <==closure== 61877 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #25796: <==commonly_known== 51089 (pos)
                    (Ba_checked_p10)

                    ; #34411: <==closure== 43590 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #43590: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #51089: origin
                    (checked_p10)

                    ; #51526: <==closure== 78770 (pos)
                    (Pb_checked_p10)

                    ; #61877: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #66070: <==closure== 25796 (pos)
                    (Pa_checked_p10)

                    ; #78770: <==commonly_known== 51089 (pos)
                    (Bb_checked_p10)

                    ; #83798: <==closure== 87575 (pos)
                    (Pc_checked_p10)

                    ; #87575: <==commonly_known== 51089 (pos)
                    (Bc_checked_p10)

                    ; #10440: <==negation-removal== 61877 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #20336: <==negation-removal== 34411 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #23634: <==negation-removal== 25796 (pos)
                    (not (Pa_not_checked_p10))

                    ; #30867: <==negation-removal== 51526 (pos)
                    (not (Bb_not_checked_p10))

                    ; #33025: <==negation-removal== 51089 (pos)
                    (not (not_checked_p10))

                    ; #42445: <==negation-removal== 66070 (pos)
                    (not (Ba_not_checked_p10))

                    ; #51825: <==negation-removal== 43590 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #77225: <==uncertain_firing== 61877 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #79307: <==negation-removal== 78770 (pos)
                    (not (Pb_not_checked_p10))

                    ; #82968: <==negation-removal== 83798 (pos)
                    (not (Bc_not_checked_p10))

                    ; #87088: <==negation-removal== 87575 (pos)
                    (not (Pc_not_checked_p10))

                    ; #88720: <==unclosure== 90636 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #89281: <==unclosure== 77225 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #90636: <==uncertain_firing== 43590 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #91401: <==negation-removal== 23757 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #15473: <==closure== 38125 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #22453: <==commonly_known== 38013 (pos)
                    (Bc_checked_p11)

                    ; #38013: origin
                    (checked_p11)

                    ; #38125: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #41492: <==commonly_known== 38013 (pos)
                    (Bb_checked_p11)

                    ; #43996: <==closure== 22453 (pos)
                    (Pc_checked_p11)

                    ; #45629: <==commonly_known== 38013 (pos)
                    (Ba_checked_p11)

                    ; #47120: <==closure== 41492 (pos)
                    (Pb_checked_p11)

                    ; #62230: <==closure== 45629 (pos)
                    (Pa_checked_p11)

                    ; #73995: <==closure== 90849 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #90849: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #14729: <==negation-removal== 22453 (pos)
                    (not (Pc_not_checked_p11))

                    ; #16168: <==negation-removal== 38125 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #24329: <==uncertain_firing== 38125 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #30181: <==negation-removal== 41492 (pos)
                    (not (Pb_not_checked_p11))

                    ; #38680: <==negation-removal== 43996 (pos)
                    (not (Bc_not_checked_p11))

                    ; #42096: <==negation-removal== 45629 (pos)
                    (not (Pa_not_checked_p11))

                    ; #46103: <==unclosure== 96984 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #46891: <==negation-removal== 62230 (pos)
                    (not (Ba_not_checked_p11))

                    ; #57501: <==negation-removal== 90849 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #67456: <==negation-removal== 38013 (pos)
                    (not (not_checked_p11))

                    ; #70754: <==negation-removal== 73995 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #70762: <==negation-removal== 47120 (pos)
                    (not (Bb_not_checked_p11))

                    ; #74461: <==unclosure== 24329 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #80797: <==negation-removal== 15473 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #96984: <==uncertain_firing== 90849 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #14048: <==commonly_known== 88390 (pos)
                    (Bc_checked_p12)

                    ; #14979: <==closure== 14048 (pos)
                    (Pc_checked_p12)

                    ; #18241: <==commonly_known== 88390 (pos)
                    (Ba_checked_p12)

                    ; #41595: <==commonly_known== 88390 (pos)
                    (Bb_checked_p12)

                    ; #46340: <==closure== 58016 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #50081: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #53325: <==closure== 41595 (pos)
                    (Pb_checked_p12)

                    ; #58016: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #70420: <==closure== 50081 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #77379: <==closure== 18241 (pos)
                    (Pa_checked_p12)

                    ; #88390: origin
                    (checked_p12)

                    ; #14142: <==uncertain_firing== 50081 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #20006: <==negation-removal== 77379 (pos)
                    (not (Ba_not_checked_p12))

                    ; #25070: <==negation-removal== 58016 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #28826: <==negation-removal== 46340 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #30625: <==uncertain_firing== 58016 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #42108: <==negation-removal== 14979 (pos)
                    (not (Bc_not_checked_p12))

                    ; #43630: <==negation-removal== 53325 (pos)
                    (not (Bb_not_checked_p12))

                    ; #44333: <==negation-removal== 70420 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #59394: <==negation-removal== 88390 (pos)
                    (not (not_checked_p12))

                    ; #62048: <==unclosure== 14142 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #64404: <==negation-removal== 14048 (pos)
                    (not (Pc_not_checked_p12))

                    ; #77080: <==unclosure== 30625 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #78088: <==negation-removal== 41595 (pos)
                    (not (Pb_not_checked_p12))

                    ; #78363: <==negation-removal== 18241 (pos)
                    (not (Pa_not_checked_p12))

                    ; #83050: <==negation-removal== 50081 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #21158: <==closure== 46816 (pos)
                    (Pa_checked_p1)

                    ; #27137: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #31156: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #35400: <==commonly_known== 89076 (pos)
                    (Bc_checked_p1)

                    ; #35931: <==closure== 31156 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #36391: <==closure== 27137 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #46816: <==commonly_known== 89076 (pos)
                    (Ba_checked_p1)

                    ; #58881: <==closure== 35400 (pos)
                    (Pc_checked_p1)

                    ; #66779: <==commonly_known== 89076 (pos)
                    (Bb_checked_p1)

                    ; #70728: <==closure== 66779 (pos)
                    (Pb_checked_p1)

                    ; #89076: origin
                    (checked_p1)

                    ; #16086: <==negation-removal== 89076 (pos)
                    (not (not_checked_p1))

                    ; #19830: <==negation-removal== 27137 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #19982: <==negation-removal== 70728 (pos)
                    (not (Bb_not_checked_p1))

                    ; #24539: <==negation-removal== 35931 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #25091: <==negation-removal== 21158 (pos)
                    (not (Ba_not_checked_p1))

                    ; #26876: <==uncertain_firing== 31156 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #30824: <==negation-removal== 66779 (pos)
                    (not (Pb_not_checked_p1))

                    ; #30845: <==negation-removal== 31156 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #35416: <==negation-removal== 58881 (pos)
                    (not (Bc_not_checked_p1))

                    ; #38871: <==uncertain_firing== 27137 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #39270: <==unclosure== 38871 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #59904: <==negation-removal== 35400 (pos)
                    (not (Pc_not_checked_p1))

                    ; #70063: <==negation-removal== 46816 (pos)
                    (not (Pa_not_checked_p1))

                    ; #70784: <==negation-removal== 36391 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #85082: <==unclosure== 26876 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12147: <==closure== 85448 (pos)
                    (Pb_checked_p2)

                    ; #15609: <==commonly_known== 20008 (pos)
                    (Ba_checked_p2)

                    ; #20008: origin
                    (checked_p2)

                    ; #41283: <==closure== 15609 (pos)
                    (Pa_checked_p2)

                    ; #41760: <==closure== 48410 (pos)
                    (Pc_checked_p2)

                    ; #47229: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #48410: <==commonly_known== 20008 (pos)
                    (Bc_checked_p2)

                    ; #54649: <==closure== 47229 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #85448: <==commonly_known== 20008 (pos)
                    (Bb_checked_p2)

                    ; #86756: <==closure== 88929 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #88929: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #15506: <==negation-removal== 20008 (pos)
                    (not (not_checked_p2))

                    ; #18354: <==uncertain_firing== 88929 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #25966: <==uncertain_firing== 47229 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #30517: <==unclosure== 18354 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #33763: <==negation-removal== 47229 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #34567: <==negation-removal== 88929 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #40648: <==negation-removal== 54649 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #41065: <==negation-removal== 15609 (pos)
                    (not (Pa_not_checked_p2))

                    ; #46327: <==unclosure== 25966 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #55348: <==negation-removal== 12147 (pos)
                    (not (Bb_not_checked_p2))

                    ; #58358: <==negation-removal== 48410 (pos)
                    (not (Pc_not_checked_p2))

                    ; #68173: <==negation-removal== 41283 (pos)
                    (not (Ba_not_checked_p2))

                    ; #73694: <==negation-removal== 86756 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #83638: <==negation-removal== 41760 (pos)
                    (not (Bc_not_checked_p2))

                    ; #88030: <==negation-removal== 85448 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16717: <==commonly_known== 50019 (pos)
                    (Bc_checked_p3)

                    ; #48304: <==closure== 54475 (pos)
                    (Pb_checked_p3)

                    ; #50019: origin
                    (checked_p3)

                    ; #52000: <==closure== 56154 (pos)
                    (Pa_checked_p3)

                    ; #54475: <==commonly_known== 50019 (pos)
                    (Bb_checked_p3)

                    ; #56154: <==commonly_known== 50019 (pos)
                    (Ba_checked_p3)

                    ; #58921: <==closure== 65607 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #60066: <==closure== 16717 (pos)
                    (Pc_checked_p3)

                    ; #60602: <==closure== 79529 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #65607: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #79529: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #12757: <==negation-removal== 65607 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #14712: <==negation-removal== 58921 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #23430: <==negation-removal== 16717 (pos)
                    (not (Pc_not_checked_p3))

                    ; #27365: <==negation-removal== 79529 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #38126: <==negation-removal== 48304 (pos)
                    (not (Bb_not_checked_p3))

                    ; #40759: <==negation-removal== 60602 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #41671: <==negation-removal== 54475 (pos)
                    (not (Pb_not_checked_p3))

                    ; #46670: <==unclosure== 63206 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #63206: <==uncertain_firing== 65607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #63211: <==negation-removal== 52000 (pos)
                    (not (Ba_not_checked_p3))

                    ; #78026: <==negation-removal== 50019 (pos)
                    (not (not_checked_p3))

                    ; #80810: <==negation-removal== 60066 (pos)
                    (not (Bc_not_checked_p3))

                    ; #84603: <==negation-removal== 56154 (pos)
                    (not (Pa_not_checked_p3))

                    ; #84933: <==unclosure== 85751 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #85751: <==uncertain_firing== 79529 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #29528: <==commonly_known== 66528 (pos)
                    (Ba_checked_p4)

                    ; #32698: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #36342: <==commonly_known== 66528 (pos)
                    (Bb_checked_p4)

                    ; #36554: <==closure== 32698 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #39052: <==closure== 98019 (pos)
                    (Pc_checked_p4)

                    ; #40049: <==closure== 46079 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #46079: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #50840: <==closure== 36342 (pos)
                    (Pb_checked_p4)

                    ; #57542: <==closure== 29528 (pos)
                    (Pa_checked_p4)

                    ; #66528: origin
                    (checked_p4)

                    ; #98019: <==commonly_known== 66528 (pos)
                    (Bc_checked_p4)

                    ; #16487: <==negation-removal== 57542 (pos)
                    (not (Ba_not_checked_p4))

                    ; #17476: <==negation-removal== 98019 (pos)
                    (not (Pc_not_checked_p4))

                    ; #26907: <==negation-removal== 39052 (pos)
                    (not (Bc_not_checked_p4))

                    ; #43885: <==negation-removal== 36342 (pos)
                    (not (Pb_not_checked_p4))

                    ; #47441: <==uncertain_firing== 46079 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #55242: <==unclosure== 79852 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #59482: <==negation-removal== 46079 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #68319: <==unclosure== 47441 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #69441: <==negation-removal== 32698 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #72459: <==negation-removal== 40049 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #75270: <==negation-removal== 50840 (pos)
                    (not (Bb_not_checked_p4))

                    ; #76780: <==negation-removal== 66528 (pos)
                    (not (not_checked_p4))

                    ; #77298: <==negation-removal== 29528 (pos)
                    (not (Pa_not_checked_p4))

                    ; #78152: <==negation-removal== 36554 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #79852: <==uncertain_firing== 32698 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #42844: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #47320: origin
                    (checked_p5)

                    ; #50138: <==closure== 42844 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #52328: <==closure== 64978 (pos)
                    (Pc_checked_p5)

                    ; #58149: <==commonly_known== 47320 (pos)
                    (Ba_checked_p5)

                    ; #58999: <==closure== 58149 (pos)
                    (Pa_checked_p5)

                    ; #61080: <==closure== 80078 (pos)
                    (Pb_checked_p5)

                    ; #64978: <==commonly_known== 47320 (pos)
                    (Bc_checked_p5)

                    ; #80078: <==commonly_known== 47320 (pos)
                    (Bb_checked_p5)

                    ; #81580: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #90081: <==closure== 81580 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #10221: <==negation-removal== 61080 (pos)
                    (not (Bb_not_checked_p5))

                    ; #15280: <==negation-removal== 90081 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #16490: <==negation-removal== 47320 (pos)
                    (not (not_checked_p5))

                    ; #22994: <==negation-removal== 64978 (pos)
                    (not (Pc_not_checked_p5))

                    ; #25331: <==unclosure== 28525 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #25664: <==negation-removal== 50138 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #28525: <==uncertain_firing== 42844 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #29435: <==negation-removal== 80078 (pos)
                    (not (Pb_not_checked_p5))

                    ; #30878: <==negation-removal== 42844 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #33978: <==negation-removal== 81580 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #35653: <==negation-removal== 58999 (pos)
                    (not (Ba_not_checked_p5))

                    ; #62887: <==negation-removal== 58149 (pos)
                    (not (Pa_not_checked_p5))

                    ; #67603: <==unclosure== 90994 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #90994: <==uncertain_firing== 81580 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #94202: <==negation-removal== 52328 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #22187: <==commonly_known== 98668 (pos)
                    (Bb_checked_p6)

                    ; #25254: <==closure== 77581 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #47692: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #69079: <==closure== 22187 (pos)
                    (Pb_checked_p6)

                    ; #69197: <==commonly_known== 98668 (pos)
                    (Bc_checked_p6)

                    ; #77581: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #79028: <==closure== 69197 (pos)
                    (Pc_checked_p6)

                    ; #80295: <==closure== 81431 (pos)
                    (Pa_checked_p6)

                    ; #81431: <==commonly_known== 98668 (pos)
                    (Ba_checked_p6)

                    ; #82648: <==closure== 47692 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #98668: origin
                    (checked_p6)

                    ; #10052: <==negation-removal== 80295 (pos)
                    (not (Ba_not_checked_p6))

                    ; #28273: <==unclosure== 92196 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #33403: <==negation-removal== 69079 (pos)
                    (not (Bb_not_checked_p6))

                    ; #36009: <==negation-removal== 98668 (pos)
                    (not (not_checked_p6))

                    ; #36741: <==negation-removal== 47692 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #38445: <==negation-removal== 25254 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #43908: <==negation-removal== 77581 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #45567: <==negation-removal== 81431 (pos)
                    (not (Pa_not_checked_p6))

                    ; #56814: <==unclosure== 65726 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #65726: <==uncertain_firing== 47692 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #72647: <==negation-removal== 82648 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #73164: <==negation-removal== 22187 (pos)
                    (not (Pb_not_checked_p6))

                    ; #77646: <==negation-removal== 79028 (pos)
                    (not (Bc_not_checked_p6))

                    ; #91038: <==negation-removal== 69197 (pos)
                    (not (Pc_not_checked_p6))

                    ; #92196: <==uncertain_firing== 77581 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #22205: <==closure== 61455 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #27631: <==closure== 72716 (pos)
                    (Pb_checked_p7)

                    ; #28452: <==commonly_known== 89725 (pos)
                    (Ba_checked_p7)

                    ; #49736: <==closure== 86606 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #58648: <==commonly_known== 89725 (pos)
                    (Bc_checked_p7)

                    ; #61455: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #72716: <==commonly_known== 89725 (pos)
                    (Bb_checked_p7)

                    ; #81835: <==closure== 28452 (pos)
                    (Pa_checked_p7)

                    ; #86225: <==closure== 58648 (pos)
                    (Pc_checked_p7)

                    ; #86606: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #89725: origin
                    (checked_p7)

                    ; #21779: <==negation-removal== 72716 (pos)
                    (not (Pb_not_checked_p7))

                    ; #39764: <==negation-removal== 28452 (pos)
                    (not (Pa_not_checked_p7))

                    ; #44438: <==negation-removal== 22205 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #46650: <==negation-removal== 81835 (pos)
                    (not (Ba_not_checked_p7))

                    ; #54582: <==unclosure== 83037 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #54723: <==uncertain_firing== 61455 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #57873: <==negation-removal== 86225 (pos)
                    (not (Bc_not_checked_p7))

                    ; #63581: <==negation-removal== 27631 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67182: <==negation-removal== 49736 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #73420: <==negation-removal== 58648 (pos)
                    (not (Pc_not_checked_p7))

                    ; #74089: <==negation-removal== 61455 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #76197: <==negation-removal== 89725 (pos)
                    (not (not_checked_p7))

                    ; #76666: <==unclosure== 54723 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #80287: <==negation-removal== 86606 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #83037: <==uncertain_firing== 86606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14135: <==closure== 46775 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #17951: <==commonly_known== 64613 (pos)
                    (Bb_checked_p8)

                    ; #18478: <==closure== 17951 (pos)
                    (Pb_checked_p8)

                    ; #19758: <==closure== 21844 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #21844: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #25931: <==closure== 37057 (pos)
                    (Pc_checked_p8)

                    ; #32129: <==commonly_known== 64613 (pos)
                    (Ba_checked_p8)

                    ; #37057: <==commonly_known== 64613 (pos)
                    (Bc_checked_p8)

                    ; #46775: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #50083: <==closure== 32129 (pos)
                    (Pa_checked_p8)

                    ; #64613: origin
                    (checked_p8)

                    ; #10566: <==negation-removal== 37057 (pos)
                    (not (Pc_not_checked_p8))

                    ; #11404: <==negation-removal== 21844 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #14217: <==negation-removal== 32129 (pos)
                    (not (Pa_not_checked_p8))

                    ; #14240: <==negation-removal== 17951 (pos)
                    (not (Pb_not_checked_p8))

                    ; #27541: <==negation-removal== 14135 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #31455: <==negation-removal== 46775 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #33913: <==negation-removal== 18478 (pos)
                    (not (Bb_not_checked_p8))

                    ; #40845: <==negation-removal== 19758 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #44799: <==unclosure== 65350 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #49236: <==negation-removal== 25931 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55283: <==uncertain_firing== 21844 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #64667: <==unclosure== 55283 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #65350: <==uncertain_firing== 46775 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #79725: <==negation-removal== 64613 (pos)
                    (not (not_checked_p8))

                    ; #85394: <==negation-removal== 50083 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10339: <==closure== 50331 (pos)
                    (Pb_checked_p9)

                    ; #10793: <==commonly_known== 86522 (pos)
                    (Bc_checked_p9)

                    ; #20309: <==closure== 62108 (pos)
                    (Pa_checked_p9)

                    ; #38353: <==closure== 10793 (pos)
                    (Pc_checked_p9)

                    ; #41916: <==closure== 87180 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #50331: <==commonly_known== 86522 (pos)
                    (Bb_checked_p9)

                    ; #58282: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #62108: <==commonly_known== 86522 (pos)
                    (Ba_checked_p9)

                    ; #86522: origin
                    (checked_p9)

                    ; #87180: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #90840: <==closure== 58282 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #10819: <==negation-removal== 87180 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #13945: <==negation-removal== 10793 (pos)
                    (not (Pc_not_checked_p9))

                    ; #15380: <==uncertain_firing== 87180 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #19312: <==negation-removal== 41916 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #29439: <==negation-removal== 62108 (pos)
                    (not (Pa_not_checked_p9))

                    ; #34138: <==uncertain_firing== 58282 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #36887: <==negation-removal== 10339 (pos)
                    (not (Bb_not_checked_p9))

                    ; #50832: <==unclosure== 34138 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #55094: <==negation-removal== 58282 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #55855: <==negation-removal== 20309 (pos)
                    (not (Ba_not_checked_p9))

                    ; #56303: <==negation-removal== 90840 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #57071: <==unclosure== 15380 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #81056: <==negation-removal== 50331 (pos)
                    (not (Pb_not_checked_p9))

                    ; #90048: <==negation-removal== 38353 (pos)
                    (not (Bc_not_checked_p9))

                    ; #90542: <==negation-removal== 86522 (pos)
                    (not (not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #25243: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #25796: <==commonly_known== 51089 (pos)
                    (Ba_checked_p10)

                    ; #51089: origin
                    (checked_p10)

                    ; #51526: <==closure== 78770 (pos)
                    (Pb_checked_p10)

                    ; #66070: <==closure== 25796 (pos)
                    (Pa_checked_p10)

                    ; #75653: <==closure== 25243 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #77183: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #78770: <==commonly_known== 51089 (pos)
                    (Bb_checked_p10)

                    ; #79236: <==closure== 77183 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #83798: <==closure== 87575 (pos)
                    (Pc_checked_p10)

                    ; #87575: <==commonly_known== 51089 (pos)
                    (Bc_checked_p10)

                    ; #11417: <==unclosure== 72680 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #23634: <==negation-removal== 25796 (pos)
                    (not (Pa_not_checked_p10))

                    ; #25105: <==unclosure== 29654 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #29654: <==uncertain_firing== 25243 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #30867: <==negation-removal== 51526 (pos)
                    (not (Bb_not_checked_p10))

                    ; #33025: <==negation-removal== 51089 (pos)
                    (not (not_checked_p10))

                    ; #35538: <==negation-removal== 77183 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #42445: <==negation-removal== 66070 (pos)
                    (not (Ba_not_checked_p10))

                    ; #47676: <==negation-removal== 79236 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #72680: <==uncertain_firing== 77183 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #79307: <==negation-removal== 78770 (pos)
                    (not (Pb_not_checked_p10))

                    ; #82968: <==negation-removal== 83798 (pos)
                    (not (Bc_not_checked_p10))

                    ; #87088: <==negation-removal== 87575 (pos)
                    (not (Pc_not_checked_p10))

                    ; #88532: <==negation-removal== 25243 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #88956: <==negation-removal== 75653 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #22453: <==commonly_known== 38013 (pos)
                    (Bc_checked_p11)

                    ; #38013: origin
                    (checked_p11)

                    ; #41492: <==commonly_known== 38013 (pos)
                    (Bb_checked_p11)

                    ; #43996: <==closure== 22453 (pos)
                    (Pc_checked_p11)

                    ; #45629: <==commonly_known== 38013 (pos)
                    (Ba_checked_p11)

                    ; #47120: <==closure== 41492 (pos)
                    (Pb_checked_p11)

                    ; #50595: <==closure== 88880 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #62230: <==closure== 45629 (pos)
                    (Pa_checked_p11)

                    ; #75966: <==closure== 84561 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #84561: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #88880: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #14729: <==negation-removal== 22453 (pos)
                    (not (Pc_not_checked_p11))

                    ; #15297: <==negation-removal== 84561 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #30181: <==negation-removal== 41492 (pos)
                    (not (Pb_not_checked_p11))

                    ; #38680: <==negation-removal== 43996 (pos)
                    (not (Bc_not_checked_p11))

                    ; #42096: <==negation-removal== 45629 (pos)
                    (not (Pa_not_checked_p11))

                    ; #46891: <==negation-removal== 62230 (pos)
                    (not (Ba_not_checked_p11))

                    ; #46968: <==negation-removal== 75966 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #48211: <==uncertain_firing== 84561 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #57322: <==negation-removal== 50595 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #65561: <==unclosure== 68208 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #67456: <==negation-removal== 38013 (pos)
                    (not (not_checked_p11))

                    ; #68208: <==uncertain_firing== 88880 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #70762: <==negation-removal== 47120 (pos)
                    (not (Bb_not_checked_p11))

                    ; #73177: <==unclosure== 48211 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #85768: <==negation-removal== 88880 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #13546: <==closure== 78894 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #14048: <==commonly_known== 88390 (pos)
                    (Bc_checked_p12)

                    ; #14979: <==closure== 14048 (pos)
                    (Pc_checked_p12)

                    ; #18241: <==commonly_known== 88390 (pos)
                    (Ba_checked_p12)

                    ; #41595: <==commonly_known== 88390 (pos)
                    (Bb_checked_p12)

                    ; #53325: <==closure== 41595 (pos)
                    (Pb_checked_p12)

                    ; #75034: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #77379: <==closure== 18241 (pos)
                    (Pa_checked_p12)

                    ; #78894: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #79019: <==closure== 75034 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #88390: origin
                    (checked_p12)

                    ; #11432: <==negation-removal== 78894 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #20006: <==negation-removal== 77379 (pos)
                    (not (Ba_not_checked_p12))

                    ; #25734: <==unclosure== 45206 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #35682: <==negation-removal== 79019 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #42108: <==negation-removal== 14979 (pos)
                    (not (Bc_not_checked_p12))

                    ; #43630: <==negation-removal== 53325 (pos)
                    (not (Bb_not_checked_p12))

                    ; #45206: <==uncertain_firing== 78894 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #59394: <==negation-removal== 88390 (pos)
                    (not (not_checked_p12))

                    ; #64404: <==negation-removal== 14048 (pos)
                    (not (Pc_not_checked_p12))

                    ; #70840: <==unclosure== 81096 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #78088: <==negation-removal== 41595 (pos)
                    (not (Pb_not_checked_p12))

                    ; #78363: <==negation-removal== 18241 (pos)
                    (not (Pa_not_checked_p12))

                    ; #79300: <==negation-removal== 13546 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #81096: <==uncertain_firing== 75034 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #82124: <==negation-removal== 75034 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11812: <==closure== 72705 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #21158: <==closure== 46816 (pos)
                    (Pa_checked_p1)

                    ; #32093: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #35400: <==commonly_known== 89076 (pos)
                    (Bc_checked_p1)

                    ; #46816: <==commonly_known== 89076 (pos)
                    (Ba_checked_p1)

                    ; #58346: <==closure== 32093 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #58881: <==closure== 35400 (pos)
                    (Pc_checked_p1)

                    ; #66779: <==commonly_known== 89076 (pos)
                    (Bb_checked_p1)

                    ; #70728: <==closure== 66779 (pos)
                    (Pb_checked_p1)

                    ; #72705: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #89076: origin
                    (checked_p1)

                    ; #15863: <==negation-removal== 32093 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #16086: <==negation-removal== 89076 (pos)
                    (not (not_checked_p1))

                    ; #19982: <==negation-removal== 70728 (pos)
                    (not (Bb_not_checked_p1))

                    ; #25091: <==negation-removal== 21158 (pos)
                    (not (Ba_not_checked_p1))

                    ; #26083: <==uncertain_firing== 72705 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #27029: <==negation-removal== 58346 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #28606: <==uncertain_firing== 32093 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #30824: <==negation-removal== 66779 (pos)
                    (not (Pb_not_checked_p1))

                    ; #35416: <==negation-removal== 58881 (pos)
                    (not (Bc_not_checked_p1))

                    ; #41585: <==negation-removal== 11812 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #45089: <==unclosure== 26083 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #47544: <==unclosure== 28606 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #55454: <==negation-removal== 72705 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #59904: <==negation-removal== 35400 (pos)
                    (not (Pc_not_checked_p1))

                    ; #70063: <==negation-removal== 46816 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12147: <==closure== 85448 (pos)
                    (Pb_checked_p2)

                    ; #15609: <==commonly_known== 20008 (pos)
                    (Ba_checked_p2)

                    ; #20008: origin
                    (checked_p2)

                    ; #25223: <==closure== 87100 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #41283: <==closure== 15609 (pos)
                    (Pa_checked_p2)

                    ; #41760: <==closure== 48410 (pos)
                    (Pc_checked_p2)

                    ; #48410: <==commonly_known== 20008 (pos)
                    (Bc_checked_p2)

                    ; #81558: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #85448: <==commonly_known== 20008 (pos)
                    (Bb_checked_p2)

                    ; #87100: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #89688: <==closure== 81558 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #15506: <==negation-removal== 20008 (pos)
                    (not (not_checked_p2))

                    ; #16422: <==negation-removal== 25223 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #26368: <==negation-removal== 89688 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #27214: <==unclosure== 51774 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #41065: <==negation-removal== 15609 (pos)
                    (not (Pa_not_checked_p2))

                    ; #41821: <==unclosure== 85791 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #45108: <==negation-removal== 87100 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #51774: <==uncertain_firing== 81558 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #55348: <==negation-removal== 12147 (pos)
                    (not (Bb_not_checked_p2))

                    ; #58358: <==negation-removal== 48410 (pos)
                    (not (Pc_not_checked_p2))

                    ; #62695: <==negation-removal== 81558 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #68173: <==negation-removal== 41283 (pos)
                    (not (Ba_not_checked_p2))

                    ; #83638: <==negation-removal== 41760 (pos)
                    (not (Bc_not_checked_p2))

                    ; #85791: <==uncertain_firing== 87100 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #88030: <==negation-removal== 85448 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16717: <==commonly_known== 50019 (pos)
                    (Bc_checked_p3)

                    ; #48304: <==closure== 54475 (pos)
                    (Pb_checked_p3)

                    ; #50019: origin
                    (checked_p3)

                    ; #52000: <==closure== 56154 (pos)
                    (Pa_checked_p3)

                    ; #54475: <==commonly_known== 50019 (pos)
                    (Bb_checked_p3)

                    ; #56154: <==commonly_known== 50019 (pos)
                    (Ba_checked_p3)

                    ; #56969: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #60066: <==closure== 16717 (pos)
                    (Pc_checked_p3)

                    ; #61014: <==closure== 62942 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #62942: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #74419: <==closure== 56969 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #19209: <==uncertain_firing== 56969 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #19226: <==uncertain_firing== 62942 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #22284: <==negation-removal== 56969 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #23430: <==negation-removal== 16717 (pos)
                    (not (Pc_not_checked_p3))

                    ; #38126: <==negation-removal== 48304 (pos)
                    (not (Bb_not_checked_p3))

                    ; #41671: <==negation-removal== 54475 (pos)
                    (not (Pb_not_checked_p3))

                    ; #58504: <==negation-removal== 74419 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #63029: <==unclosure== 19209 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #63211: <==negation-removal== 52000 (pos)
                    (not (Ba_not_checked_p3))

                    ; #78026: <==negation-removal== 50019 (pos)
                    (not (not_checked_p3))

                    ; #80810: <==negation-removal== 60066 (pos)
                    (not (Bc_not_checked_p3))

                    ; #84603: <==negation-removal== 56154 (pos)
                    (not (Pa_not_checked_p3))

                    ; #84687: <==negation-removal== 61014 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #91651: <==unclosure== 19226 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #96642: <==negation-removal== 62942 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #21021: <==closure== 51530 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #29528: <==commonly_known== 66528 (pos)
                    (Ba_checked_p4)

                    ; #36342: <==commonly_known== 66528 (pos)
                    (Bb_checked_p4)

                    ; #39052: <==closure== 98019 (pos)
                    (Pc_checked_p4)

                    ; #50840: <==closure== 36342 (pos)
                    (Pb_checked_p4)

                    ; #51530: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #57542: <==closure== 29528 (pos)
                    (Pa_checked_p4)

                    ; #66528: origin
                    (checked_p4)

                    ; #81707: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #88391: <==closure== 81707 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #98019: <==commonly_known== 66528 (pos)
                    (Bc_checked_p4)

                    ; #16487: <==negation-removal== 57542 (pos)
                    (not (Ba_not_checked_p4))

                    ; #17476: <==negation-removal== 98019 (pos)
                    (not (Pc_not_checked_p4))

                    ; #22593: <==uncertain_firing== 81707 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #25365: <==unclosure== 31765 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #26907: <==negation-removal== 39052 (pos)
                    (not (Bc_not_checked_p4))

                    ; #31765: <==uncertain_firing== 51530 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #32022: <==negation-removal== 51530 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #43885: <==negation-removal== 36342 (pos)
                    (not (Pb_not_checked_p4))

                    ; #46661: <==negation-removal== 88391 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #60657: <==negation-removal== 81707 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #75270: <==negation-removal== 50840 (pos)
                    (not (Bb_not_checked_p4))

                    ; #76780: <==negation-removal== 66528 (pos)
                    (not (not_checked_p4))

                    ; #77298: <==negation-removal== 29528 (pos)
                    (not (Pa_not_checked_p4))

                    ; #84498: <==unclosure== 22593 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #89745: <==negation-removal== 21021 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #16453: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #47320: origin
                    (checked_p5)

                    ; #52328: <==closure== 64978 (pos)
                    (Pc_checked_p5)

                    ; #58149: <==commonly_known== 47320 (pos)
                    (Ba_checked_p5)

                    ; #58999: <==closure== 58149 (pos)
                    (Pa_checked_p5)

                    ; #61080: <==closure== 80078 (pos)
                    (Pb_checked_p5)

                    ; #64978: <==commonly_known== 47320 (pos)
                    (Bc_checked_p5)

                    ; #67872: <==closure== 16453 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #74110: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #74136: <==closure== 74110 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #80078: <==commonly_known== 47320 (pos)
                    (Bb_checked_p5)

                    ; #10221: <==negation-removal== 61080 (pos)
                    (not (Bb_not_checked_p5))

                    ; #14121: <==unclosure== 78965 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #16490: <==negation-removal== 47320 (pos)
                    (not (not_checked_p5))

                    ; #22994: <==negation-removal== 64978 (pos)
                    (not (Pc_not_checked_p5))

                    ; #29435: <==negation-removal== 80078 (pos)
                    (not (Pb_not_checked_p5))

                    ; #35606: <==negation-removal== 67872 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #35653: <==negation-removal== 58999 (pos)
                    (not (Ba_not_checked_p5))

                    ; #37265: <==negation-removal== 16453 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #53551: <==negation-removal== 74136 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #58731: <==uncertain_firing== 74110 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #62887: <==negation-removal== 58149 (pos)
                    (not (Pa_not_checked_p5))

                    ; #67610: <==negation-removal== 74110 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #68799: <==unclosure== 58731 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #78965: <==uncertain_firing== 16453 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #94202: <==negation-removal== 52328 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #22187: <==commonly_known== 98668 (pos)
                    (Bb_checked_p6)

                    ; #56074: <==closure== 74858 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #69079: <==closure== 22187 (pos)
                    (Pb_checked_p6)

                    ; #69197: <==commonly_known== 98668 (pos)
                    (Bc_checked_p6)

                    ; #72737: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #74858: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #79028: <==closure== 69197 (pos)
                    (Pc_checked_p6)

                    ; #80295: <==closure== 81431 (pos)
                    (Pa_checked_p6)

                    ; #81431: <==commonly_known== 98668 (pos)
                    (Ba_checked_p6)

                    ; #87409: <==closure== 72737 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #98668: origin
                    (checked_p6)

                    ; #10052: <==negation-removal== 80295 (pos)
                    (not (Ba_not_checked_p6))

                    ; #33403: <==negation-removal== 69079 (pos)
                    (not (Bb_not_checked_p6))

                    ; #36009: <==negation-removal== 98668 (pos)
                    (not (not_checked_p6))

                    ; #39079: <==negation-removal== 74858 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #45567: <==negation-removal== 81431 (pos)
                    (not (Pa_not_checked_p6))

                    ; #47328: <==negation-removal== 87409 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #55172: <==negation-removal== 72737 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #58157: <==uncertain_firing== 74858 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62615: <==uncertain_firing== 72737 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #65429: <==unclosure== 62615 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #67794: <==negation-removal== 56074 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #73164: <==negation-removal== 22187 (pos)
                    (not (Pb_not_checked_p6))

                    ; #77646: <==negation-removal== 79028 (pos)
                    (not (Bc_not_checked_p6))

                    ; #82477: <==unclosure== 58157 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #91038: <==negation-removal== 69197 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #27631: <==closure== 72716 (pos)
                    (Pb_checked_p7)

                    ; #28452: <==commonly_known== 89725 (pos)
                    (Ba_checked_p7)

                    ; #33603: <==closure== 90539 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #46016: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #58648: <==commonly_known== 89725 (pos)
                    (Bc_checked_p7)

                    ; #72716: <==commonly_known== 89725 (pos)
                    (Bb_checked_p7)

                    ; #81835: <==closure== 28452 (pos)
                    (Pa_checked_p7)

                    ; #86225: <==closure== 58648 (pos)
                    (Pc_checked_p7)

                    ; #87759: <==closure== 46016 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #89725: origin
                    (checked_p7)

                    ; #90539: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #15467: <==negation-removal== 33603 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #21779: <==negation-removal== 72716 (pos)
                    (not (Pb_not_checked_p7))

                    ; #34739: <==negation-removal== 46016 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #39764: <==negation-removal== 28452 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46650: <==negation-removal== 81835 (pos)
                    (not (Ba_not_checked_p7))

                    ; #57873: <==negation-removal== 86225 (pos)
                    (not (Bc_not_checked_p7))

                    ; #62775: <==uncertain_firing== 46016 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #63581: <==negation-removal== 27631 (pos)
                    (not (Bb_not_checked_p7))

                    ; #64523: <==unclosure== 62775 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #73420: <==negation-removal== 58648 (pos)
                    (not (Pc_not_checked_p7))

                    ; #76142: <==negation-removal== 87759 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #76197: <==negation-removal== 89725 (pos)
                    (not (not_checked_p7))

                    ; #79461: <==negation-removal== 90539 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #89230: <==uncertain_firing== 90539 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #92088: <==unclosure== 89230 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17951: <==commonly_known== 64613 (pos)
                    (Bb_checked_p8)

                    ; #18478: <==closure== 17951 (pos)
                    (Pb_checked_p8)

                    ; #19496: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #25931: <==closure== 37057 (pos)
                    (Pc_checked_p8)

                    ; #31946: <==closure== 19496 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #32129: <==commonly_known== 64613 (pos)
                    (Ba_checked_p8)

                    ; #34897: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #37057: <==commonly_known== 64613 (pos)
                    (Bc_checked_p8)

                    ; #48231: <==closure== 34897 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #50083: <==closure== 32129 (pos)
                    (Pa_checked_p8)

                    ; #64613: origin
                    (checked_p8)

                    ; #10566: <==negation-removal== 37057 (pos)
                    (not (Pc_not_checked_p8))

                    ; #14217: <==negation-removal== 32129 (pos)
                    (not (Pa_not_checked_p8))

                    ; #14240: <==negation-removal== 17951 (pos)
                    (not (Pb_not_checked_p8))

                    ; #17398: <==uncertain_firing== 34897 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #18460: <==uncertain_firing== 19496 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #21665: <==negation-removal== 31946 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #28382: <==negation-removal== 48231 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #33913: <==negation-removal== 18478 (pos)
                    (not (Bb_not_checked_p8))

                    ; #36943: <==unclosure== 17398 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #49236: <==negation-removal== 25931 (pos)
                    (not (Bc_not_checked_p8))

                    ; #61735: <==unclosure== 18460 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #79725: <==negation-removal== 64613 (pos)
                    (not (not_checked_p8))

                    ; #82639: <==negation-removal== 19496 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #85394: <==negation-removal== 50083 (pos)
                    (not (Ba_not_checked_p8))

                    ; #88169: <==negation-removal== 34897 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10339: <==closure== 50331 (pos)
                    (Pb_checked_p9)

                    ; #10793: <==commonly_known== 86522 (pos)
                    (Bc_checked_p9)

                    ; #15240: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #16207: <==closure== 46743 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #20309: <==closure== 62108 (pos)
                    (Pa_checked_p9)

                    ; #35300: <==closure== 15240 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #38353: <==closure== 10793 (pos)
                    (Pc_checked_p9)

                    ; #46743: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #50331: <==commonly_known== 86522 (pos)
                    (Bb_checked_p9)

                    ; #62108: <==commonly_known== 86522 (pos)
                    (Ba_checked_p9)

                    ; #86522: origin
                    (checked_p9)

                    ; #13945: <==negation-removal== 10793 (pos)
                    (not (Pc_not_checked_p9))

                    ; #20635: <==negation-removal== 46743 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #25660: <==negation-removal== 16207 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #27197: <==unclosure== 45083 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #27432: <==negation-removal== 35300 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #29439: <==negation-removal== 62108 (pos)
                    (not (Pa_not_checked_p9))

                    ; #36887: <==negation-removal== 10339 (pos)
                    (not (Bb_not_checked_p9))

                    ; #45083: <==uncertain_firing== 15240 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #54276: <==unclosure== 74214 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #55855: <==negation-removal== 20309 (pos)
                    (not (Ba_not_checked_p9))

                    ; #70712: <==negation-removal== 15240 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #74214: <==uncertain_firing== 46743 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #81056: <==negation-removal== 50331 (pos)
                    (not (Pb_not_checked_p9))

                    ; #90048: <==negation-removal== 38353 (pos)
                    (not (Bc_not_checked_p9))

                    ; #90542: <==negation-removal== 86522 (pos)
                    (not (not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #17226: <==closure== 23588 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #20899: <==closure== 29397 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #23588: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #25796: <==commonly_known== 51089 (pos)
                    (Ba_checked_p10)

                    ; #29397: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #51089: origin
                    (checked_p10)

                    ; #51526: <==closure== 78770 (pos)
                    (Pb_checked_p10)

                    ; #66070: <==closure== 25796 (pos)
                    (Pa_checked_p10)

                    ; #78770: <==commonly_known== 51089 (pos)
                    (Bb_checked_p10)

                    ; #83798: <==closure== 87575 (pos)
                    (Pc_checked_p10)

                    ; #87575: <==commonly_known== 51089 (pos)
                    (Bc_checked_p10)

                    ; #19998: <==negation-removal== 17226 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #23634: <==negation-removal== 25796 (pos)
                    (not (Pa_not_checked_p10))

                    ; #26019: <==negation-removal== 20899 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #30867: <==negation-removal== 51526 (pos)
                    (not (Bb_not_checked_p10))

                    ; #32514: <==negation-removal== 23588 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #33025: <==negation-removal== 51089 (pos)
                    (not (not_checked_p10))

                    ; #36945: <==uncertain_firing== 23588 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #42445: <==negation-removal== 66070 (pos)
                    (not (Ba_not_checked_p10))

                    ; #43046: <==uncertain_firing== 29397 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #60374: <==negation-removal== 29397 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #75887: <==unclosure== 43046 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #76410: <==unclosure== 36945 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #79307: <==negation-removal== 78770 (pos)
                    (not (Pb_not_checked_p10))

                    ; #82968: <==negation-removal== 83798 (pos)
                    (not (Bc_not_checked_p10))

                    ; #87088: <==negation-removal== 87575 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #15346: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #22453: <==commonly_known== 38013 (pos)
                    (Bc_checked_p11)

                    ; #22764: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #38013: origin
                    (checked_p11)

                    ; #41492: <==commonly_known== 38013 (pos)
                    (Bb_checked_p11)

                    ; #43996: <==closure== 22453 (pos)
                    (Pc_checked_p11)

                    ; #45629: <==commonly_known== 38013 (pos)
                    (Ba_checked_p11)

                    ; #47120: <==closure== 41492 (pos)
                    (Pb_checked_p11)

                    ; #47636: <==closure== 22764 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #60282: <==closure== 15346 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #62230: <==closure== 45629 (pos)
                    (Pa_checked_p11)

                    ; #14729: <==negation-removal== 22453 (pos)
                    (not (Pc_not_checked_p11))

                    ; #29354: <==negation-removal== 22764 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #30181: <==negation-removal== 41492 (pos)
                    (not (Pb_not_checked_p11))

                    ; #32728: <==uncertain_firing== 22764 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #38680: <==negation-removal== 43996 (pos)
                    (not (Bc_not_checked_p11))

                    ; #40595: <==negation-removal== 47636 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #42096: <==negation-removal== 45629 (pos)
                    (not (Pa_not_checked_p11))

                    ; #43171: <==negation-removal== 15346 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #46891: <==negation-removal== 62230 (pos)
                    (not (Ba_not_checked_p11))

                    ; #62494: <==unclosure== 32728 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #65583: <==negation-removal== 60282 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #67456: <==negation-removal== 38013 (pos)
                    (not (not_checked_p11))

                    ; #70762: <==negation-removal== 47120 (pos)
                    (not (Bb_not_checked_p11))

                    ; #76656: <==uncertain_firing== 15346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #86737: <==unclosure== 76656 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #14048: <==commonly_known== 88390 (pos)
                    (Bc_checked_p12)

                    ; #14979: <==closure== 14048 (pos)
                    (Pc_checked_p12)

                    ; #16973: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #18241: <==commonly_known== 88390 (pos)
                    (Ba_checked_p12)

                    ; #36813: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #41595: <==commonly_known== 88390 (pos)
                    (Bb_checked_p12)

                    ; #50503: <==closure== 16973 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #53325: <==closure== 41595 (pos)
                    (Pb_checked_p12)

                    ; #72663: <==closure== 36813 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #77379: <==closure== 18241 (pos)
                    (Pa_checked_p12)

                    ; #88390: origin
                    (checked_p12)

                    ; #10527: <==uncertain_firing== 36813 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #14409: <==negation-removal== 16973 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #20006: <==negation-removal== 77379 (pos)
                    (not (Ba_not_checked_p12))

                    ; #22462: <==negation-removal== 36813 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #41700: <==unclosure== 79197 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #42108: <==negation-removal== 14979 (pos)
                    (not (Bc_not_checked_p12))

                    ; #43630: <==negation-removal== 53325 (pos)
                    (not (Bb_not_checked_p12))

                    ; #44632: <==negation-removal== 72663 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #56258: <==unclosure== 10527 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #59394: <==negation-removal== 88390 (pos)
                    (not (not_checked_p12))

                    ; #64404: <==negation-removal== 14048 (pos)
                    (not (Pc_not_checked_p12))

                    ; #78088: <==negation-removal== 41595 (pos)
                    (not (Pb_not_checked_p12))

                    ; #78363: <==negation-removal== 18241 (pos)
                    (not (Pa_not_checked_p12))

                    ; #79197: <==uncertain_firing== 16973 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #86336: <==negation-removal== 50503 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14702: <==closure== 32532 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #21158: <==closure== 46816 (pos)
                    (Pa_checked_p1)

                    ; #28494: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #32532: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #35400: <==commonly_known== 89076 (pos)
                    (Bc_checked_p1)

                    ; #46816: <==commonly_known== 89076 (pos)
                    (Ba_checked_p1)

                    ; #58881: <==closure== 35400 (pos)
                    (Pc_checked_p1)

                    ; #66779: <==commonly_known== 89076 (pos)
                    (Bb_checked_p1)

                    ; #70728: <==closure== 66779 (pos)
                    (Pb_checked_p1)

                    ; #81166: <==closure== 28494 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #89076: origin
                    (checked_p1)

                    ; #10640: <==unclosure== 21810 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #16086: <==negation-removal== 89076 (pos)
                    (not (not_checked_p1))

                    ; #19982: <==negation-removal== 70728 (pos)
                    (not (Bb_not_checked_p1))

                    ; #21371: <==negation-removal== 28494 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #21810: <==uncertain_firing== 28494 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #22763: <==unclosure== 98632 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #25091: <==negation-removal== 21158 (pos)
                    (not (Ba_not_checked_p1))

                    ; #25536: <==negation-removal== 14702 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #30824: <==negation-removal== 66779 (pos)
                    (not (Pb_not_checked_p1))

                    ; #35416: <==negation-removal== 58881 (pos)
                    (not (Bc_not_checked_p1))

                    ; #40268: <==negation-removal== 81166 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #59904: <==negation-removal== 35400 (pos)
                    (not (Pc_not_checked_p1))

                    ; #70063: <==negation-removal== 46816 (pos)
                    (not (Pa_not_checked_p1))

                    ; #70545: <==negation-removal== 32532 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #98632: <==uncertain_firing== 32532 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12147: <==closure== 85448 (pos)
                    (Pb_checked_p2)

                    ; #15609: <==commonly_known== 20008 (pos)
                    (Ba_checked_p2)

                    ; #20008: origin
                    (checked_p2)

                    ; #41283: <==closure== 15609 (pos)
                    (Pa_checked_p2)

                    ; #41760: <==closure== 48410 (pos)
                    (Pc_checked_p2)

                    ; #47073: <==closure== 61081 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #48410: <==commonly_known== 20008 (pos)
                    (Bc_checked_p2)

                    ; #61081: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #67706: <==closure== 87020 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #85448: <==commonly_known== 20008 (pos)
                    (Bb_checked_p2)

                    ; #87020: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #10666: <==negation-removal== 67706 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #15506: <==negation-removal== 20008 (pos)
                    (not (not_checked_p2))

                    ; #30434: <==unclosure== 75484 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #40601: <==unclosure== 75125 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #41065: <==negation-removal== 15609 (pos)
                    (not (Pa_not_checked_p2))

                    ; #44675: <==negation-removal== 87020 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #55348: <==negation-removal== 12147 (pos)
                    (not (Bb_not_checked_p2))

                    ; #58358: <==negation-removal== 48410 (pos)
                    (not (Pc_not_checked_p2))

                    ; #68173: <==negation-removal== 41283 (pos)
                    (not (Ba_not_checked_p2))

                    ; #75125: <==uncertain_firing== 87020 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #75484: <==uncertain_firing== 61081 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #83284: <==negation-removal== 47073 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #83638: <==negation-removal== 41760 (pos)
                    (not (Bc_not_checked_p2))

                    ; #88030: <==negation-removal== 85448 (pos)
                    (not (Pb_not_checked_p2))

                    ; #90264: <==negation-removal== 61081 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16717: <==commonly_known== 50019 (pos)
                    (Bc_checked_p3)

                    ; #18219: <==closure== 47805 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #47805: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #48304: <==closure== 54475 (pos)
                    (Pb_checked_p3)

                    ; #50019: origin
                    (checked_p3)

                    ; #52000: <==closure== 56154 (pos)
                    (Pa_checked_p3)

                    ; #54475: <==commonly_known== 50019 (pos)
                    (Bb_checked_p3)

                    ; #56154: <==commonly_known== 50019 (pos)
                    (Ba_checked_p3)

                    ; #60066: <==closure== 16717 (pos)
                    (Pc_checked_p3)

                    ; #62873: <==closure== 64182 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #64182: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #23430: <==negation-removal== 16717 (pos)
                    (not (Pc_not_checked_p3))

                    ; #31605: <==negation-removal== 62873 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #38126: <==negation-removal== 48304 (pos)
                    (not (Bb_not_checked_p3))

                    ; #41636: <==uncertain_firing== 64182 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #41671: <==negation-removal== 54475 (pos)
                    (not (Pb_not_checked_p3))

                    ; #49631: <==uncertain_firing== 47805 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #55055: <==negation-removal== 47805 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #63211: <==negation-removal== 52000 (pos)
                    (not (Ba_not_checked_p3))

                    ; #69051: <==negation-removal== 18219 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #78026: <==negation-removal== 50019 (pos)
                    (not (not_checked_p3))

                    ; #78976: <==negation-removal== 64182 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #80810: <==negation-removal== 60066 (pos)
                    (not (Bc_not_checked_p3))

                    ; #84603: <==negation-removal== 56154 (pos)
                    (not (Pa_not_checked_p3))

                    ; #86637: <==unclosure== 41636 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #88398: <==unclosure== 49631 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #29528: <==commonly_known== 66528 (pos)
                    (Ba_checked_p4)

                    ; #35681: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #36342: <==commonly_known== 66528 (pos)
                    (Bb_checked_p4)

                    ; #39052: <==closure== 98019 (pos)
                    (Pc_checked_p4)

                    ; #44332: <==closure== 50772 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #50772: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #50840: <==closure== 36342 (pos)
                    (Pb_checked_p4)

                    ; #57542: <==closure== 29528 (pos)
                    (Pa_checked_p4)

                    ; #66528: origin
                    (checked_p4)

                    ; #69531: <==closure== 35681 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #98019: <==commonly_known== 66528 (pos)
                    (Bc_checked_p4)

                    ; #13112: <==uncertain_firing== 35681 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #14219: <==negation-removal== 35681 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #16487: <==negation-removal== 57542 (pos)
                    (not (Ba_not_checked_p4))

                    ; #17476: <==negation-removal== 98019 (pos)
                    (not (Pc_not_checked_p4))

                    ; #21101: <==negation-removal== 44332 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #26907: <==negation-removal== 39052 (pos)
                    (not (Bc_not_checked_p4))

                    ; #34295: <==uncertain_firing== 50772 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #41713: <==unclosure== 13112 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #43885: <==negation-removal== 36342 (pos)
                    (not (Pb_not_checked_p4))

                    ; #72679: <==negation-removal== 69531 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #75270: <==negation-removal== 50840 (pos)
                    (not (Bb_not_checked_p4))

                    ; #76780: <==negation-removal== 66528 (pos)
                    (not (not_checked_p4))

                    ; #77298: <==negation-removal== 29528 (pos)
                    (not (Pa_not_checked_p4))

                    ; #86495: <==negation-removal== 50772 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #90774: <==unclosure== 34295 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #44037: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #47320: origin
                    (checked_p5)

                    ; #52328: <==closure== 64978 (pos)
                    (Pc_checked_p5)

                    ; #58149: <==commonly_known== 47320 (pos)
                    (Ba_checked_p5)

                    ; #58999: <==closure== 58149 (pos)
                    (Pa_checked_p5)

                    ; #61080: <==closure== 80078 (pos)
                    (Pb_checked_p5)

                    ; #64978: <==commonly_known== 47320 (pos)
                    (Bc_checked_p5)

                    ; #76292: <==closure== 44037 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #80078: <==commonly_known== 47320 (pos)
                    (Bb_checked_p5)

                    ; #85772: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #87775: <==closure== 85772 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #10221: <==negation-removal== 61080 (pos)
                    (not (Bb_not_checked_p5))

                    ; #12727: <==unclosure== 56849 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #16490: <==negation-removal== 47320 (pos)
                    (not (not_checked_p5))

                    ; #17887: <==negation-removal== 76292 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #22994: <==negation-removal== 64978 (pos)
                    (not (Pc_not_checked_p5))

                    ; #25760: <==unclosure== 77521 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #26578: <==negation-removal== 44037 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #29435: <==negation-removal== 80078 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34114: <==negation-removal== 87775 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #35653: <==negation-removal== 58999 (pos)
                    (not (Ba_not_checked_p5))

                    ; #44623: <==negation-removal== 85772 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #56849: <==uncertain_firing== 44037 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #62887: <==negation-removal== 58149 (pos)
                    (not (Pa_not_checked_p5))

                    ; #77521: <==uncertain_firing== 85772 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #94202: <==negation-removal== 52328 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #20494: <==closure== 28255 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #22187: <==commonly_known== 98668 (pos)
                    (Bb_checked_p6)

                    ; #28255: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #61087: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #69079: <==closure== 22187 (pos)
                    (Pb_checked_p6)

                    ; #69197: <==commonly_known== 98668 (pos)
                    (Bc_checked_p6)

                    ; #79028: <==closure== 69197 (pos)
                    (Pc_checked_p6)

                    ; #80295: <==closure== 81431 (pos)
                    (Pa_checked_p6)

                    ; #81431: <==commonly_known== 98668 (pos)
                    (Ba_checked_p6)

                    ; #83606: <==closure== 61087 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #98668: origin
                    (checked_p6)

                    ; #10052: <==negation-removal== 80295 (pos)
                    (not (Ba_not_checked_p6))

                    ; #15338: <==negation-removal== 83606 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #21847: <==unclosure== 83705 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #23928: <==negation-removal== 61087 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #33403: <==negation-removal== 69079 (pos)
                    (not (Bb_not_checked_p6))

                    ; #36009: <==negation-removal== 98668 (pos)
                    (not (not_checked_p6))

                    ; #45567: <==negation-removal== 81431 (pos)
                    (not (Pa_not_checked_p6))

                    ; #46200: <==negation-removal== 20494 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #54139: <==negation-removal== 28255 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #54733: <==uncertain_firing== 28255 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #63254: <==unclosure== 54733 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #73164: <==negation-removal== 22187 (pos)
                    (not (Pb_not_checked_p6))

                    ; #77646: <==negation-removal== 79028 (pos)
                    (not (Bc_not_checked_p6))

                    ; #83705: <==uncertain_firing== 61087 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #91038: <==negation-removal== 69197 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #27631: <==closure== 72716 (pos)
                    (Pb_checked_p7)

                    ; #28452: <==commonly_known== 89725 (pos)
                    (Ba_checked_p7)

                    ; #39158: <==closure== 57337 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #54607: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #57337: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #58648: <==commonly_known== 89725 (pos)
                    (Bc_checked_p7)

                    ; #72716: <==commonly_known== 89725 (pos)
                    (Bb_checked_p7)

                    ; #81835: <==closure== 28452 (pos)
                    (Pa_checked_p7)

                    ; #83979: <==closure== 54607 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #86225: <==closure== 58648 (pos)
                    (Pc_checked_p7)

                    ; #89725: origin
                    (checked_p7)

                    ; #14243: <==negation-removal== 39158 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #14445: <==uncertain_firing== 57337 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #19818: <==uncertain_firing== 54607 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #21779: <==negation-removal== 72716 (pos)
                    (not (Pb_not_checked_p7))

                    ; #23707: <==unclosure== 19818 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #39764: <==negation-removal== 28452 (pos)
                    (not (Pa_not_checked_p7))

                    ; #42591: <==negation-removal== 57337 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #44839: <==negation-removal== 83979 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #46650: <==negation-removal== 81835 (pos)
                    (not (Ba_not_checked_p7))

                    ; #50879: <==negation-removal== 54607 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #57873: <==negation-removal== 86225 (pos)
                    (not (Bc_not_checked_p7))

                    ; #63581: <==negation-removal== 27631 (pos)
                    (not (Bb_not_checked_p7))

                    ; #65781: <==unclosure== 14445 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #73420: <==negation-removal== 58648 (pos)
                    (not (Pc_not_checked_p7))

                    ; #76197: <==negation-removal== 89725 (pos)
                    (not (not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17951: <==commonly_known== 64613 (pos)
                    (Bb_checked_p8)

                    ; #18478: <==closure== 17951 (pos)
                    (Pb_checked_p8)

                    ; #21844: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #24023: <==closure== 82952 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #25931: <==closure== 37057 (pos)
                    (Pc_checked_p8)

                    ; #32129: <==commonly_known== 64613 (pos)
                    (Ba_checked_p8)

                    ; #37057: <==commonly_known== 64613 (pos)
                    (Bc_checked_p8)

                    ; #50083: <==closure== 32129 (pos)
                    (Pa_checked_p8)

                    ; #64613: origin
                    (checked_p8)

                    ; #82952: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #88737: <==closure== 21844 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #10566: <==negation-removal== 37057 (pos)
                    (not (Pc_not_checked_p8))

                    ; #14217: <==negation-removal== 32129 (pos)
                    (not (Pa_not_checked_p8))

                    ; #14240: <==negation-removal== 17951 (pos)
                    (not (Pb_not_checked_p8))

                    ; #14961: <==uncertain_firing== 82952 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #22929: <==uncertain_firing== 21844 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #27390: <==negation-removal== 24023 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #33913: <==negation-removal== 18478 (pos)
                    (not (Bb_not_checked_p8))

                    ; #49236: <==negation-removal== 25931 (pos)
                    (not (Bc_not_checked_p8))

                    ; #50120: <==negation-removal== 21844 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #50740: <==unclosure== 14961 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #56251: <==negation-removal== 88737 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #60045: <==unclosure== 22929 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #79595: <==negation-removal== 82952 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #79725: <==negation-removal== 64613 (pos)
                    (not (not_checked_p8))

                    ; #85394: <==negation-removal== 50083 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10339: <==closure== 50331 (pos)
                    (Pb_checked_p9)

                    ; #10793: <==commonly_known== 86522 (pos)
                    (Bc_checked_p9)

                    ; #20309: <==closure== 62108 (pos)
                    (Pa_checked_p9)

                    ; #25638: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #38353: <==closure== 10793 (pos)
                    (Pc_checked_p9)

                    ; #50331: <==commonly_known== 86522 (pos)
                    (Bb_checked_p9)

                    ; #58435: <==closure== 58655 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #58655: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #62108: <==commonly_known== 86522 (pos)
                    (Ba_checked_p9)

                    ; #84811: <==closure== 25638 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #86522: origin
                    (checked_p9)

                    ; #13945: <==negation-removal== 10793 (pos)
                    (not (Pc_not_checked_p9))

                    ; #18608: <==negation-removal== 58655 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #27550: <==unclosure== 85230 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #29305: <==uncertain_firing== 58655 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29439: <==negation-removal== 62108 (pos)
                    (not (Pa_not_checked_p9))

                    ; #36887: <==negation-removal== 10339 (pos)
                    (not (Bb_not_checked_p9))

                    ; #45801: <==unclosure== 29305 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #55855: <==negation-removal== 20309 (pos)
                    (not (Ba_not_checked_p9))

                    ; #67347: <==negation-removal== 84811 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #74539: <==negation-removal== 58435 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #81056: <==negation-removal== 50331 (pos)
                    (not (Pb_not_checked_p9))

                    ; #83740: <==negation-removal== 25638 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #85230: <==uncertain_firing== 25638 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #90048: <==negation-removal== 38353 (pos)
                    (not (Bc_not_checked_p9))

                    ; #90542: <==negation-removal== 86522 (pos)
                    (not (not_checked_p9))))

)