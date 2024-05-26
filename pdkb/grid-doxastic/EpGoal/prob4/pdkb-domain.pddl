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
        (not_at_d_p1)
        (not_at_d_p10)
        (not_at_d_p11)
        (not_at_d_p12)
        (not_at_d_p2)
        (not_at_d_p3)
        (not_at_d_p4)
        (not_at_d_p5)
        (not_at_d_p6)
        (not_at_d_p7)
        (not_at_d_p8)
        (not_at_d_p9)
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
        (Bd_not_checked_p1)
        (Bd_not_checked_p10)
        (Bd_not_checked_p11)
        (Bd_not_checked_p12)
        (Bd_not_checked_p2)
        (Bd_not_checked_p3)
        (Bd_not_checked_p4)
        (Bd_not_checked_p5)
        (Bd_not_checked_p6)
        (Bd_not_checked_p7)
        (Bd_not_checked_p8)
        (Bd_not_checked_p9)
        (Bd_not_hiddensurvivorat_s_p1)
        (Bd_not_hiddensurvivorat_s_p10)
        (Bd_not_hiddensurvivorat_s_p11)
        (Bd_not_hiddensurvivorat_s_p12)
        (Bd_not_hiddensurvivorat_s_p2)
        (Bd_not_hiddensurvivorat_s_p3)
        (Bd_not_hiddensurvivorat_s_p4)
        (Bd_not_hiddensurvivorat_s_p5)
        (Bd_not_hiddensurvivorat_s_p6)
        (Bd_not_hiddensurvivorat_s_p7)
        (Bd_not_hiddensurvivorat_s_p8)
        (Bd_not_hiddensurvivorat_s_p9)
        (Bd_not_survivorat_s_p1)
        (Bd_not_survivorat_s_p10)
        (Bd_not_survivorat_s_p11)
        (Bd_not_survivorat_s_p12)
        (Bd_not_survivorat_s_p2)
        (Bd_not_survivorat_s_p3)
        (Bd_not_survivorat_s_p4)
        (Bd_not_survivorat_s_p5)
        (Bd_not_survivorat_s_p6)
        (Bd_not_survivorat_s_p7)
        (Bd_not_survivorat_s_p8)
        (Bd_not_survivorat_s_p9)
        (Bd_checked_p1)
        (Bd_checked_p10)
        (Bd_checked_p11)
        (Bd_checked_p12)
        (Bd_checked_p2)
        (Bd_checked_p3)
        (Bd_checked_p4)
        (Bd_checked_p5)
        (Bd_checked_p6)
        (Bd_checked_p7)
        (Bd_checked_p8)
        (Bd_checked_p9)
        (Bd_hiddensurvivorat_s_p1)
        (Bd_hiddensurvivorat_s_p10)
        (Bd_hiddensurvivorat_s_p11)
        (Bd_hiddensurvivorat_s_p12)
        (Bd_hiddensurvivorat_s_p2)
        (Bd_hiddensurvivorat_s_p3)
        (Bd_hiddensurvivorat_s_p4)
        (Bd_hiddensurvivorat_s_p5)
        (Bd_hiddensurvivorat_s_p6)
        (Bd_hiddensurvivorat_s_p7)
        (Bd_hiddensurvivorat_s_p8)
        (Bd_hiddensurvivorat_s_p9)
        (Bd_survivorat_s_p1)
        (Bd_survivorat_s_p10)
        (Bd_survivorat_s_p11)
        (Bd_survivorat_s_p12)
        (Bd_survivorat_s_p2)
        (Bd_survivorat_s_p3)
        (Bd_survivorat_s_p4)
        (Bd_survivorat_s_p5)
        (Bd_survivorat_s_p6)
        (Bd_survivorat_s_p7)
        (Bd_survivorat_s_p8)
        (Bd_survivorat_s_p9)
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
        (Pd_not_checked_p1)
        (Pd_not_checked_p10)
        (Pd_not_checked_p11)
        (Pd_not_checked_p12)
        (Pd_not_checked_p2)
        (Pd_not_checked_p3)
        (Pd_not_checked_p4)
        (Pd_not_checked_p5)
        (Pd_not_checked_p6)
        (Pd_not_checked_p7)
        (Pd_not_checked_p8)
        (Pd_not_checked_p9)
        (Pd_not_hiddensurvivorat_s_p1)
        (Pd_not_hiddensurvivorat_s_p10)
        (Pd_not_hiddensurvivorat_s_p11)
        (Pd_not_hiddensurvivorat_s_p12)
        (Pd_not_hiddensurvivorat_s_p2)
        (Pd_not_hiddensurvivorat_s_p3)
        (Pd_not_hiddensurvivorat_s_p4)
        (Pd_not_hiddensurvivorat_s_p5)
        (Pd_not_hiddensurvivorat_s_p6)
        (Pd_not_hiddensurvivorat_s_p7)
        (Pd_not_hiddensurvivorat_s_p8)
        (Pd_not_hiddensurvivorat_s_p9)
        (Pd_not_survivorat_s_p1)
        (Pd_not_survivorat_s_p10)
        (Pd_not_survivorat_s_p11)
        (Pd_not_survivorat_s_p12)
        (Pd_not_survivorat_s_p2)
        (Pd_not_survivorat_s_p3)
        (Pd_not_survivorat_s_p4)
        (Pd_not_survivorat_s_p5)
        (Pd_not_survivorat_s_p6)
        (Pd_not_survivorat_s_p7)
        (Pd_not_survivorat_s_p8)
        (Pd_not_survivorat_s_p9)
        (Pd_checked_p1)
        (Pd_checked_p10)
        (Pd_checked_p11)
        (Pd_checked_p12)
        (Pd_checked_p2)
        (Pd_checked_p3)
        (Pd_checked_p4)
        (Pd_checked_p5)
        (Pd_checked_p6)
        (Pd_checked_p7)
        (Pd_checked_p8)
        (Pd_checked_p9)
        (Pd_hiddensurvivorat_s_p1)
        (Pd_hiddensurvivorat_s_p10)
        (Pd_hiddensurvivorat_s_p11)
        (Pd_hiddensurvivorat_s_p12)
        (Pd_hiddensurvivorat_s_p2)
        (Pd_hiddensurvivorat_s_p3)
        (Pd_hiddensurvivorat_s_p4)
        (Pd_hiddensurvivorat_s_p5)
        (Pd_hiddensurvivorat_s_p6)
        (Pd_hiddensurvivorat_s_p7)
        (Pd_hiddensurvivorat_s_p8)
        (Pd_hiddensurvivorat_s_p9)
        (Pd_survivorat_s_p1)
        (Pd_survivorat_s_p10)
        (Pd_survivorat_s_p11)
        (Pd_survivorat_s_p12)
        (Pd_survivorat_s_p2)
        (Pd_survivorat_s_p3)
        (Pd_survivorat_s_p4)
        (Pd_survivorat_s_p5)
        (Pd_survivorat_s_p6)
        (Pd_survivorat_s_p7)
        (Pd_survivorat_s_p8)
        (Pd_survivorat_s_p9)
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
        (at_d_p1)
        (at_d_p10)
        (at_d_p11)
        (at_d_p12)
        (at_d_p2)
        (at_d_p3)
        (at_d_p4)
        (at_d_p5)
        (at_d_p6)
        (at_d_p7)
        (at_d_p8)
        (at_d_p9)
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
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #36083: <==closure== 80640 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #37556: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #47536: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #51407: <==closure== 47536 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #61802: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #72618: <==closure== 61802 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #80066: <==closure== 37556 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #80640: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #12196: <==unclosure== 88643 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #13752: <==unclosure== 46556 (neg)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #17748: <==negation-removal== 80640 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #20324: <==uncertain_firing== 47536 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #27009: <==negation-removal== 36083 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #31026: <==unclosure== 36385 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #34702: <==negation-removal== 61802 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #36385: <==uncertain_firing== 37556 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #39131: <==negation-removal== 51407 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #46556: <==uncertain_firing== 61802 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #57781: <==unclosure== 20324 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #59272: <==negation-removal== 80066 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #70890: <==negation-removal== 37556 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #81064: <==negation-removal== 47536 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #88643: <==uncertain_firing== 80640 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #90352: <==negation-removal== 72618 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #36083: <==closure== 80640 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #37556: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #47536: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #51407: <==closure== 47536 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #61802: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #72618: <==closure== 61802 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #80066: <==closure== 37556 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #80640: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #12196: <==unclosure== 88643 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #13752: <==unclosure== 46556 (neg)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #17748: <==negation-removal== 80640 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #20324: <==uncertain_firing== 47536 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #27009: <==negation-removal== 36083 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #31026: <==unclosure== 36385 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #34702: <==negation-removal== 61802 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #36385: <==uncertain_firing== 37556 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #39131: <==negation-removal== 51407 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #46556: <==uncertain_firing== 61802 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #57781: <==unclosure== 20324 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #59272: <==negation-removal== 80066 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #70890: <==negation-removal== 37556 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #81064: <==negation-removal== 47536 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #88643: <==uncertain_firing== 80640 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #90352: <==negation-removal== 72618 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #36083: <==closure== 80640 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #37556: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #47536: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #51407: <==closure== 47536 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #61802: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #72618: <==closure== 61802 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #80066: <==closure== 37556 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #80640: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #12196: <==unclosure== 88643 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #13752: <==unclosure== 46556 (neg)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #17748: <==negation-removal== 80640 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #20324: <==uncertain_firing== 47536 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #27009: <==negation-removal== 36083 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #31026: <==unclosure== 36385 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #34702: <==negation-removal== 61802 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #36385: <==uncertain_firing== 37556 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #39131: <==negation-removal== 51407 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #46556: <==uncertain_firing== 61802 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #57781: <==unclosure== 20324 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #59272: <==negation-removal== 80066 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #70890: <==negation-removal== 37556 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #81064: <==negation-removal== 47536 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #88643: <==uncertain_firing== 80640 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #90352: <==negation-removal== 72618 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))))

    (:action badcomm_p10_d_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #36083: <==closure== 80640 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #37556: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #47536: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #51407: <==closure== 47536 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #61802: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #72618: <==closure== 61802 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #80066: <==closure== 37556 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #80640: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #12196: <==unclosure== 88643 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #13752: <==unclosure== 46556 (neg)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #17748: <==negation-removal== 80640 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #20324: <==uncertain_firing== 47536 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #27009: <==negation-removal== 36083 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #31026: <==unclosure== 36385 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #34702: <==negation-removal== 61802 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #36385: <==uncertain_firing== 37556 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #39131: <==negation-removal== 51407 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #46556: <==uncertain_firing== 61802 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #57781: <==unclosure== 20324 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #59272: <==negation-removal== 80066 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #70890: <==negation-removal== 37556 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #81064: <==negation-removal== 47536 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #88643: <==uncertain_firing== 80640 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #90352: <==negation-removal== 72618 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #10776: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #18877: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #34047: <==closure== 59404 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #42976: <==closure== 73697 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #49258: <==closure== 18877 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #59404: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #73697: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #89700: <==closure== 10776 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #12456: <==negation-removal== 18877 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #18002: <==negation-removal== 34047 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #19328: <==uncertain_firing== 73697 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #38537: <==uncertain_firing== 10776 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #43772: <==negation-removal== 89700 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #50565: <==unclosure== 19328 (neg)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #55044: <==unclosure== 86277 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #57717: <==unclosure== 38537 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #68627: <==negation-removal== 73697 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #70210: <==uncertain_firing== 59404 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #70239: <==negation-removal== 42976 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #76119: <==negation-removal== 10776 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #85682: <==unclosure== 70210 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #86277: <==uncertain_firing== 18877 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #87888: <==negation-removal== 49258 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #90752: <==negation-removal== 59404 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #10776: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #18877: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #34047: <==closure== 59404 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #42976: <==closure== 73697 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #49258: <==closure== 18877 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #59404: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #73697: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #89700: <==closure== 10776 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #12456: <==negation-removal== 18877 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #18002: <==negation-removal== 34047 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #19328: <==uncertain_firing== 73697 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #38537: <==uncertain_firing== 10776 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #43772: <==negation-removal== 89700 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #50565: <==unclosure== 19328 (neg)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #55044: <==unclosure== 86277 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #57717: <==unclosure== 38537 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #68627: <==negation-removal== 73697 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #70210: <==uncertain_firing== 59404 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #70239: <==negation-removal== 42976 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #76119: <==negation-removal== 10776 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #85682: <==unclosure== 70210 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #86277: <==uncertain_firing== 18877 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #87888: <==negation-removal== 49258 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #90752: <==negation-removal== 59404 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #10776: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #18877: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #34047: <==closure== 59404 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #42976: <==closure== 73697 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #49258: <==closure== 18877 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #59404: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #73697: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #89700: <==closure== 10776 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #12456: <==negation-removal== 18877 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #18002: <==negation-removal== 34047 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #19328: <==uncertain_firing== 73697 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #38537: <==uncertain_firing== 10776 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #43772: <==negation-removal== 89700 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #50565: <==unclosure== 19328 (neg)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #55044: <==unclosure== 86277 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #57717: <==unclosure== 38537 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #68627: <==negation-removal== 73697 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #70210: <==uncertain_firing== 59404 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #70239: <==negation-removal== 42976 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #76119: <==negation-removal== 10776 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #85682: <==unclosure== 70210 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #86277: <==uncertain_firing== 18877 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #87888: <==negation-removal== 49258 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #90752: <==negation-removal== 59404 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (at_d_p11)
                           (Bd_survivorat_s_p11))
        :effect (and
                    ; #10776: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #18877: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #34047: <==closure== 59404 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #42976: <==closure== 73697 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #49258: <==closure== 18877 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #59404: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #73697: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #89700: <==closure== 10776 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #12456: <==negation-removal== 18877 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #18002: <==negation-removal== 34047 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #19328: <==uncertain_firing== 73697 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #38537: <==uncertain_firing== 10776 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #43772: <==negation-removal== 89700 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #50565: <==unclosure== 19328 (neg)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #55044: <==unclosure== 86277 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #57717: <==unclosure== 38537 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #68627: <==negation-removal== 73697 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #70210: <==uncertain_firing== 59404 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #70239: <==negation-removal== 42976 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #76119: <==negation-removal== 10776 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #85682: <==unclosure== 70210 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #86277: <==uncertain_firing== 18877 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #87888: <==negation-removal== 49258 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #90752: <==negation-removal== 59404 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #11587: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #28543: <==closure== 81789 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #32547: <==closure== 39014 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #39014: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #57965: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #68616: <==closure== 57965 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #81789: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #89189: <==closure== 11587 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #19128: <==negation-removal== 28543 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #26254: <==uncertain_firing== 81789 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #35734: <==negation-removal== 32547 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #36246: <==negation-removal== 11587 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #45734: <==negation-removal== 68616 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #53812: <==negation-removal== 81789 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #56784: <==negation-removal== 39014 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #65997: <==unclosure== 26254 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #68920: <==unclosure== 76540 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #76540: <==uncertain_firing== 11587 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #79112: <==negation-removal== 89189 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #82122: <==uncertain_firing== 57965 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #85391: <==unclosure== 82122 (neg)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #88000: <==negation-removal== 57965 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #89599: <==unclosure== 89695 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #89695: <==uncertain_firing== 39014 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #11587: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #28543: <==closure== 81789 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #32547: <==closure== 39014 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #39014: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #57965: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #68616: <==closure== 57965 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #81789: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #89189: <==closure== 11587 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #19128: <==negation-removal== 28543 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #26254: <==uncertain_firing== 81789 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #35734: <==negation-removal== 32547 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #36246: <==negation-removal== 11587 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #45734: <==negation-removal== 68616 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #53812: <==negation-removal== 81789 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #56784: <==negation-removal== 39014 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #65997: <==unclosure== 26254 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #68920: <==unclosure== 76540 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #76540: <==uncertain_firing== 11587 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #79112: <==negation-removal== 89189 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #82122: <==uncertain_firing== 57965 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #85391: <==unclosure== 82122 (neg)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #88000: <==negation-removal== 57965 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #89599: <==unclosure== 89695 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #89695: <==uncertain_firing== 39014 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #11587: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #28543: <==closure== 81789 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #32547: <==closure== 39014 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #39014: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #57965: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #68616: <==closure== 57965 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #81789: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #89189: <==closure== 11587 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #19128: <==negation-removal== 28543 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #26254: <==uncertain_firing== 81789 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #35734: <==negation-removal== 32547 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #36246: <==negation-removal== 11587 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #45734: <==negation-removal== 68616 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #53812: <==negation-removal== 81789 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #56784: <==negation-removal== 39014 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #65997: <==unclosure== 26254 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #68920: <==unclosure== 76540 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #76540: <==uncertain_firing== 11587 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #79112: <==negation-removal== 89189 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #82122: <==uncertain_firing== 57965 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #85391: <==unclosure== 82122 (neg)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #88000: <==negation-removal== 57965 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #89599: <==unclosure== 89695 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #89695: <==uncertain_firing== 39014 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p12_d_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #11587: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #28543: <==closure== 81789 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #32547: <==closure== 39014 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #39014: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #57965: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #68616: <==closure== 57965 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #81789: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #89189: <==closure== 11587 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #19128: <==negation-removal== 28543 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #26254: <==uncertain_firing== 81789 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #35734: <==negation-removal== 32547 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #36246: <==negation-removal== 11587 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #45734: <==negation-removal== 68616 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #53812: <==negation-removal== 81789 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #56784: <==negation-removal== 39014 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #65997: <==unclosure== 26254 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #68920: <==unclosure== 76540 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #76540: <==uncertain_firing== 11587 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #79112: <==negation-removal== 89189 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #82122: <==uncertain_firing== 57965 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #85391: <==unclosure== 82122 (neg)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #88000: <==negation-removal== 57965 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #89599: <==unclosure== 89695 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #89695: <==uncertain_firing== 39014 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #32645: <==closure== 84072 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #41887: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #56114: <==closure== 41887 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #58967: <==closure== 84837 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #83019: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #84072: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #84837: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #87378: <==closure== 83019 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #14743: <==negation-removal== 41887 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #15685: <==negation-removal== 83019 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #16080: <==unclosure== 90733 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #30601: <==negation-removal== 87378 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #47784: <==uncertain_firing== 83019 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #51037: <==uncertain_firing== 84072 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #51707: <==unclosure== 51037 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #56532: <==negation-removal== 84837 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #58647: <==negation-removal== 84072 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #63672: <==negation-removal== 58967 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #74879: <==unclosure== 47784 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #86890: <==unclosure== 87662 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #87662: <==uncertain_firing== 84837 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #88687: <==negation-removal== 56114 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #88885: <==negation-removal== 32645 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #90733: <==uncertain_firing== 41887 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #32645: <==closure== 84072 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #41887: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #56114: <==closure== 41887 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #58967: <==closure== 84837 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #83019: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #84072: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #84837: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #87378: <==closure== 83019 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #14743: <==negation-removal== 41887 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #15685: <==negation-removal== 83019 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #16080: <==unclosure== 90733 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #30601: <==negation-removal== 87378 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #47784: <==uncertain_firing== 83019 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #51037: <==uncertain_firing== 84072 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #51707: <==unclosure== 51037 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #56532: <==negation-removal== 84837 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #58647: <==negation-removal== 84072 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #63672: <==negation-removal== 58967 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #74879: <==unclosure== 47784 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #86890: <==unclosure== 87662 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #87662: <==uncertain_firing== 84837 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #88687: <==negation-removal== 56114 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #88885: <==negation-removal== 32645 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #90733: <==uncertain_firing== 41887 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #32645: <==closure== 84072 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #41887: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #56114: <==closure== 41887 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #58967: <==closure== 84837 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #83019: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #84072: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #84837: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #87378: <==closure== 83019 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #14743: <==negation-removal== 41887 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #15685: <==negation-removal== 83019 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #16080: <==unclosure== 90733 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #30601: <==negation-removal== 87378 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #47784: <==uncertain_firing== 83019 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #51037: <==uncertain_firing== 84072 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #51707: <==unclosure== 51037 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #56532: <==negation-removal== 84837 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #58647: <==negation-removal== 84072 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #63672: <==negation-removal== 58967 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #74879: <==unclosure== 47784 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #86890: <==unclosure== 87662 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #87662: <==uncertain_firing== 84837 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #88687: <==negation-removal== 56114 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #88885: <==negation-removal== 32645 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #90733: <==uncertain_firing== 41887 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #32645: <==closure== 84072 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #41887: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #56114: <==closure== 41887 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #58967: <==closure== 84837 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #83019: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #84072: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #84837: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #87378: <==closure== 83019 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #14743: <==negation-removal== 41887 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #15685: <==negation-removal== 83019 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #16080: <==unclosure== 90733 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #30601: <==negation-removal== 87378 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #47784: <==uncertain_firing== 83019 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #51037: <==uncertain_firing== 84072 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #51707: <==unclosure== 51037 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #56532: <==negation-removal== 84837 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #58647: <==negation-removal== 84072 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #63672: <==negation-removal== 58967 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #74879: <==unclosure== 47784 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #86890: <==unclosure== 87662 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #87662: <==uncertain_firing== 84837 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #88687: <==negation-removal== 56114 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #88885: <==negation-removal== 32645 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #90733: <==uncertain_firing== 41887 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #17528: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #28175: <==closure== 51404 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #44226: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #51404: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #57962: <==closure== 44226 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #69018: <==closure== 17528 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #82263: <==closure== 82572 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #82572: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #16502: <==negation-removal== 57962 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #16647: <==negation-removal== 69018 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #25615: <==negation-removal== 51404 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #28506: <==uncertain_firing== 44226 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #35745: <==negation-removal== 44226 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #48335: <==unclosure== 57482 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #48495: <==negation-removal== 82263 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #50572: <==unclosure== 28506 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #51416: <==uncertain_firing== 51404 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #57482: <==uncertain_firing== 82572 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #68218: <==uncertain_firing== 17528 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #69798: <==unclosure== 68218 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #81052: <==negation-removal== 82572 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #90356: <==unclosure== 51416 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #91450: <==negation-removal== 17528 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #91667: <==negation-removal== 28175 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #17528: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #28175: <==closure== 51404 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #44226: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #51404: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #57962: <==closure== 44226 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #69018: <==closure== 17528 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #82263: <==closure== 82572 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #82572: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #16502: <==negation-removal== 57962 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #16647: <==negation-removal== 69018 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #25615: <==negation-removal== 51404 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #28506: <==uncertain_firing== 44226 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #35745: <==negation-removal== 44226 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #48335: <==unclosure== 57482 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #48495: <==negation-removal== 82263 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #50572: <==unclosure== 28506 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #51416: <==uncertain_firing== 51404 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #57482: <==uncertain_firing== 82572 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #68218: <==uncertain_firing== 17528 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #69798: <==unclosure== 68218 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #81052: <==negation-removal== 82572 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #90356: <==unclosure== 51416 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #91450: <==negation-removal== 17528 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #91667: <==negation-removal== 28175 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #17528: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #28175: <==closure== 51404 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #44226: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #51404: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #57962: <==closure== 44226 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #69018: <==closure== 17528 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #82263: <==closure== 82572 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #82572: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #16502: <==negation-removal== 57962 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #16647: <==negation-removal== 69018 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #25615: <==negation-removal== 51404 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #28506: <==uncertain_firing== 44226 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #35745: <==negation-removal== 44226 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #48335: <==unclosure== 57482 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #48495: <==negation-removal== 82263 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #50572: <==unclosure== 28506 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #51416: <==uncertain_firing== 51404 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #57482: <==uncertain_firing== 82572 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #68218: <==uncertain_firing== 17528 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #69798: <==unclosure== 68218 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #81052: <==negation-removal== 82572 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #90356: <==unclosure== 51416 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #91450: <==negation-removal== 17528 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #91667: <==negation-removal== 28175 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #17528: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #28175: <==closure== 51404 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #44226: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #51404: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #57962: <==closure== 44226 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #69018: <==closure== 17528 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #82263: <==closure== 82572 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #82572: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #16502: <==negation-removal== 57962 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #16647: <==negation-removal== 69018 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #25615: <==negation-removal== 51404 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #28506: <==uncertain_firing== 44226 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #35745: <==negation-removal== 44226 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #48335: <==unclosure== 57482 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #48495: <==negation-removal== 82263 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #50572: <==unclosure== 28506 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #51416: <==uncertain_firing== 51404 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #57482: <==uncertain_firing== 82572 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #68218: <==uncertain_firing== 17528 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #69798: <==unclosure== 68218 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #81052: <==negation-removal== 82572 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #90356: <==unclosure== 51416 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #91450: <==negation-removal== 17528 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #91667: <==negation-removal== 28175 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #12370: <==closure== 79402 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #34021: <==closure== 61837 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #39055: <==closure== 62127 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #46414: <==closure== 83744 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #61837: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #62127: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #79402: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #83744: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12470: <==uncertain_firing== 62127 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #13304: <==unclosure== 55682 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #23518: <==unclosure== 12470 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #24956: <==negation-removal== 34021 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #29561: <==negation-removal== 12370 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #30287: <==negation-removal== 46414 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #38218: <==uncertain_firing== 83744 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #42129: <==negation-removal== 39055 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #42462: <==uncertain_firing== 79402 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #47139: <==negation-removal== 61837 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #50854: <==negation-removal== 83744 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #55682: <==uncertain_firing== 61837 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #58535: <==unclosure== 38218 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #72065: <==negation-removal== 79402 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #82133: <==negation-removal== 62127 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #98277: <==unclosure== 42462 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #12370: <==closure== 79402 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #34021: <==closure== 61837 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #39055: <==closure== 62127 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #46414: <==closure== 83744 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #61837: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #62127: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #79402: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #83744: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12470: <==uncertain_firing== 62127 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #13304: <==unclosure== 55682 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #23518: <==unclosure== 12470 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #24956: <==negation-removal== 34021 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #29561: <==negation-removal== 12370 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #30287: <==negation-removal== 46414 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #38218: <==uncertain_firing== 83744 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #42129: <==negation-removal== 39055 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #42462: <==uncertain_firing== 79402 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #47139: <==negation-removal== 61837 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #50854: <==negation-removal== 83744 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #55682: <==uncertain_firing== 61837 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #58535: <==unclosure== 38218 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #72065: <==negation-removal== 79402 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #82133: <==negation-removal== 62127 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #98277: <==unclosure== 42462 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #12370: <==closure== 79402 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #34021: <==closure== 61837 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #39055: <==closure== 62127 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #46414: <==closure== 83744 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #61837: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #62127: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #79402: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #83744: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12470: <==uncertain_firing== 62127 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #13304: <==unclosure== 55682 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #23518: <==unclosure== 12470 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #24956: <==negation-removal== 34021 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #29561: <==negation-removal== 12370 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #30287: <==negation-removal== 46414 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #38218: <==uncertain_firing== 83744 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #42129: <==negation-removal== 39055 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #42462: <==uncertain_firing== 79402 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #47139: <==negation-removal== 61837 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #50854: <==negation-removal== 83744 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #55682: <==uncertain_firing== 61837 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #58535: <==unclosure== 38218 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #72065: <==negation-removal== 79402 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #82133: <==negation-removal== 62127 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #98277: <==unclosure== 42462 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #12370: <==closure== 79402 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #34021: <==closure== 61837 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #39055: <==closure== 62127 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #46414: <==closure== 83744 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #61837: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #62127: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #79402: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #83744: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12470: <==uncertain_firing== 62127 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #13304: <==unclosure== 55682 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #23518: <==unclosure== 12470 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #24956: <==negation-removal== 34021 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #29561: <==negation-removal== 12370 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #30287: <==negation-removal== 46414 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #38218: <==uncertain_firing== 83744 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #42129: <==negation-removal== 39055 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #42462: <==uncertain_firing== 79402 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #47139: <==negation-removal== 61837 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #50854: <==negation-removal== 83744 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #55682: <==uncertain_firing== 61837 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #58535: <==unclosure== 38218 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #72065: <==negation-removal== 79402 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #82133: <==negation-removal== 62127 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #98277: <==unclosure== 42462 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #18253: <==closure== 34482 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #34482: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #56188: <==closure== 91222 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #78887: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #79191: <==closure== 78887 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #85635: <==closure== 90591 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #90591: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #91222: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #11399: <==unclosure== 19045 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #14795: <==negation-removal== 85635 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #19045: <==uncertain_firing== 91222 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #19806: <==negation-removal== 90591 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #38147: <==negation-removal== 18253 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #38822: <==uncertain_firing== 78887 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #39099: <==negation-removal== 34482 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #43890: <==negation-removal== 56188 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #51565: <==unclosure== 38822 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #53951: <==negation-removal== 91222 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #54123: <==unclosure== 93887 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #69496: <==negation-removal== 79191 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #72247: <==negation-removal== 78887 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #82737: <==unclosure== 87210 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #87210: <==uncertain_firing== 90591 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #93887: <==uncertain_firing== 34482 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #18253: <==closure== 34482 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #34482: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #56188: <==closure== 91222 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #78887: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #79191: <==closure== 78887 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #85635: <==closure== 90591 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #90591: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #91222: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #11399: <==unclosure== 19045 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #14795: <==negation-removal== 85635 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #19045: <==uncertain_firing== 91222 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #19806: <==negation-removal== 90591 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #38147: <==negation-removal== 18253 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #38822: <==uncertain_firing== 78887 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #39099: <==negation-removal== 34482 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #43890: <==negation-removal== 56188 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #51565: <==unclosure== 38822 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #53951: <==negation-removal== 91222 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #54123: <==unclosure== 93887 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #69496: <==negation-removal== 79191 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #72247: <==negation-removal== 78887 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #82737: <==unclosure== 87210 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #87210: <==uncertain_firing== 90591 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #93887: <==uncertain_firing== 34482 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #18253: <==closure== 34482 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #34482: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #56188: <==closure== 91222 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #78887: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #79191: <==closure== 78887 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #85635: <==closure== 90591 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #90591: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #91222: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #11399: <==unclosure== 19045 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #14795: <==negation-removal== 85635 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #19045: <==uncertain_firing== 91222 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #19806: <==negation-removal== 90591 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #38147: <==negation-removal== 18253 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #38822: <==uncertain_firing== 78887 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #39099: <==negation-removal== 34482 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #43890: <==negation-removal== 56188 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #51565: <==unclosure== 38822 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #53951: <==negation-removal== 91222 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #54123: <==unclosure== 93887 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #69496: <==negation-removal== 79191 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #72247: <==negation-removal== 78887 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #82737: <==unclosure== 87210 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #87210: <==uncertain_firing== 90591 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #93887: <==uncertain_firing== 34482 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #18253: <==closure== 34482 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #34482: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #56188: <==closure== 91222 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #78887: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #79191: <==closure== 78887 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #85635: <==closure== 90591 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #90591: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #91222: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #11399: <==unclosure== 19045 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #14795: <==negation-removal== 85635 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #19045: <==uncertain_firing== 91222 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #19806: <==negation-removal== 90591 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #38147: <==negation-removal== 18253 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #38822: <==uncertain_firing== 78887 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #39099: <==negation-removal== 34482 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #43890: <==negation-removal== 56188 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #51565: <==unclosure== 38822 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #53951: <==negation-removal== 91222 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #54123: <==unclosure== 93887 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #69496: <==negation-removal== 79191 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #72247: <==negation-removal== 78887 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #82737: <==unclosure== 87210 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #87210: <==uncertain_firing== 90591 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #93887: <==uncertain_firing== 34482 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #10559: <==closure== 78462 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #13014: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #14852: <==closure== 13014 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #46373: <==closure== 89871 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #57236: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #78462: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #82077: <==closure== 57236 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #89871: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #14487: <==negation-removal== 46373 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #15875: <==negation-removal== 57236 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #23291: <==negation-removal== 82077 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #26308: <==uncertain_firing== 78462 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #28081: <==negation-removal== 78462 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #34645: <==unclosure== 65313 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #38968: <==negation-removal== 89871 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #38979: <==negation-removal== 10559 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #43065: <==uncertain_firing== 13014 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #47680: <==unclosure== 43065 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #48950: <==negation-removal== 14852 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #53261: <==negation-removal== 13014 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #65313: <==uncertain_firing== 89871 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #70496: <==uncertain_firing== 57236 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #88561: <==unclosure== 26308 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #93262: <==unclosure== 70496 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #10559: <==closure== 78462 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #13014: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #14852: <==closure== 13014 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #46373: <==closure== 89871 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #57236: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #78462: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #82077: <==closure== 57236 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #89871: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #14487: <==negation-removal== 46373 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #15875: <==negation-removal== 57236 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #23291: <==negation-removal== 82077 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #26308: <==uncertain_firing== 78462 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #28081: <==negation-removal== 78462 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #34645: <==unclosure== 65313 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #38968: <==negation-removal== 89871 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #38979: <==negation-removal== 10559 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #43065: <==uncertain_firing== 13014 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #47680: <==unclosure== 43065 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #48950: <==negation-removal== 14852 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #53261: <==negation-removal== 13014 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #65313: <==uncertain_firing== 89871 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #70496: <==uncertain_firing== 57236 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #88561: <==unclosure== 26308 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #93262: <==unclosure== 70496 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #10559: <==closure== 78462 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #13014: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #14852: <==closure== 13014 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #46373: <==closure== 89871 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #57236: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #78462: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #82077: <==closure== 57236 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #89871: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #14487: <==negation-removal== 46373 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #15875: <==negation-removal== 57236 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #23291: <==negation-removal== 82077 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #26308: <==uncertain_firing== 78462 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #28081: <==negation-removal== 78462 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #34645: <==unclosure== 65313 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #38968: <==negation-removal== 89871 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #38979: <==negation-removal== 10559 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #43065: <==uncertain_firing== 13014 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #47680: <==unclosure== 43065 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #48950: <==negation-removal== 14852 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #53261: <==negation-removal== 13014 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #65313: <==uncertain_firing== 89871 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #70496: <==uncertain_firing== 57236 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #88561: <==unclosure== 26308 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #93262: <==unclosure== 70496 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #10559: <==closure== 78462 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #13014: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #14852: <==closure== 13014 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #46373: <==closure== 89871 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #57236: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #78462: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #82077: <==closure== 57236 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #89871: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #14487: <==negation-removal== 46373 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #15875: <==negation-removal== 57236 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #23291: <==negation-removal== 82077 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #26308: <==uncertain_firing== 78462 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #28081: <==negation-removal== 78462 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #34645: <==unclosure== 65313 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #38968: <==negation-removal== 89871 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #38979: <==negation-removal== 10559 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #43065: <==uncertain_firing== 13014 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #47680: <==unclosure== 43065 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #48950: <==negation-removal== 14852 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #53261: <==negation-removal== 13014 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #65313: <==uncertain_firing== 89871 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #70496: <==uncertain_firing== 57236 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #88561: <==unclosure== 26308 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #93262: <==unclosure== 70496 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #21207: <==closure== 46996 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #26550: <==closure== 29286 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #29004: <==closure== 31234 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #29286: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #31234: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #33252: <==closure== 37465 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #37465: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #46996: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #25349: <==uncertain_firing== 29286 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #30108: <==unclosure== 37202 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #30973: <==negation-removal== 46996 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #34830: <==negation-removal== 29286 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #37202: <==uncertain_firing== 46996 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #44304: <==unclosure== 79540 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #48662: <==uncertain_firing== 31234 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #56929: <==negation-removal== 29004 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #59585: <==unclosure== 25349 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #62223: <==unclosure== 48662 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #63810: <==negation-removal== 26550 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #64423: <==negation-removal== 21207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #71437: <==negation-removal== 37465 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #78860: <==negation-removal== 31234 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #79540: <==uncertain_firing== 37465 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #82501: <==negation-removal== 33252 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #21207: <==closure== 46996 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #26550: <==closure== 29286 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #29004: <==closure== 31234 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #29286: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #31234: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #33252: <==closure== 37465 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #37465: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #46996: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #25349: <==uncertain_firing== 29286 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #30108: <==unclosure== 37202 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #30973: <==negation-removal== 46996 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #34830: <==negation-removal== 29286 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #37202: <==uncertain_firing== 46996 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #44304: <==unclosure== 79540 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #48662: <==uncertain_firing== 31234 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #56929: <==negation-removal== 29004 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #59585: <==unclosure== 25349 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #62223: <==unclosure== 48662 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #63810: <==negation-removal== 26550 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #64423: <==negation-removal== 21207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #71437: <==negation-removal== 37465 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #78860: <==negation-removal== 31234 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #79540: <==uncertain_firing== 37465 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #82501: <==negation-removal== 33252 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #21207: <==closure== 46996 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #26550: <==closure== 29286 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #29004: <==closure== 31234 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #29286: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #31234: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #33252: <==closure== 37465 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #37465: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #46996: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #25349: <==uncertain_firing== 29286 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #30108: <==unclosure== 37202 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #30973: <==negation-removal== 46996 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #34830: <==negation-removal== 29286 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #37202: <==uncertain_firing== 46996 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #44304: <==unclosure== 79540 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #48662: <==uncertain_firing== 31234 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #56929: <==negation-removal== 29004 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #59585: <==unclosure== 25349 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #62223: <==unclosure== 48662 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #63810: <==negation-removal== 26550 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #64423: <==negation-removal== 21207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #71437: <==negation-removal== 37465 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #78860: <==negation-removal== 31234 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #79540: <==uncertain_firing== 37465 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #82501: <==negation-removal== 33252 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #21207: <==closure== 46996 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #26550: <==closure== 29286 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #29004: <==closure== 31234 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #29286: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #31234: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #33252: <==closure== 37465 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #37465: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #46996: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #25349: <==uncertain_firing== 29286 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #30108: <==unclosure== 37202 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #30973: <==negation-removal== 46996 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #34830: <==negation-removal== 29286 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #37202: <==uncertain_firing== 46996 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #44304: <==unclosure== 79540 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #48662: <==uncertain_firing== 31234 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #56929: <==negation-removal== 29004 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #59585: <==unclosure== 25349 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #62223: <==unclosure== 48662 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #63810: <==negation-removal== 26550 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #64423: <==negation-removal== 21207 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #71437: <==negation-removal== 37465 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #78860: <==negation-removal== 31234 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #79540: <==uncertain_firing== 37465 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #82501: <==negation-removal== 33252 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #16540: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18585: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #34754: <==closure== 70574 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #39889: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #48329: <==closure== 18585 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #50644: <==closure== 39889 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #70574: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #77249: <==closure== 16540 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #15739: <==unclosure== 20717 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #19086: <==negation-removal== 70574 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #20717: <==uncertain_firing== 16540 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #22097: <==uncertain_firing== 18585 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #24490: <==negation-removal== 50644 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #25852: <==negation-removal== 16540 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #26978: <==unclosure== 22097 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #27460: <==negation-removal== 39889 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #28729: <==negation-removal== 18585 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #36358: <==unclosure== 88656 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #41797: <==negation-removal== 77249 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #51241: <==uncertain_firing== 70574 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #56851: <==negation-removal== 48329 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #68072: <==negation-removal== 34754 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #88656: <==uncertain_firing== 39889 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #93838: <==unclosure== 51241 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #16540: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18585: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #34754: <==closure== 70574 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #39889: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #48329: <==closure== 18585 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #50644: <==closure== 39889 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #70574: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #77249: <==closure== 16540 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #15739: <==unclosure== 20717 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #19086: <==negation-removal== 70574 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #20717: <==uncertain_firing== 16540 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #22097: <==uncertain_firing== 18585 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #24490: <==negation-removal== 50644 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #25852: <==negation-removal== 16540 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #26978: <==unclosure== 22097 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #27460: <==negation-removal== 39889 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #28729: <==negation-removal== 18585 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #36358: <==unclosure== 88656 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #41797: <==negation-removal== 77249 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #51241: <==uncertain_firing== 70574 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #56851: <==negation-removal== 48329 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #68072: <==negation-removal== 34754 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #88656: <==uncertain_firing== 39889 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #93838: <==unclosure== 51241 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #16540: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18585: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #34754: <==closure== 70574 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #39889: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #48329: <==closure== 18585 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #50644: <==closure== 39889 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #70574: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #77249: <==closure== 16540 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #15739: <==unclosure== 20717 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #19086: <==negation-removal== 70574 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #20717: <==uncertain_firing== 16540 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #22097: <==uncertain_firing== 18585 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #24490: <==negation-removal== 50644 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #25852: <==negation-removal== 16540 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #26978: <==unclosure== 22097 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #27460: <==negation-removal== 39889 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #28729: <==negation-removal== 18585 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #36358: <==unclosure== 88656 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #41797: <==negation-removal== 77249 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #51241: <==uncertain_firing== 70574 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #56851: <==negation-removal== 48329 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #68072: <==negation-removal== 34754 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #88656: <==uncertain_firing== 39889 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #93838: <==unclosure== 51241 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Bd_survivorat_s_p7)
                           (at_d_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #16540: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18585: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #34754: <==closure== 70574 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #39889: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #48329: <==closure== 18585 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #50644: <==closure== 39889 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #70574: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #77249: <==closure== 16540 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #15739: <==unclosure== 20717 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #19086: <==negation-removal== 70574 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #20717: <==uncertain_firing== 16540 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #22097: <==uncertain_firing== 18585 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #24490: <==negation-removal== 50644 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #25852: <==negation-removal== 16540 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #26978: <==unclosure== 22097 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #27460: <==negation-removal== 39889 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #28729: <==negation-removal== 18585 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #36358: <==unclosure== 88656 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #41797: <==negation-removal== 77249 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #51241: <==uncertain_firing== 70574 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #56851: <==negation-removal== 48329 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #68072: <==negation-removal== 34754 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #88656: <==uncertain_firing== 39889 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #93838: <==unclosure== 51241 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #11434: <==closure== 13414 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #13414: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #17157: <==closure== 72075 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #53162: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #65856: <==closure== 77643 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #72075: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #77643: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #87861: <==closure== 53162 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #16569: <==unclosure== 54048 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #22964: <==unclosure== 59611 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #40899: <==uncertain_firing== 53162 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #41985: <==negation-removal== 72075 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #43474: <==negation-removal== 53162 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #44284: <==uncertain_firing== 13414 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #54048: <==uncertain_firing== 77643 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #59611: <==uncertain_firing== 72075 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #60677: <==negation-removal== 17157 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #62171: <==negation-removal== 65856 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #63044: <==unclosure== 44284 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #68071: <==unclosure== 40899 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #73331: <==negation-removal== 11434 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #79399: <==negation-removal== 13414 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #85558: <==negation-removal== 77643 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #87570: <==negation-removal== 87861 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #11434: <==closure== 13414 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #13414: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #17157: <==closure== 72075 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #53162: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #65856: <==closure== 77643 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #72075: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #77643: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #87861: <==closure== 53162 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #16569: <==unclosure== 54048 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #22964: <==unclosure== 59611 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #40899: <==uncertain_firing== 53162 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #41985: <==negation-removal== 72075 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #43474: <==negation-removal== 53162 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #44284: <==uncertain_firing== 13414 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #54048: <==uncertain_firing== 77643 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #59611: <==uncertain_firing== 72075 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #60677: <==negation-removal== 17157 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #62171: <==negation-removal== 65856 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #63044: <==unclosure== 44284 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #68071: <==unclosure== 40899 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #73331: <==negation-removal== 11434 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #79399: <==negation-removal== 13414 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #85558: <==negation-removal== 77643 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #87570: <==negation-removal== 87861 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #11434: <==closure== 13414 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #13414: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #17157: <==closure== 72075 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #53162: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #65856: <==closure== 77643 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #72075: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #77643: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #87861: <==closure== 53162 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #16569: <==unclosure== 54048 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #22964: <==unclosure== 59611 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #40899: <==uncertain_firing== 53162 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #41985: <==negation-removal== 72075 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #43474: <==negation-removal== 53162 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #44284: <==uncertain_firing== 13414 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #54048: <==uncertain_firing== 77643 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #59611: <==uncertain_firing== 72075 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #60677: <==negation-removal== 17157 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #62171: <==negation-removal== 65856 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #63044: <==unclosure== 44284 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #68071: <==unclosure== 40899 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #73331: <==negation-removal== 11434 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #79399: <==negation-removal== 13414 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #85558: <==negation-removal== 77643 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #87570: <==negation-removal== 87861 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #11434: <==closure== 13414 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #13414: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #17157: <==closure== 72075 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #53162: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #65856: <==closure== 77643 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #72075: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #77643: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #87861: <==closure== 53162 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #16569: <==unclosure== 54048 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #22964: <==unclosure== 59611 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #40899: <==uncertain_firing== 53162 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #41985: <==negation-removal== 72075 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #43474: <==negation-removal== 53162 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #44284: <==uncertain_firing== 13414 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #54048: <==uncertain_firing== 77643 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #59611: <==uncertain_firing== 72075 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #60677: <==negation-removal== 17157 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #62171: <==negation-removal== 65856 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #63044: <==unclosure== 44284 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #68071: <==unclosure== 40899 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #73331: <==negation-removal== 11434 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #79399: <==negation-removal== 13414 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #85558: <==negation-removal== 77643 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #87570: <==negation-removal== 87861 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #13692: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #15246: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #21492: <==closure== 15246 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #22150: <==closure== 78680 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #51500: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #55961: <==closure== 13692 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #63990: <==closure== 51500 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #78680: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #10913: <==uncertain_firing== 78680 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #26849: <==unclosure== 55681 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #26850: <==negation-removal== 21492 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #28788: <==negation-removal== 13692 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #31593: <==unclosure== 10913 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #36404: <==negation-removal== 55961 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #40693: <==negation-removal== 78680 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #44133: <==unclosure== 68289 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #55681: <==uncertain_firing== 51500 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #66120: <==negation-removal== 51500 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #68289: <==uncertain_firing== 13692 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #75338: <==uncertain_firing== 15246 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #75341: <==negation-removal== 15246 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #75608: <==negation-removal== 63990 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #75717: <==negation-removal== 22150 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #80551: <==unclosure== 75338 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #13692: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #15246: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #21492: <==closure== 15246 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #22150: <==closure== 78680 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #51500: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #55961: <==closure== 13692 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #63990: <==closure== 51500 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #78680: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #10913: <==uncertain_firing== 78680 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #26849: <==unclosure== 55681 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #26850: <==negation-removal== 21492 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #28788: <==negation-removal== 13692 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #31593: <==unclosure== 10913 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #36404: <==negation-removal== 55961 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #40693: <==negation-removal== 78680 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #44133: <==unclosure== 68289 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #55681: <==uncertain_firing== 51500 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #66120: <==negation-removal== 51500 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #68289: <==uncertain_firing== 13692 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #75338: <==uncertain_firing== 15246 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #75341: <==negation-removal== 15246 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #75608: <==negation-removal== 63990 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #75717: <==negation-removal== 22150 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #80551: <==unclosure== 75338 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #13692: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #15246: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #21492: <==closure== 15246 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #22150: <==closure== 78680 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #51500: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #55961: <==closure== 13692 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #63990: <==closure== 51500 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #78680: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #10913: <==uncertain_firing== 78680 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #26849: <==unclosure== 55681 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #26850: <==negation-removal== 21492 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #28788: <==negation-removal== 13692 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #31593: <==unclosure== 10913 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #36404: <==negation-removal== 55961 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #40693: <==negation-removal== 78680 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #44133: <==unclosure== 68289 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #55681: <==uncertain_firing== 51500 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #66120: <==negation-removal== 51500 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #68289: <==uncertain_firing== 13692 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #75338: <==uncertain_firing== 15246 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #75341: <==negation-removal== 15246 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #75608: <==negation-removal== 63990 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #75717: <==negation-removal== 22150 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #80551: <==unclosure== 75338 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (at_d_p9))
        :effect (and
                    ; #13692: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #15246: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #21492: <==closure== 15246 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #22150: <==closure== 78680 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #51500: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #55961: <==closure== 13692 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #63990: <==closure== 51500 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #78680: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #10913: <==uncertain_firing== 78680 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #26849: <==unclosure== 55681 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #26850: <==negation-removal== 21492 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #28788: <==negation-removal== 13692 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #31593: <==unclosure== 10913 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #36404: <==negation-removal== 55961 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #40693: <==negation-removal== 78680 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #44133: <==unclosure== 68289 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #55681: <==uncertain_firing== 51500 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #66120: <==negation-removal== 51500 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #68289: <==uncertain_firing== 13692 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #75338: <==uncertain_firing== 15246 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #75341: <==negation-removal== 15246 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #75608: <==negation-removal== 63990 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #75717: <==negation-removal== 22150 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #80551: <==unclosure== 75338 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #11715: origin
                    (Bd_survivorat_s_p10)

                    ; #21615: origin
                    (Bb_survivorat_s_p10)

                    ; #21888: <==closure== 11715 (pos)
                    (Pd_survivorat_s_p10)

                    ; #31551: <==closure== 52767 (pos)
                    (Pa_survivorat_s_p10)

                    ; #52767: origin
                    (Ba_survivorat_s_p10)

                    ; #66262: origin
                    (Bc_survivorat_s_p10)

                    ; #73757: <==closure== 66262 (pos)
                    (Pc_survivorat_s_p10)

                    ; #92134: <==closure== 21615 (pos)
                    (Pb_survivorat_s_p10)

                    ; #29256: <==negation-removal== 31551 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #50331: <==negation-removal== 92134 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #52668: <==negation-removal== 21615 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #54297: <==negation-removal== 11715 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #58367: <==negation-removal== 73757 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #63623: <==negation-removal== 52767 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #75656: <==negation-removal== 21888 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #92211: <==negation-removal== 66262 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #11715: origin
                    (Bd_survivorat_s_p10)

                    ; #21615: origin
                    (Bb_survivorat_s_p10)

                    ; #21888: <==closure== 11715 (pos)
                    (Pd_survivorat_s_p10)

                    ; #31551: <==closure== 52767 (pos)
                    (Pa_survivorat_s_p10)

                    ; #52767: origin
                    (Ba_survivorat_s_p10)

                    ; #66262: origin
                    (Bc_survivorat_s_p10)

                    ; #73757: <==closure== 66262 (pos)
                    (Pc_survivorat_s_p10)

                    ; #92134: <==closure== 21615 (pos)
                    (Pb_survivorat_s_p10)

                    ; #29256: <==negation-removal== 31551 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #50331: <==negation-removal== 92134 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #52668: <==negation-removal== 21615 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #54297: <==negation-removal== 11715 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #58367: <==negation-removal== 73757 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #63623: <==negation-removal== 52767 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #75656: <==negation-removal== 21888 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #92211: <==negation-removal== 66262 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #11715: origin
                    (Bd_survivorat_s_p10)

                    ; #21615: origin
                    (Bb_survivorat_s_p10)

                    ; #21888: <==closure== 11715 (pos)
                    (Pd_survivorat_s_p10)

                    ; #31551: <==closure== 52767 (pos)
                    (Pa_survivorat_s_p10)

                    ; #52767: origin
                    (Ba_survivorat_s_p10)

                    ; #66262: origin
                    (Bc_survivorat_s_p10)

                    ; #73757: <==closure== 66262 (pos)
                    (Pc_survivorat_s_p10)

                    ; #92134: <==closure== 21615 (pos)
                    (Pb_survivorat_s_p10)

                    ; #29256: <==negation-removal== 31551 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #50331: <==negation-removal== 92134 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #52668: <==negation-removal== 21615 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #54297: <==negation-removal== 11715 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #58367: <==negation-removal== 73757 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #63623: <==negation-removal== 52767 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #75656: <==negation-removal== 21888 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #92211: <==negation-removal== 66262 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_d_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #11715: origin
                    (Bd_survivorat_s_p10)

                    ; #21615: origin
                    (Bb_survivorat_s_p10)

                    ; #21888: <==closure== 11715 (pos)
                    (Pd_survivorat_s_p10)

                    ; #31551: <==closure== 52767 (pos)
                    (Pa_survivorat_s_p10)

                    ; #52767: origin
                    (Ba_survivorat_s_p10)

                    ; #66262: origin
                    (Bc_survivorat_s_p10)

                    ; #73757: <==closure== 66262 (pos)
                    (Pc_survivorat_s_p10)

                    ; #92134: <==closure== 21615 (pos)
                    (Pb_survivorat_s_p10)

                    ; #29256: <==negation-removal== 31551 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #50331: <==negation-removal== 92134 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #52668: <==negation-removal== 21615 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #54297: <==negation-removal== 11715 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #58367: <==negation-removal== 73757 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #63623: <==negation-removal== 52767 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #75656: <==negation-removal== 21888 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #92211: <==negation-removal== 66262 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #10914: origin
                    (Bb_survivorat_s_p11)

                    ; #12589: origin
                    (Ba_survivorat_s_p11)

                    ; #13555: <==closure== 72129 (pos)
                    (Pd_survivorat_s_p11)

                    ; #18761: <==closure== 84313 (pos)
                    (Pc_survivorat_s_p11)

                    ; #55629: <==closure== 10914 (pos)
                    (Pb_survivorat_s_p11)

                    ; #58014: <==closure== 12589 (pos)
                    (Pa_survivorat_s_p11)

                    ; #72129: origin
                    (Bd_survivorat_s_p11)

                    ; #84313: origin
                    (Bc_survivorat_s_p11)

                    ; #23707: <==negation-removal== 18761 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #33110: <==negation-removal== 72129 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #36067: <==negation-removal== 55629 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #43129: <==negation-removal== 84313 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #52890: <==negation-removal== 12589 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #58210: <==negation-removal== 10914 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #66045: <==negation-removal== 13555 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #86299: <==negation-removal== 58014 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #10914: origin
                    (Bb_survivorat_s_p11)

                    ; #12589: origin
                    (Ba_survivorat_s_p11)

                    ; #13555: <==closure== 72129 (pos)
                    (Pd_survivorat_s_p11)

                    ; #18761: <==closure== 84313 (pos)
                    (Pc_survivorat_s_p11)

                    ; #55629: <==closure== 10914 (pos)
                    (Pb_survivorat_s_p11)

                    ; #58014: <==closure== 12589 (pos)
                    (Pa_survivorat_s_p11)

                    ; #72129: origin
                    (Bd_survivorat_s_p11)

                    ; #84313: origin
                    (Bc_survivorat_s_p11)

                    ; #23707: <==negation-removal== 18761 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #33110: <==negation-removal== 72129 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #36067: <==negation-removal== 55629 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #43129: <==negation-removal== 84313 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #52890: <==negation-removal== 12589 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #58210: <==negation-removal== 10914 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #66045: <==negation-removal== 13555 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #86299: <==negation-removal== 58014 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #10914: origin
                    (Bb_survivorat_s_p11)

                    ; #12589: origin
                    (Ba_survivorat_s_p11)

                    ; #13555: <==closure== 72129 (pos)
                    (Pd_survivorat_s_p11)

                    ; #18761: <==closure== 84313 (pos)
                    (Pc_survivorat_s_p11)

                    ; #55629: <==closure== 10914 (pos)
                    (Pb_survivorat_s_p11)

                    ; #58014: <==closure== 12589 (pos)
                    (Pa_survivorat_s_p11)

                    ; #72129: origin
                    (Bd_survivorat_s_p11)

                    ; #84313: origin
                    (Bc_survivorat_s_p11)

                    ; #23707: <==negation-removal== 18761 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #33110: <==negation-removal== 72129 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #36067: <==negation-removal== 55629 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #43129: <==negation-removal== 84313 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #52890: <==negation-removal== 12589 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #58210: <==negation-removal== 10914 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #66045: <==negation-removal== 13555 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #86299: <==negation-removal== 58014 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (at_d_p11)
                           (Bd_survivorat_s_p11))
        :effect (and
                    ; #10914: origin
                    (Bb_survivorat_s_p11)

                    ; #12589: origin
                    (Ba_survivorat_s_p11)

                    ; #13555: <==closure== 72129 (pos)
                    (Pd_survivorat_s_p11)

                    ; #18761: <==closure== 84313 (pos)
                    (Pc_survivorat_s_p11)

                    ; #55629: <==closure== 10914 (pos)
                    (Pb_survivorat_s_p11)

                    ; #58014: <==closure== 12589 (pos)
                    (Pa_survivorat_s_p11)

                    ; #72129: origin
                    (Bd_survivorat_s_p11)

                    ; #84313: origin
                    (Bc_survivorat_s_p11)

                    ; #23707: <==negation-removal== 18761 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #33110: <==negation-removal== 72129 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #36067: <==negation-removal== 55629 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #43129: <==negation-removal== 84313 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #52890: <==negation-removal== 12589 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #58210: <==negation-removal== 10914 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #66045: <==negation-removal== 13555 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #86299: <==negation-removal== 58014 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #22012: <==closure== 31908 (pos)
                    (Pd_survivorat_s_p12)

                    ; #30841: origin
                    (Bc_survivorat_s_p12)

                    ; #31908: origin
                    (Bd_survivorat_s_p12)

                    ; #37258: origin
                    (Ba_survivorat_s_p12)

                    ; #42801: <==closure== 52347 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52347: origin
                    (Bb_survivorat_s_p12)

                    ; #55011: <==closure== 37258 (pos)
                    (Pa_survivorat_s_p12)

                    ; #72581: <==closure== 30841 (pos)
                    (Pc_survivorat_s_p12)

                    ; #34190: <==negation-removal== 31908 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #39319: <==negation-removal== 37258 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #48967: <==negation-removal== 42801 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #68029: <==negation-removal== 72581 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #74939: <==negation-removal== 52347 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #75310: <==negation-removal== 22012 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #79819: <==negation-removal== 55011 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #83726: <==negation-removal== 30841 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #22012: <==closure== 31908 (pos)
                    (Pd_survivorat_s_p12)

                    ; #30841: origin
                    (Bc_survivorat_s_p12)

                    ; #31908: origin
                    (Bd_survivorat_s_p12)

                    ; #37258: origin
                    (Ba_survivorat_s_p12)

                    ; #42801: <==closure== 52347 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52347: origin
                    (Bb_survivorat_s_p12)

                    ; #55011: <==closure== 37258 (pos)
                    (Pa_survivorat_s_p12)

                    ; #72581: <==closure== 30841 (pos)
                    (Pc_survivorat_s_p12)

                    ; #34190: <==negation-removal== 31908 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #39319: <==negation-removal== 37258 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #48967: <==negation-removal== 42801 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #68029: <==negation-removal== 72581 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #74939: <==negation-removal== 52347 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #75310: <==negation-removal== 22012 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #79819: <==negation-removal== 55011 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #83726: <==negation-removal== 30841 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #22012: <==closure== 31908 (pos)
                    (Pd_survivorat_s_p12)

                    ; #30841: origin
                    (Bc_survivorat_s_p12)

                    ; #31908: origin
                    (Bd_survivorat_s_p12)

                    ; #37258: origin
                    (Ba_survivorat_s_p12)

                    ; #42801: <==closure== 52347 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52347: origin
                    (Bb_survivorat_s_p12)

                    ; #55011: <==closure== 37258 (pos)
                    (Pa_survivorat_s_p12)

                    ; #72581: <==closure== 30841 (pos)
                    (Pc_survivorat_s_p12)

                    ; #34190: <==negation-removal== 31908 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #39319: <==negation-removal== 37258 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #48967: <==negation-removal== 42801 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #68029: <==negation-removal== 72581 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #74939: <==negation-removal== 52347 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #75310: <==negation-removal== 22012 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #79819: <==negation-removal== 55011 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #83726: <==negation-removal== 30841 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_d_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #22012: <==closure== 31908 (pos)
                    (Pd_survivorat_s_p12)

                    ; #30841: origin
                    (Bc_survivorat_s_p12)

                    ; #31908: origin
                    (Bd_survivorat_s_p12)

                    ; #37258: origin
                    (Ba_survivorat_s_p12)

                    ; #42801: <==closure== 52347 (pos)
                    (Pb_survivorat_s_p12)

                    ; #52347: origin
                    (Bb_survivorat_s_p12)

                    ; #55011: <==closure== 37258 (pos)
                    (Pa_survivorat_s_p12)

                    ; #72581: <==closure== 30841 (pos)
                    (Pc_survivorat_s_p12)

                    ; #34190: <==negation-removal== 31908 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #39319: <==negation-removal== 37258 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #48967: <==negation-removal== 42801 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #68029: <==negation-removal== 72581 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #74939: <==negation-removal== 52347 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #75310: <==negation-removal== 22012 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #79819: <==negation-removal== 55011 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #83726: <==negation-removal== 30841 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #10133: origin
                    (Bb_survivorat_s_p1)

                    ; #19030: <==closure== 31982 (pos)
                    (Pa_survivorat_s_p1)

                    ; #21344: origin
                    (Bc_survivorat_s_p1)

                    ; #31982: origin
                    (Ba_survivorat_s_p1)

                    ; #35368: <==closure== 10133 (pos)
                    (Pb_survivorat_s_p1)

                    ; #47148: origin
                    (Bd_survivorat_s_p1)

                    ; #51029: <==closure== 21344 (pos)
                    (Pc_survivorat_s_p1)

                    ; #57441: <==closure== 47148 (pos)
                    (Pd_survivorat_s_p1)

                    ; #28006: <==negation-removal== 35368 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #33257: <==negation-removal== 57441 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #56805: <==negation-removal== 21344 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #61053: <==negation-removal== 31982 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68868: <==negation-removal== 51029 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #84702: <==negation-removal== 47148 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #87782: <==negation-removal== 10133 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #91813: <==negation-removal== 19030 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #10133: origin
                    (Bb_survivorat_s_p1)

                    ; #19030: <==closure== 31982 (pos)
                    (Pa_survivorat_s_p1)

                    ; #21344: origin
                    (Bc_survivorat_s_p1)

                    ; #31982: origin
                    (Ba_survivorat_s_p1)

                    ; #35368: <==closure== 10133 (pos)
                    (Pb_survivorat_s_p1)

                    ; #47148: origin
                    (Bd_survivorat_s_p1)

                    ; #51029: <==closure== 21344 (pos)
                    (Pc_survivorat_s_p1)

                    ; #57441: <==closure== 47148 (pos)
                    (Pd_survivorat_s_p1)

                    ; #28006: <==negation-removal== 35368 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #33257: <==negation-removal== 57441 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #56805: <==negation-removal== 21344 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #61053: <==negation-removal== 31982 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68868: <==negation-removal== 51029 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #84702: <==negation-removal== 47148 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #87782: <==negation-removal== 10133 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #91813: <==negation-removal== 19030 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #10133: origin
                    (Bb_survivorat_s_p1)

                    ; #19030: <==closure== 31982 (pos)
                    (Pa_survivorat_s_p1)

                    ; #21344: origin
                    (Bc_survivorat_s_p1)

                    ; #31982: origin
                    (Ba_survivorat_s_p1)

                    ; #35368: <==closure== 10133 (pos)
                    (Pb_survivorat_s_p1)

                    ; #47148: origin
                    (Bd_survivorat_s_p1)

                    ; #51029: <==closure== 21344 (pos)
                    (Pc_survivorat_s_p1)

                    ; #57441: <==closure== 47148 (pos)
                    (Pd_survivorat_s_p1)

                    ; #28006: <==negation-removal== 35368 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #33257: <==negation-removal== 57441 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #56805: <==negation-removal== 21344 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #61053: <==negation-removal== 31982 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68868: <==negation-removal== 51029 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #84702: <==negation-removal== 47148 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #87782: <==negation-removal== 10133 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #91813: <==negation-removal== 19030 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #10133: origin
                    (Bb_survivorat_s_p1)

                    ; #19030: <==closure== 31982 (pos)
                    (Pa_survivorat_s_p1)

                    ; #21344: origin
                    (Bc_survivorat_s_p1)

                    ; #31982: origin
                    (Ba_survivorat_s_p1)

                    ; #35368: <==closure== 10133 (pos)
                    (Pb_survivorat_s_p1)

                    ; #47148: origin
                    (Bd_survivorat_s_p1)

                    ; #51029: <==closure== 21344 (pos)
                    (Pc_survivorat_s_p1)

                    ; #57441: <==closure== 47148 (pos)
                    (Pd_survivorat_s_p1)

                    ; #28006: <==negation-removal== 35368 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #33257: <==negation-removal== 57441 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #56805: <==negation-removal== 21344 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #61053: <==negation-removal== 31982 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68868: <==negation-removal== 51029 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #84702: <==negation-removal== 47148 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #87782: <==negation-removal== 10133 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #91813: <==negation-removal== 19030 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #10222: origin
                    (Bb_survivorat_s_p2)

                    ; #32564: <==closure== 76333 (pos)
                    (Pa_survivorat_s_p2)

                    ; #51195: <==closure== 10222 (pos)
                    (Pb_survivorat_s_p2)

                    ; #52111: origin
                    (Bc_survivorat_s_p2)

                    ; #61568: origin
                    (Bd_survivorat_s_p2)

                    ; #72691: <==closure== 52111 (pos)
                    (Pc_survivorat_s_p2)

                    ; #76333: origin
                    (Ba_survivorat_s_p2)

                    ; #79538: <==closure== 61568 (pos)
                    (Pd_survivorat_s_p2)

                    ; #10492: <==negation-removal== 51195 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #10914: <==negation-removal== 76333 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #44929: <==negation-removal== 10222 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #45902: <==negation-removal== 32564 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #54160: <==negation-removal== 61568 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #55415: <==negation-removal== 72691 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #72808: <==negation-removal== 79538 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #83994: <==negation-removal== 52111 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #10222: origin
                    (Bb_survivorat_s_p2)

                    ; #32564: <==closure== 76333 (pos)
                    (Pa_survivorat_s_p2)

                    ; #51195: <==closure== 10222 (pos)
                    (Pb_survivorat_s_p2)

                    ; #52111: origin
                    (Bc_survivorat_s_p2)

                    ; #61568: origin
                    (Bd_survivorat_s_p2)

                    ; #72691: <==closure== 52111 (pos)
                    (Pc_survivorat_s_p2)

                    ; #76333: origin
                    (Ba_survivorat_s_p2)

                    ; #79538: <==closure== 61568 (pos)
                    (Pd_survivorat_s_p2)

                    ; #10492: <==negation-removal== 51195 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #10914: <==negation-removal== 76333 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #44929: <==negation-removal== 10222 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #45902: <==negation-removal== 32564 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #54160: <==negation-removal== 61568 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #55415: <==negation-removal== 72691 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #72808: <==negation-removal== 79538 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #83994: <==negation-removal== 52111 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #10222: origin
                    (Bb_survivorat_s_p2)

                    ; #32564: <==closure== 76333 (pos)
                    (Pa_survivorat_s_p2)

                    ; #51195: <==closure== 10222 (pos)
                    (Pb_survivorat_s_p2)

                    ; #52111: origin
                    (Bc_survivorat_s_p2)

                    ; #61568: origin
                    (Bd_survivorat_s_p2)

                    ; #72691: <==closure== 52111 (pos)
                    (Pc_survivorat_s_p2)

                    ; #76333: origin
                    (Ba_survivorat_s_p2)

                    ; #79538: <==closure== 61568 (pos)
                    (Pd_survivorat_s_p2)

                    ; #10492: <==negation-removal== 51195 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #10914: <==negation-removal== 76333 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #44929: <==negation-removal== 10222 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #45902: <==negation-removal== 32564 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #54160: <==negation-removal== 61568 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #55415: <==negation-removal== 72691 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #72808: <==negation-removal== 79538 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #83994: <==negation-removal== 52111 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #10222: origin
                    (Bb_survivorat_s_p2)

                    ; #32564: <==closure== 76333 (pos)
                    (Pa_survivorat_s_p2)

                    ; #51195: <==closure== 10222 (pos)
                    (Pb_survivorat_s_p2)

                    ; #52111: origin
                    (Bc_survivorat_s_p2)

                    ; #61568: origin
                    (Bd_survivorat_s_p2)

                    ; #72691: <==closure== 52111 (pos)
                    (Pc_survivorat_s_p2)

                    ; #76333: origin
                    (Ba_survivorat_s_p2)

                    ; #79538: <==closure== 61568 (pos)
                    (Pd_survivorat_s_p2)

                    ; #10492: <==negation-removal== 51195 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #10914: <==negation-removal== 76333 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #44929: <==negation-removal== 10222 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #45902: <==negation-removal== 32564 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #54160: <==negation-removal== 61568 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #55415: <==negation-removal== 72691 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #72808: <==negation-removal== 79538 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #83994: <==negation-removal== 52111 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #15739: <==closure== 62441 (pos)
                    (Pc_survivorat_s_p3)

                    ; #19016: origin
                    (Bb_survivorat_s_p3)

                    ; #25897: <==closure== 32639 (pos)
                    (Pd_survivorat_s_p3)

                    ; #32639: origin
                    (Bd_survivorat_s_p3)

                    ; #41643: <==closure== 19016 (pos)
                    (Pb_survivorat_s_p3)

                    ; #42568: <==closure== 77396 (pos)
                    (Pa_survivorat_s_p3)

                    ; #62441: origin
                    (Bc_survivorat_s_p3)

                    ; #77396: origin
                    (Ba_survivorat_s_p3)

                    ; #20088: <==negation-removal== 42568 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #20491: <==negation-removal== 62441 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #36948: <==negation-removal== 25897 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #53736: <==negation-removal== 19016 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #53887: <==negation-removal== 32639 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #69024: <==negation-removal== 15739 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81389: <==negation-removal== 41643 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92207: <==negation-removal== 77396 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #15739: <==closure== 62441 (pos)
                    (Pc_survivorat_s_p3)

                    ; #19016: origin
                    (Bb_survivorat_s_p3)

                    ; #25897: <==closure== 32639 (pos)
                    (Pd_survivorat_s_p3)

                    ; #32639: origin
                    (Bd_survivorat_s_p3)

                    ; #41643: <==closure== 19016 (pos)
                    (Pb_survivorat_s_p3)

                    ; #42568: <==closure== 77396 (pos)
                    (Pa_survivorat_s_p3)

                    ; #62441: origin
                    (Bc_survivorat_s_p3)

                    ; #77396: origin
                    (Ba_survivorat_s_p3)

                    ; #20088: <==negation-removal== 42568 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #20491: <==negation-removal== 62441 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #36948: <==negation-removal== 25897 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #53736: <==negation-removal== 19016 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #53887: <==negation-removal== 32639 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #69024: <==negation-removal== 15739 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81389: <==negation-removal== 41643 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92207: <==negation-removal== 77396 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #15739: <==closure== 62441 (pos)
                    (Pc_survivorat_s_p3)

                    ; #19016: origin
                    (Bb_survivorat_s_p3)

                    ; #25897: <==closure== 32639 (pos)
                    (Pd_survivorat_s_p3)

                    ; #32639: origin
                    (Bd_survivorat_s_p3)

                    ; #41643: <==closure== 19016 (pos)
                    (Pb_survivorat_s_p3)

                    ; #42568: <==closure== 77396 (pos)
                    (Pa_survivorat_s_p3)

                    ; #62441: origin
                    (Bc_survivorat_s_p3)

                    ; #77396: origin
                    (Ba_survivorat_s_p3)

                    ; #20088: <==negation-removal== 42568 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #20491: <==negation-removal== 62441 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #36948: <==negation-removal== 25897 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #53736: <==negation-removal== 19016 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #53887: <==negation-removal== 32639 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #69024: <==negation-removal== 15739 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81389: <==negation-removal== 41643 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92207: <==negation-removal== 77396 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #15739: <==closure== 62441 (pos)
                    (Pc_survivorat_s_p3)

                    ; #19016: origin
                    (Bb_survivorat_s_p3)

                    ; #25897: <==closure== 32639 (pos)
                    (Pd_survivorat_s_p3)

                    ; #32639: origin
                    (Bd_survivorat_s_p3)

                    ; #41643: <==closure== 19016 (pos)
                    (Pb_survivorat_s_p3)

                    ; #42568: <==closure== 77396 (pos)
                    (Pa_survivorat_s_p3)

                    ; #62441: origin
                    (Bc_survivorat_s_p3)

                    ; #77396: origin
                    (Ba_survivorat_s_p3)

                    ; #20088: <==negation-removal== 42568 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #20491: <==negation-removal== 62441 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #36948: <==negation-removal== 25897 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #53736: <==negation-removal== 19016 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #53887: <==negation-removal== 32639 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #69024: <==negation-removal== 15739 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81389: <==negation-removal== 41643 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92207: <==negation-removal== 77396 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #15809: origin
                    (Bb_survivorat_s_p4)

                    ; #27191: <==closure== 15809 (pos)
                    (Pb_survivorat_s_p4)

                    ; #38952: <==closure== 49576 (pos)
                    (Pa_survivorat_s_p4)

                    ; #47518: origin
                    (Bd_survivorat_s_p4)

                    ; #49576: origin
                    (Ba_survivorat_s_p4)

                    ; #58088: <==closure== 76069 (pos)
                    (Pc_survivorat_s_p4)

                    ; #58853: <==closure== 47518 (pos)
                    (Pd_survivorat_s_p4)

                    ; #76069: origin
                    (Bc_survivorat_s_p4)

                    ; #14148: <==negation-removal== 58853 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #15228: <==negation-removal== 76069 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #40606: <==negation-removal== 47518 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #48906: <==negation-removal== 49576 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #53544: <==negation-removal== 27191 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #55067: <==negation-removal== 38952 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #62424: <==negation-removal== 15809 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #69335: <==negation-removal== 58088 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #15809: origin
                    (Bb_survivorat_s_p4)

                    ; #27191: <==closure== 15809 (pos)
                    (Pb_survivorat_s_p4)

                    ; #38952: <==closure== 49576 (pos)
                    (Pa_survivorat_s_p4)

                    ; #47518: origin
                    (Bd_survivorat_s_p4)

                    ; #49576: origin
                    (Ba_survivorat_s_p4)

                    ; #58088: <==closure== 76069 (pos)
                    (Pc_survivorat_s_p4)

                    ; #58853: <==closure== 47518 (pos)
                    (Pd_survivorat_s_p4)

                    ; #76069: origin
                    (Bc_survivorat_s_p4)

                    ; #14148: <==negation-removal== 58853 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #15228: <==negation-removal== 76069 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #40606: <==negation-removal== 47518 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #48906: <==negation-removal== 49576 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #53544: <==negation-removal== 27191 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #55067: <==negation-removal== 38952 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #62424: <==negation-removal== 15809 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #69335: <==negation-removal== 58088 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #15809: origin
                    (Bb_survivorat_s_p4)

                    ; #27191: <==closure== 15809 (pos)
                    (Pb_survivorat_s_p4)

                    ; #38952: <==closure== 49576 (pos)
                    (Pa_survivorat_s_p4)

                    ; #47518: origin
                    (Bd_survivorat_s_p4)

                    ; #49576: origin
                    (Ba_survivorat_s_p4)

                    ; #58088: <==closure== 76069 (pos)
                    (Pc_survivorat_s_p4)

                    ; #58853: <==closure== 47518 (pos)
                    (Pd_survivorat_s_p4)

                    ; #76069: origin
                    (Bc_survivorat_s_p4)

                    ; #14148: <==negation-removal== 58853 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #15228: <==negation-removal== 76069 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #40606: <==negation-removal== 47518 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #48906: <==negation-removal== 49576 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #53544: <==negation-removal== 27191 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #55067: <==negation-removal== 38952 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #62424: <==negation-removal== 15809 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #69335: <==negation-removal== 58088 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #15809: origin
                    (Bb_survivorat_s_p4)

                    ; #27191: <==closure== 15809 (pos)
                    (Pb_survivorat_s_p4)

                    ; #38952: <==closure== 49576 (pos)
                    (Pa_survivorat_s_p4)

                    ; #47518: origin
                    (Bd_survivorat_s_p4)

                    ; #49576: origin
                    (Ba_survivorat_s_p4)

                    ; #58088: <==closure== 76069 (pos)
                    (Pc_survivorat_s_p4)

                    ; #58853: <==closure== 47518 (pos)
                    (Pd_survivorat_s_p4)

                    ; #76069: origin
                    (Bc_survivorat_s_p4)

                    ; #14148: <==negation-removal== 58853 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #15228: <==negation-removal== 76069 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #40606: <==negation-removal== 47518 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #48906: <==negation-removal== 49576 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #53544: <==negation-removal== 27191 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #55067: <==negation-removal== 38952 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #62424: <==negation-removal== 15809 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #69335: <==negation-removal== 58088 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #13677: origin
                    (Bd_survivorat_s_p5)

                    ; #13809: <==closure== 13677 (pos)
                    (Pd_survivorat_s_p5)

                    ; #21482: <==closure== 51859 (pos)
                    (Pb_survivorat_s_p5)

                    ; #30001: <==closure== 40038 (pos)
                    (Pc_survivorat_s_p5)

                    ; #40038: origin
                    (Bc_survivorat_s_p5)

                    ; #47549: <==closure== 82029 (pos)
                    (Pa_survivorat_s_p5)

                    ; #51859: origin
                    (Bb_survivorat_s_p5)

                    ; #82029: origin
                    (Ba_survivorat_s_p5)

                    ; #32465: <==negation-removal== 82029 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #43638: <==negation-removal== 30001 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43657: <==negation-removal== 21482 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #77144: <==negation-removal== 47549 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #78641: <==negation-removal== 13677 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #78974: <==negation-removal== 13809 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #86575: <==negation-removal== 40038 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #88234: <==negation-removal== 51859 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #13677: origin
                    (Bd_survivorat_s_p5)

                    ; #13809: <==closure== 13677 (pos)
                    (Pd_survivorat_s_p5)

                    ; #21482: <==closure== 51859 (pos)
                    (Pb_survivorat_s_p5)

                    ; #30001: <==closure== 40038 (pos)
                    (Pc_survivorat_s_p5)

                    ; #40038: origin
                    (Bc_survivorat_s_p5)

                    ; #47549: <==closure== 82029 (pos)
                    (Pa_survivorat_s_p5)

                    ; #51859: origin
                    (Bb_survivorat_s_p5)

                    ; #82029: origin
                    (Ba_survivorat_s_p5)

                    ; #32465: <==negation-removal== 82029 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #43638: <==negation-removal== 30001 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43657: <==negation-removal== 21482 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #77144: <==negation-removal== 47549 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #78641: <==negation-removal== 13677 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #78974: <==negation-removal== 13809 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #86575: <==negation-removal== 40038 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #88234: <==negation-removal== 51859 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #13677: origin
                    (Bd_survivorat_s_p5)

                    ; #13809: <==closure== 13677 (pos)
                    (Pd_survivorat_s_p5)

                    ; #21482: <==closure== 51859 (pos)
                    (Pb_survivorat_s_p5)

                    ; #30001: <==closure== 40038 (pos)
                    (Pc_survivorat_s_p5)

                    ; #40038: origin
                    (Bc_survivorat_s_p5)

                    ; #47549: <==closure== 82029 (pos)
                    (Pa_survivorat_s_p5)

                    ; #51859: origin
                    (Bb_survivorat_s_p5)

                    ; #82029: origin
                    (Ba_survivorat_s_p5)

                    ; #32465: <==negation-removal== 82029 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #43638: <==negation-removal== 30001 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43657: <==negation-removal== 21482 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #77144: <==negation-removal== 47549 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #78641: <==negation-removal== 13677 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #78974: <==negation-removal== 13809 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #86575: <==negation-removal== 40038 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #88234: <==negation-removal== 51859 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #13677: origin
                    (Bd_survivorat_s_p5)

                    ; #13809: <==closure== 13677 (pos)
                    (Pd_survivorat_s_p5)

                    ; #21482: <==closure== 51859 (pos)
                    (Pb_survivorat_s_p5)

                    ; #30001: <==closure== 40038 (pos)
                    (Pc_survivorat_s_p5)

                    ; #40038: origin
                    (Bc_survivorat_s_p5)

                    ; #47549: <==closure== 82029 (pos)
                    (Pa_survivorat_s_p5)

                    ; #51859: origin
                    (Bb_survivorat_s_p5)

                    ; #82029: origin
                    (Ba_survivorat_s_p5)

                    ; #32465: <==negation-removal== 82029 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #43638: <==negation-removal== 30001 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43657: <==negation-removal== 21482 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #77144: <==negation-removal== 47549 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #78641: <==negation-removal== 13677 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #78974: <==negation-removal== 13809 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #86575: <==negation-removal== 40038 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #88234: <==negation-removal== 51859 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #15249: <==closure== 38159 (pos)
                    (Pc_survivorat_s_p6)

                    ; #15997: <==closure== 35793 (pos)
                    (Pb_survivorat_s_p6)

                    ; #35793: origin
                    (Bb_survivorat_s_p6)

                    ; #38159: origin
                    (Bc_survivorat_s_p6)

                    ; #46131: origin
                    (Bd_survivorat_s_p6)

                    ; #54900: origin
                    (Ba_survivorat_s_p6)

                    ; #64629: <==closure== 46131 (pos)
                    (Pd_survivorat_s_p6)

                    ; #73538: <==closure== 54900 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13939: <==negation-removal== 15249 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #36500: <==negation-removal== 46131 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #36933: <==negation-removal== 73538 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #39397: <==negation-removal== 35793 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #57661: <==negation-removal== 64629 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #67731: <==negation-removal== 38159 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #72036: <==negation-removal== 54900 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #86685: <==negation-removal== 15997 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #15249: <==closure== 38159 (pos)
                    (Pc_survivorat_s_p6)

                    ; #15997: <==closure== 35793 (pos)
                    (Pb_survivorat_s_p6)

                    ; #35793: origin
                    (Bb_survivorat_s_p6)

                    ; #38159: origin
                    (Bc_survivorat_s_p6)

                    ; #46131: origin
                    (Bd_survivorat_s_p6)

                    ; #54900: origin
                    (Ba_survivorat_s_p6)

                    ; #64629: <==closure== 46131 (pos)
                    (Pd_survivorat_s_p6)

                    ; #73538: <==closure== 54900 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13939: <==negation-removal== 15249 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #36500: <==negation-removal== 46131 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #36933: <==negation-removal== 73538 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #39397: <==negation-removal== 35793 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #57661: <==negation-removal== 64629 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #67731: <==negation-removal== 38159 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #72036: <==negation-removal== 54900 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #86685: <==negation-removal== 15997 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #15249: <==closure== 38159 (pos)
                    (Pc_survivorat_s_p6)

                    ; #15997: <==closure== 35793 (pos)
                    (Pb_survivorat_s_p6)

                    ; #35793: origin
                    (Bb_survivorat_s_p6)

                    ; #38159: origin
                    (Bc_survivorat_s_p6)

                    ; #46131: origin
                    (Bd_survivorat_s_p6)

                    ; #54900: origin
                    (Ba_survivorat_s_p6)

                    ; #64629: <==closure== 46131 (pos)
                    (Pd_survivorat_s_p6)

                    ; #73538: <==closure== 54900 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13939: <==negation-removal== 15249 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #36500: <==negation-removal== 46131 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #36933: <==negation-removal== 73538 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #39397: <==negation-removal== 35793 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #57661: <==negation-removal== 64629 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #67731: <==negation-removal== 38159 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #72036: <==negation-removal== 54900 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #86685: <==negation-removal== 15997 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #15249: <==closure== 38159 (pos)
                    (Pc_survivorat_s_p6)

                    ; #15997: <==closure== 35793 (pos)
                    (Pb_survivorat_s_p6)

                    ; #35793: origin
                    (Bb_survivorat_s_p6)

                    ; #38159: origin
                    (Bc_survivorat_s_p6)

                    ; #46131: origin
                    (Bd_survivorat_s_p6)

                    ; #54900: origin
                    (Ba_survivorat_s_p6)

                    ; #64629: <==closure== 46131 (pos)
                    (Pd_survivorat_s_p6)

                    ; #73538: <==closure== 54900 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13939: <==negation-removal== 15249 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #36500: <==negation-removal== 46131 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #36933: <==negation-removal== 73538 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #39397: <==negation-removal== 35793 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #57661: <==negation-removal== 64629 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #67731: <==negation-removal== 38159 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #72036: <==negation-removal== 54900 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #86685: <==negation-removal== 15997 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #20749: origin
                    (Ba_survivorat_s_p7)

                    ; #28687: origin
                    (Bc_survivorat_s_p7)

                    ; #34309: origin
                    (Bd_survivorat_s_p7)

                    ; #41428: <==closure== 69130 (pos)
                    (Pb_survivorat_s_p7)

                    ; #46381: <==closure== 34309 (pos)
                    (Pd_survivorat_s_p7)

                    ; #69130: origin
                    (Bb_survivorat_s_p7)

                    ; #78212: <==closure== 28687 (pos)
                    (Pc_survivorat_s_p7)

                    ; #85536: <==closure== 20749 (pos)
                    (Pa_survivorat_s_p7)

                    ; #24325: <==negation-removal== 20749 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #32025: <==negation-removal== 34309 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #32455: <==negation-removal== 69130 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #37390: <==negation-removal== 78212 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49684: <==negation-removal== 41428 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #70490: <==negation-removal== 85536 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #76773: <==negation-removal== 46381 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #85707: <==negation-removal== 28687 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #20749: origin
                    (Ba_survivorat_s_p7)

                    ; #28687: origin
                    (Bc_survivorat_s_p7)

                    ; #34309: origin
                    (Bd_survivorat_s_p7)

                    ; #41428: <==closure== 69130 (pos)
                    (Pb_survivorat_s_p7)

                    ; #46381: <==closure== 34309 (pos)
                    (Pd_survivorat_s_p7)

                    ; #69130: origin
                    (Bb_survivorat_s_p7)

                    ; #78212: <==closure== 28687 (pos)
                    (Pc_survivorat_s_p7)

                    ; #85536: <==closure== 20749 (pos)
                    (Pa_survivorat_s_p7)

                    ; #24325: <==negation-removal== 20749 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #32025: <==negation-removal== 34309 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #32455: <==negation-removal== 69130 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #37390: <==negation-removal== 78212 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49684: <==negation-removal== 41428 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #70490: <==negation-removal== 85536 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #76773: <==negation-removal== 46381 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #85707: <==negation-removal== 28687 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #20749: origin
                    (Ba_survivorat_s_p7)

                    ; #28687: origin
                    (Bc_survivorat_s_p7)

                    ; #34309: origin
                    (Bd_survivorat_s_p7)

                    ; #41428: <==closure== 69130 (pos)
                    (Pb_survivorat_s_p7)

                    ; #46381: <==closure== 34309 (pos)
                    (Pd_survivorat_s_p7)

                    ; #69130: origin
                    (Bb_survivorat_s_p7)

                    ; #78212: <==closure== 28687 (pos)
                    (Pc_survivorat_s_p7)

                    ; #85536: <==closure== 20749 (pos)
                    (Pa_survivorat_s_p7)

                    ; #24325: <==negation-removal== 20749 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #32025: <==negation-removal== 34309 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #32455: <==negation-removal== 69130 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #37390: <==negation-removal== 78212 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49684: <==negation-removal== 41428 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #70490: <==negation-removal== 85536 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #76773: <==negation-removal== 46381 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #85707: <==negation-removal== 28687 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Bd_survivorat_s_p7)
                           (at_d_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #20749: origin
                    (Ba_survivorat_s_p7)

                    ; #28687: origin
                    (Bc_survivorat_s_p7)

                    ; #34309: origin
                    (Bd_survivorat_s_p7)

                    ; #41428: <==closure== 69130 (pos)
                    (Pb_survivorat_s_p7)

                    ; #46381: <==closure== 34309 (pos)
                    (Pd_survivorat_s_p7)

                    ; #69130: origin
                    (Bb_survivorat_s_p7)

                    ; #78212: <==closure== 28687 (pos)
                    (Pc_survivorat_s_p7)

                    ; #85536: <==closure== 20749 (pos)
                    (Pa_survivorat_s_p7)

                    ; #24325: <==negation-removal== 20749 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #32025: <==negation-removal== 34309 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #32455: <==negation-removal== 69130 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #37390: <==negation-removal== 78212 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49684: <==negation-removal== 41428 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #70490: <==negation-removal== 85536 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #76773: <==negation-removal== 46381 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #85707: <==negation-removal== 28687 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #19659: <==closure== 87573 (pos)
                    (Pa_survivorat_s_p8)

                    ; #27381: origin
                    (Bb_survivorat_s_p8)

                    ; #35496: <==closure== 27381 (pos)
                    (Pb_survivorat_s_p8)

                    ; #36401: <==closure== 86285 (pos)
                    (Pd_survivorat_s_p8)

                    ; #65182: origin
                    (Bc_survivorat_s_p8)

                    ; #77616: <==closure== 65182 (pos)
                    (Pc_survivorat_s_p8)

                    ; #86285: origin
                    (Bd_survivorat_s_p8)

                    ; #87573: origin
                    (Ba_survivorat_s_p8)

                    ; #31955: <==negation-removal== 19659 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #33397: <==negation-removal== 27381 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #35300: <==negation-removal== 86285 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #43548: <==negation-removal== 36401 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #53272: <==negation-removal== 35496 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #56793: <==negation-removal== 87573 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #67917: <==negation-removal== 65182 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #88071: <==negation-removal== 77616 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #19659: <==closure== 87573 (pos)
                    (Pa_survivorat_s_p8)

                    ; #27381: origin
                    (Bb_survivorat_s_p8)

                    ; #35496: <==closure== 27381 (pos)
                    (Pb_survivorat_s_p8)

                    ; #36401: <==closure== 86285 (pos)
                    (Pd_survivorat_s_p8)

                    ; #65182: origin
                    (Bc_survivorat_s_p8)

                    ; #77616: <==closure== 65182 (pos)
                    (Pc_survivorat_s_p8)

                    ; #86285: origin
                    (Bd_survivorat_s_p8)

                    ; #87573: origin
                    (Ba_survivorat_s_p8)

                    ; #31955: <==negation-removal== 19659 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #33397: <==negation-removal== 27381 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #35300: <==negation-removal== 86285 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #43548: <==negation-removal== 36401 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #53272: <==negation-removal== 35496 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #56793: <==negation-removal== 87573 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #67917: <==negation-removal== 65182 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #88071: <==negation-removal== 77616 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #19659: <==closure== 87573 (pos)
                    (Pa_survivorat_s_p8)

                    ; #27381: origin
                    (Bb_survivorat_s_p8)

                    ; #35496: <==closure== 27381 (pos)
                    (Pb_survivorat_s_p8)

                    ; #36401: <==closure== 86285 (pos)
                    (Pd_survivorat_s_p8)

                    ; #65182: origin
                    (Bc_survivorat_s_p8)

                    ; #77616: <==closure== 65182 (pos)
                    (Pc_survivorat_s_p8)

                    ; #86285: origin
                    (Bd_survivorat_s_p8)

                    ; #87573: origin
                    (Ba_survivorat_s_p8)

                    ; #31955: <==negation-removal== 19659 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #33397: <==negation-removal== 27381 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #35300: <==negation-removal== 86285 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #43548: <==negation-removal== 36401 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #53272: <==negation-removal== 35496 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #56793: <==negation-removal== 87573 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #67917: <==negation-removal== 65182 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #88071: <==negation-removal== 77616 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #19659: <==closure== 87573 (pos)
                    (Pa_survivorat_s_p8)

                    ; #27381: origin
                    (Bb_survivorat_s_p8)

                    ; #35496: <==closure== 27381 (pos)
                    (Pb_survivorat_s_p8)

                    ; #36401: <==closure== 86285 (pos)
                    (Pd_survivorat_s_p8)

                    ; #65182: origin
                    (Bc_survivorat_s_p8)

                    ; #77616: <==closure== 65182 (pos)
                    (Pc_survivorat_s_p8)

                    ; #86285: origin
                    (Bd_survivorat_s_p8)

                    ; #87573: origin
                    (Ba_survivorat_s_p8)

                    ; #31955: <==negation-removal== 19659 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #33397: <==negation-removal== 27381 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #35300: <==negation-removal== 86285 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #43548: <==negation-removal== 36401 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #53272: <==negation-removal== 35496 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #56793: <==negation-removal== 87573 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #67917: <==negation-removal== 65182 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #88071: <==negation-removal== 77616 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #17066: origin
                    (Bb_survivorat_s_p9)

                    ; #25354: origin
                    (Bd_survivorat_s_p9)

                    ; #28405: <==closure== 17066 (pos)
                    (Pb_survivorat_s_p9)

                    ; #51246: <==closure== 67400 (pos)
                    (Pa_survivorat_s_p9)

                    ; #67400: origin
                    (Ba_survivorat_s_p9)

                    ; #72235: <==closure== 83567 (pos)
                    (Pc_survivorat_s_p9)

                    ; #83567: origin
                    (Bc_survivorat_s_p9)

                    ; #96740: <==closure== 25354 (pos)
                    (Pd_survivorat_s_p9)

                    ; #29529: <==negation-removal== 83567 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #29791: <==negation-removal== 72235 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #37859: <==negation-removal== 17066 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #45492: <==negation-removal== 28405 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #60370: <==negation-removal== 96740 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #65876: <==negation-removal== 67400 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #81033: <==negation-removal== 51246 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #90940: <==negation-removal== 25354 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #17066: origin
                    (Bb_survivorat_s_p9)

                    ; #25354: origin
                    (Bd_survivorat_s_p9)

                    ; #28405: <==closure== 17066 (pos)
                    (Pb_survivorat_s_p9)

                    ; #51246: <==closure== 67400 (pos)
                    (Pa_survivorat_s_p9)

                    ; #67400: origin
                    (Ba_survivorat_s_p9)

                    ; #72235: <==closure== 83567 (pos)
                    (Pc_survivorat_s_p9)

                    ; #83567: origin
                    (Bc_survivorat_s_p9)

                    ; #96740: <==closure== 25354 (pos)
                    (Pd_survivorat_s_p9)

                    ; #29529: <==negation-removal== 83567 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #29791: <==negation-removal== 72235 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #37859: <==negation-removal== 17066 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #45492: <==negation-removal== 28405 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #60370: <==negation-removal== 96740 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #65876: <==negation-removal== 67400 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #81033: <==negation-removal== 51246 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #90940: <==negation-removal== 25354 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #17066: origin
                    (Bb_survivorat_s_p9)

                    ; #25354: origin
                    (Bd_survivorat_s_p9)

                    ; #28405: <==closure== 17066 (pos)
                    (Pb_survivorat_s_p9)

                    ; #51246: <==closure== 67400 (pos)
                    (Pa_survivorat_s_p9)

                    ; #67400: origin
                    (Ba_survivorat_s_p9)

                    ; #72235: <==closure== 83567 (pos)
                    (Pc_survivorat_s_p9)

                    ; #83567: origin
                    (Bc_survivorat_s_p9)

                    ; #96740: <==closure== 25354 (pos)
                    (Pd_survivorat_s_p9)

                    ; #29529: <==negation-removal== 83567 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #29791: <==negation-removal== 72235 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #37859: <==negation-removal== 17066 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #45492: <==negation-removal== 28405 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #60370: <==negation-removal== 96740 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #65876: <==negation-removal== 67400 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #81033: <==negation-removal== 51246 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #90940: <==negation-removal== 25354 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (at_d_p9))
        :effect (and
                    ; #17066: origin
                    (Bb_survivorat_s_p9)

                    ; #25354: origin
                    (Bd_survivorat_s_p9)

                    ; #28405: <==closure== 17066 (pos)
                    (Pb_survivorat_s_p9)

                    ; #51246: <==closure== 67400 (pos)
                    (Pa_survivorat_s_p9)

                    ; #67400: origin
                    (Ba_survivorat_s_p9)

                    ; #72235: <==closure== 83567 (pos)
                    (Pc_survivorat_s_p9)

                    ; #83567: origin
                    (Bc_survivorat_s_p9)

                    ; #96740: <==closure== 25354 (pos)
                    (Pd_survivorat_s_p9)

                    ; #29529: <==negation-removal== 83567 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #29791: <==negation-removal== 72235 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #37859: <==negation-removal== 17066 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #45492: <==negation-removal== 28405 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #60370: <==negation-removal== 96740 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #65876: <==negation-removal== 67400 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #81033: <==negation-removal== 51246 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #90940: <==negation-removal== 25354 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #25365: origin
                    (not_at_a_p10)

                    ; #81572: origin
                    (at_a_p1)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #25365: origin
                    (not_at_a_p10)

                    ; #54095: origin
                    (at_a_p10)

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #25365: origin
                    (not_at_a_p10)

                    ; #83148: origin
                    (at_a_p11)

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #25365: origin
                    (not_at_a_p10)

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #21310: origin
                    (at_a_p2)

                    ; #25365: origin
                    (not_at_a_p10)

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #25365: origin
                    (not_at_a_p10)

                    ; #63163: origin
                    (at_a_p3)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #25365: origin
                    (not_at_a_p10)

                    ; #48791: origin
                    (at_a_p4)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #25365: origin
                    (not_at_a_p10)

                    ; #81121: origin
                    (at_a_p5)

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #25365: origin
                    (not_at_a_p10)

                    ; #89741: origin
                    (at_a_p6)

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #18027: origin
                    (at_a_p7)

                    ; #25365: origin
                    (not_at_a_p10)

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #25365: origin
                    (not_at_a_p10)

                    ; #65384: origin
                    (at_a_p8)

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #25365: origin
                    (not_at_a_p10)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))

                    ; #54095: <==negation-removal== 25365 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #81572: origin
                    (at_a_p1)

                    ; #87103: origin
                    (not_at_a_p11)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #54095: origin
                    (at_a_p10)

                    ; #87103: origin
                    (not_at_a_p11)

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #83148: origin
                    (at_a_p11)

                    ; #87103: origin
                    (not_at_a_p11)

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #87103: origin
                    (not_at_a_p11)

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #21310: origin
                    (at_a_p2)

                    ; #87103: origin
                    (not_at_a_p11)

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #63163: origin
                    (at_a_p3)

                    ; #87103: origin
                    (not_at_a_p11)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #48791: origin
                    (at_a_p4)

                    ; #87103: origin
                    (not_at_a_p11)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #81121: origin
                    (at_a_p5)

                    ; #87103: origin
                    (not_at_a_p11)

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #87103: origin
                    (not_at_a_p11)

                    ; #89741: origin
                    (at_a_p6)

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #18027: origin
                    (at_a_p7)

                    ; #87103: origin
                    (not_at_a_p11)

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #65384: origin
                    (at_a_p8)

                    ; #87103: origin
                    (not_at_a_p11)

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #87103: origin
                    (not_at_a_p11)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))

                    ; #83148: <==negation-removal== 87103 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #74556: origin
                    (not_at_a_p12)

                    ; #81572: origin
                    (at_a_p1)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #54095: origin
                    (at_a_p10)

                    ; #74556: origin
                    (not_at_a_p12)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #74556: origin
                    (not_at_a_p12)

                    ; #83148: origin
                    (at_a_p11)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #74556: origin
                    (not_at_a_p12)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #21310: origin
                    (at_a_p2)

                    ; #74556: origin
                    (not_at_a_p12)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #63163: origin
                    (at_a_p3)

                    ; #74556: origin
                    (not_at_a_p12)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #48791: origin
                    (at_a_p4)

                    ; #74556: origin
                    (not_at_a_p12)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #74556: origin
                    (not_at_a_p12)

                    ; #81121: origin
                    (at_a_p5)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #74556: origin
                    (not_at_a_p12)

                    ; #89741: origin
                    (at_a_p6)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #18027: origin
                    (at_a_p7)

                    ; #74556: origin
                    (not_at_a_p12)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #65384: origin
                    (at_a_p8)

                    ; #74556: origin
                    (not_at_a_p12)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #74556: origin
                    (not_at_a_p12)

                    ; #87445: origin
                    (at_a_p9)

                    ; #11014: <==negation-removal== 74556 (pos)
                    (not (at_a_p12))

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #81572: origin
                    (at_a_p1)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #54095: origin
                    (at_a_p10)

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #83148: origin
                    (at_a_p11)

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #12305: origin
                    (not_at_a_p1)

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #21310: origin
                    (at_a_p2)

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #63163: origin
                    (at_a_p3)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #48791: origin
                    (at_a_p4)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #81121: origin
                    (at_a_p5)

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #89741: origin
                    (at_a_p6)

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #18027: origin
                    (at_a_p7)

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #65384: origin
                    (at_a_p8)

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #12305: origin
                    (not_at_a_p1)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))

                    ; #81572: <==negation-removal== 12305 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #55077: origin
                    (not_at_a_p2)

                    ; #81572: origin
                    (at_a_p1)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #54095: origin
                    (at_a_p10)

                    ; #55077: origin
                    (not_at_a_p2)

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #55077: origin
                    (not_at_a_p2)

                    ; #83148: origin
                    (at_a_p11)

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #55077: origin
                    (not_at_a_p2)

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #21310: origin
                    (at_a_p2)

                    ; #55077: origin
                    (not_at_a_p2)

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #55077: origin
                    (not_at_a_p2)

                    ; #63163: origin
                    (at_a_p3)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #48791: origin
                    (at_a_p4)

                    ; #55077: origin
                    (not_at_a_p2)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #55077: origin
                    (not_at_a_p2)

                    ; #81121: origin
                    (at_a_p5)

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #55077: origin
                    (not_at_a_p2)

                    ; #89741: origin
                    (at_a_p6)

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #18027: origin
                    (at_a_p7)

                    ; #55077: origin
                    (not_at_a_p2)

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #55077: origin
                    (not_at_a_p2)

                    ; #65384: origin
                    (at_a_p8)

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #55077: origin
                    (not_at_a_p2)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))

                    ; #21310: <==negation-removal== 55077 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #81572: origin
                    (at_a_p1)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #54095: origin
                    (at_a_p10)

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #83148: origin
                    (at_a_p11)

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #11556: origin
                    (not_at_a_p3)

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #21310: origin
                    (at_a_p2)

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #63163: origin
                    (at_a_p3)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #48791: origin
                    (at_a_p4)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #81121: origin
                    (at_a_p5)

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #89741: origin
                    (at_a_p6)

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #18027: origin
                    (at_a_p7)

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #65384: origin
                    (at_a_p8)

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #11556: origin
                    (not_at_a_p3)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))

                    ; #63163: <==negation-removal== 11556 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #81572: origin
                    (at_a_p1)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #54095: origin
                    (at_a_p10)

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #83148: origin
                    (at_a_p11)

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #15997: origin
                    (not_at_a_p4)

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #21310: origin
                    (at_a_p2)

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #63163: origin
                    (at_a_p3)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #48791: origin
                    (at_a_p4)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #81121: origin
                    (at_a_p5)

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #89741: origin
                    (at_a_p6)

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #18027: origin
                    (at_a_p7)

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #65384: origin
                    (at_a_p8)

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #15997: origin
                    (not_at_a_p4)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))

                    ; #48791: <==negation-removal== 15997 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #70356: origin
                    (not_at_a_p5)

                    ; #81572: origin
                    (at_a_p1)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #54095: origin
                    (at_a_p10)

                    ; #70356: origin
                    (not_at_a_p5)

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #70356: origin
                    (not_at_a_p5)

                    ; #83148: origin
                    (at_a_p11)

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #70356: origin
                    (not_at_a_p5)

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #21310: origin
                    (at_a_p2)

                    ; #70356: origin
                    (not_at_a_p5)

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #63163: origin
                    (at_a_p3)

                    ; #70356: origin
                    (not_at_a_p5)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #48791: origin
                    (at_a_p4)

                    ; #70356: origin
                    (not_at_a_p5)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #70356: origin
                    (not_at_a_p5)

                    ; #81121: origin
                    (at_a_p5)

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #70356: origin
                    (not_at_a_p5)

                    ; #89741: origin
                    (at_a_p6)

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #18027: origin
                    (at_a_p7)

                    ; #70356: origin
                    (not_at_a_p5)

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #65384: origin
                    (at_a_p8)

                    ; #70356: origin
                    (not_at_a_p5)

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #70356: origin
                    (not_at_a_p5)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))

                    ; #81121: <==negation-removal== 70356 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #69920: origin
                    (not_at_a_p6)

                    ; #81572: origin
                    (at_a_p1)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #54095: origin
                    (at_a_p10)

                    ; #69920: origin
                    (not_at_a_p6)

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #69920: origin
                    (not_at_a_p6)

                    ; #83148: origin
                    (at_a_p11)

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #69920: origin
                    (not_at_a_p6)

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #21310: origin
                    (at_a_p2)

                    ; #69920: origin
                    (not_at_a_p6)

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #63163: origin
                    (at_a_p3)

                    ; #69920: origin
                    (not_at_a_p6)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #48791: origin
                    (at_a_p4)

                    ; #69920: origin
                    (not_at_a_p6)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #69920: origin
                    (not_at_a_p6)

                    ; #81121: origin
                    (at_a_p5)

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #69920: origin
                    (not_at_a_p6)

                    ; #89741: origin
                    (at_a_p6)

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #18027: origin
                    (at_a_p7)

                    ; #69920: origin
                    (not_at_a_p6)

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #65384: origin
                    (at_a_p8)

                    ; #69920: origin
                    (not_at_a_p6)

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #69920: origin
                    (not_at_a_p6)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))

                    ; #89741: <==negation-removal== 69920 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #23936: origin
                    (not_at_a_p7)

                    ; #81572: origin
                    (at_a_p1)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #23936: origin
                    (not_at_a_p7)

                    ; #54095: origin
                    (at_a_p10)

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #23936: origin
                    (not_at_a_p7)

                    ; #83148: origin
                    (at_a_p11)

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #23936: origin
                    (not_at_a_p7)

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #21310: origin
                    (at_a_p2)

                    ; #23936: origin
                    (not_at_a_p7)

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #23936: origin
                    (not_at_a_p7)

                    ; #63163: origin
                    (at_a_p3)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #23936: origin
                    (not_at_a_p7)

                    ; #48791: origin
                    (at_a_p4)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #23936: origin
                    (not_at_a_p7)

                    ; #81121: origin
                    (at_a_p5)

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #23936: origin
                    (not_at_a_p7)

                    ; #89741: origin
                    (at_a_p6)

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #18027: origin
                    (at_a_p7)

                    ; #23936: origin
                    (not_at_a_p7)

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #23936: origin
                    (not_at_a_p7)

                    ; #65384: origin
                    (at_a_p8)

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #23936: origin
                    (not_at_a_p7)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18027: <==negation-removal== 23936 (pos)
                    (not (at_a_p7))

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #24027: origin
                    (not_at_a_p8)

                    ; #81572: origin
                    (at_a_p1)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #24027: origin
                    (not_at_a_p8)

                    ; #54095: origin
                    (at_a_p10)

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #24027: origin
                    (not_at_a_p8)

                    ; #83148: origin
                    (at_a_p11)

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #24027: origin
                    (not_at_a_p8)

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #21310: origin
                    (at_a_p2)

                    ; #24027: origin
                    (not_at_a_p8)

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #24027: origin
                    (not_at_a_p8)

                    ; #63163: origin
                    (at_a_p3)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #24027: origin
                    (not_at_a_p8)

                    ; #48791: origin
                    (at_a_p4)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #24027: origin
                    (not_at_a_p8)

                    ; #81121: origin
                    (at_a_p5)

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #24027: origin
                    (not_at_a_p8)

                    ; #89741: origin
                    (at_a_p6)

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #18027: origin
                    (at_a_p7)

                    ; #24027: origin
                    (not_at_a_p8)

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #24027: origin
                    (not_at_a_p8)

                    ; #65384: origin
                    (at_a_p8)

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #24027: origin
                    (not_at_a_p8)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))

                    ; #65384: <==negation-removal== 24027 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #18856: origin
                    (not_at_a_p9)

                    ; #81572: origin
                    (at_a_p1)

                    ; #12305: <==negation-removal== 81572 (pos)
                    (not (not_at_a_p1))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #18856: origin
                    (not_at_a_p9)

                    ; #54095: origin
                    (at_a_p10)

                    ; #25365: <==negation-removal== 54095 (pos)
                    (not (not_at_a_p10))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #18856: origin
                    (not_at_a_p9)

                    ; #83148: origin
                    (at_a_p11)

                    ; #87103: <==negation-removal== 83148 (pos)
                    (not (not_at_a_p11))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #11014: origin
                    (at_a_p12)

                    ; #18856: origin
                    (not_at_a_p9)

                    ; #74556: <==negation-removal== 11014 (pos)
                    (not (not_at_a_p12))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #18856: origin
                    (not_at_a_p9)

                    ; #21310: origin
                    (at_a_p2)

                    ; #55077: <==negation-removal== 21310 (pos)
                    (not (not_at_a_p2))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #18856: origin
                    (not_at_a_p9)

                    ; #63163: origin
                    (at_a_p3)

                    ; #11556: <==negation-removal== 63163 (pos)
                    (not (not_at_a_p3))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #18856: origin
                    (not_at_a_p9)

                    ; #48791: origin
                    (at_a_p4)

                    ; #15997: <==negation-removal== 48791 (pos)
                    (not (not_at_a_p4))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #18856: origin
                    (not_at_a_p9)

                    ; #81121: origin
                    (at_a_p5)

                    ; #70356: <==negation-removal== 81121 (pos)
                    (not (not_at_a_p5))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #18856: origin
                    (not_at_a_p9)

                    ; #89741: origin
                    (at_a_p6)

                    ; #69920: <==negation-removal== 89741 (pos)
                    (not (not_at_a_p6))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #18027: origin
                    (at_a_p7)

                    ; #18856: origin
                    (not_at_a_p9)

                    ; #23936: <==negation-removal== 18027 (pos)
                    (not (not_at_a_p7))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #18856: origin
                    (not_at_a_p9)

                    ; #65384: origin
                    (at_a_p8)

                    ; #24027: <==negation-removal== 65384 (pos)
                    (not (not_at_a_p8))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #18856: origin
                    (not_at_a_p9)

                    ; #87445: origin
                    (at_a_p9)

                    ; #18856: <==negation-removal== 87445 (pos)
                    (not (not_at_a_p9))

                    ; #87445: <==negation-removal== 18856 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #21122: origin
                    (not_at_b_p10)

                    ; #40813: origin
                    (at_b_p1)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #21122: origin
                    (not_at_b_p10)

                    ; #22451: origin
                    (at_b_p10)

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #21122: origin
                    (not_at_b_p10)

                    ; #53600: origin
                    (at_b_p11)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #21122: origin
                    (not_at_b_p10)

                    ; #48647: origin
                    (at_b_p12)

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #21122: origin
                    (not_at_b_p10)

                    ; #58251: origin
                    (at_b_p2)

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #21122: origin
                    (not_at_b_p10)

                    ; #61998: origin
                    (at_b_p3)

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #21122: origin
                    (not_at_b_p10)

                    ; #30336: origin
                    (at_b_p4)

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #21122: origin
                    (not_at_b_p10)

                    ; #52634: origin
                    (at_b_p5)

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #21122: origin
                    (not_at_b_p10)

                    ; #89494: origin
                    (at_b_p6)

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #21014: origin
                    (at_b_p7)

                    ; #21122: origin
                    (not_at_b_p10)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #20288: origin
                    (at_b_p8)

                    ; #21122: origin
                    (not_at_b_p10)

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #21122: origin
                    (not_at_b_p10)

                    ; #42714: origin
                    (at_b_p9)

                    ; #22451: <==negation-removal== 21122 (pos)
                    (not (at_b_p10))

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #40813: origin
                    (at_b_p1)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #22451: origin
                    (at_b_p10)

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #53600: origin
                    (at_b_p11)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #48647: origin
                    (at_b_p12)

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #58251: origin
                    (at_b_p2)

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #61998: origin
                    (at_b_p3)

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #30336: origin
                    (at_b_p4)

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #52634: origin
                    (at_b_p5)

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #89494: origin
                    (at_b_p6)

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #21014: origin
                    (at_b_p7)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #20288: origin
                    (at_b_p8)

                    ; #20364: origin
                    (not_at_b_p11)

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #20364: origin
                    (not_at_b_p11)

                    ; #42714: origin
                    (at_b_p9)

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))

                    ; #53600: <==negation-removal== 20364 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #40525: origin
                    (not_at_b_p12)

                    ; #40813: origin
                    (at_b_p1)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #22451: origin
                    (at_b_p10)

                    ; #40525: origin
                    (not_at_b_p12)

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #40525: origin
                    (not_at_b_p12)

                    ; #53600: origin
                    (at_b_p11)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #40525: origin
                    (not_at_b_p12)

                    ; #48647: origin
                    (at_b_p12)

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #40525: origin
                    (not_at_b_p12)

                    ; #58251: origin
                    (at_b_p2)

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #40525: origin
                    (not_at_b_p12)

                    ; #61998: origin
                    (at_b_p3)

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #30336: origin
                    (at_b_p4)

                    ; #40525: origin
                    (not_at_b_p12)

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #40525: origin
                    (not_at_b_p12)

                    ; #52634: origin
                    (at_b_p5)

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #40525: origin
                    (not_at_b_p12)

                    ; #89494: origin
                    (at_b_p6)

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #21014: origin
                    (at_b_p7)

                    ; #40525: origin
                    (not_at_b_p12)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #20288: origin
                    (at_b_p8)

                    ; #40525: origin
                    (not_at_b_p12)

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #40525: origin
                    (not_at_b_p12)

                    ; #42714: origin
                    (at_b_p9)

                    ; #48647: <==negation-removal== 40525 (pos)
                    (not (at_b_p12))

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #40813: origin
                    (at_b_p1)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #22451: origin
                    (at_b_p10)

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #53600: origin
                    (at_b_p11)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #48647: origin
                    (at_b_p12)

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #58251: origin
                    (at_b_p2)

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #61998: origin
                    (at_b_p3)

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #30336: origin
                    (at_b_p4)

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #52634: origin
                    (at_b_p5)

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #89494: origin
                    (at_b_p6)

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #21014: origin
                    (at_b_p7)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #20288: origin
                    (at_b_p8)

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #10760: origin
                    (not_at_b_p1)

                    ; #42714: origin
                    (at_b_p9)

                    ; #40813: <==negation-removal== 10760 (pos)
                    (not (at_b_p1))

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #40813: origin
                    (at_b_p1)

                    ; #44448: origin
                    (not_at_b_p2)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #22451: origin
                    (at_b_p10)

                    ; #44448: origin
                    (not_at_b_p2)

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #44448: origin
                    (not_at_b_p2)

                    ; #53600: origin
                    (at_b_p11)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #44448: origin
                    (not_at_b_p2)

                    ; #48647: origin
                    (at_b_p12)

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #44448: origin
                    (not_at_b_p2)

                    ; #58251: origin
                    (at_b_p2)

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #44448: origin
                    (not_at_b_p2)

                    ; #61998: origin
                    (at_b_p3)

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #30336: origin
                    (at_b_p4)

                    ; #44448: origin
                    (not_at_b_p2)

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #44448: origin
                    (not_at_b_p2)

                    ; #52634: origin
                    (at_b_p5)

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #44448: origin
                    (not_at_b_p2)

                    ; #89494: origin
                    (at_b_p6)

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #21014: origin
                    (at_b_p7)

                    ; #44448: origin
                    (not_at_b_p2)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #20288: origin
                    (at_b_p8)

                    ; #44448: origin
                    (not_at_b_p2)

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #42714: origin
                    (at_b_p9)

                    ; #44448: origin
                    (not_at_b_p2)

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))

                    ; #58251: <==negation-removal== 44448 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #40813: origin
                    (at_b_p1)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #22451: origin
                    (at_b_p10)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #53600: origin
                    (at_b_p11)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #48647: origin
                    (at_b_p12)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #58251: origin
                    (at_b_p2)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #61998: origin
                    (at_b_p3)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #30336: origin
                    (at_b_p4)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #52634: origin
                    (at_b_p5)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #80486: origin
                    (not_at_b_p3)

                    ; #89494: origin
                    (at_b_p6)

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #21014: origin
                    (at_b_p7)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #20288: origin
                    (at_b_p8)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #42714: origin
                    (at_b_p9)

                    ; #80486: origin
                    (not_at_b_p3)

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))

                    ; #61998: <==negation-removal== 80486 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #40813: origin
                    (at_b_p1)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #22451: origin
                    (at_b_p10)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #53600: origin
                    (at_b_p11)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #48647: origin
                    (at_b_p12)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #58251: origin
                    (at_b_p2)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #61998: origin
                    (at_b_p3)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #30336: origin
                    (at_b_p4)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #52634: origin
                    (at_b_p5)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #66670: origin
                    (not_at_b_p4)

                    ; #89494: origin
                    (at_b_p6)

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #21014: origin
                    (at_b_p7)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #20288: origin
                    (at_b_p8)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #42714: origin
                    (at_b_p9)

                    ; #66670: origin
                    (not_at_b_p4)

                    ; #30336: <==negation-removal== 66670 (pos)
                    (not (at_b_p4))

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #40813: origin
                    (at_b_p1)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #22451: origin
                    (at_b_p10)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #53600: origin
                    (at_b_p11)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #48647: origin
                    (at_b_p12)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #58251: origin
                    (at_b_p2)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #61998: origin
                    (at_b_p3)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #30336: origin
                    (at_b_p4)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #52634: origin
                    (at_b_p5)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #79288: origin
                    (not_at_b_p5)

                    ; #89494: origin
                    (at_b_p6)

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #21014: origin
                    (at_b_p7)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #20288: origin
                    (at_b_p8)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #42714: origin
                    (at_b_p9)

                    ; #79288: origin
                    (not_at_b_p5)

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))

                    ; #52634: <==negation-removal== 79288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #40813: origin
                    (at_b_p1)

                    ; #42218: origin
                    (not_at_b_p6)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #22451: origin
                    (at_b_p10)

                    ; #42218: origin
                    (not_at_b_p6)

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #42218: origin
                    (not_at_b_p6)

                    ; #53600: origin
                    (at_b_p11)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #42218: origin
                    (not_at_b_p6)

                    ; #48647: origin
                    (at_b_p12)

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #42218: origin
                    (not_at_b_p6)

                    ; #58251: origin
                    (at_b_p2)

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #42218: origin
                    (not_at_b_p6)

                    ; #61998: origin
                    (at_b_p3)

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #30336: origin
                    (at_b_p4)

                    ; #42218: origin
                    (not_at_b_p6)

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #42218: origin
                    (not_at_b_p6)

                    ; #52634: origin
                    (at_b_p5)

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #42218: origin
                    (not_at_b_p6)

                    ; #89494: origin
                    (at_b_p6)

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #21014: origin
                    (at_b_p7)

                    ; #42218: origin
                    (not_at_b_p6)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #20288: origin
                    (at_b_p8)

                    ; #42218: origin
                    (not_at_b_p6)

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #42218: origin
                    (not_at_b_p6)

                    ; #42714: origin
                    (at_b_p9)

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))

                    ; #89494: <==negation-removal== 42218 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #40813: origin
                    (at_b_p1)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #22451: origin
                    (at_b_p10)

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #53600: origin
                    (at_b_p11)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #48647: origin
                    (at_b_p12)

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #58251: origin
                    (at_b_p2)

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #61998: origin
                    (at_b_p3)

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #30336: origin
                    (at_b_p4)

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #52634: origin
                    (at_b_p5)

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #89494: origin
                    (at_b_p6)

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #21014: origin
                    (at_b_p7)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #20288: origin
                    (at_b_p8)

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #12662: origin
                    (not_at_b_p7)

                    ; #42714: origin
                    (at_b_p9)

                    ; #21014: <==negation-removal== 12662 (pos)
                    (not (at_b_p7))

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #40813: origin
                    (at_b_p1)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #22451: origin
                    (at_b_p10)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #53600: origin
                    (at_b_p11)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #48647: origin
                    (at_b_p12)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #58251: origin
                    (at_b_p2)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #61998: origin
                    (at_b_p3)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #30336: origin
                    (at_b_p4)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #52634: origin
                    (at_b_p5)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #89494: origin
                    (at_b_p6)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #21014: origin
                    (at_b_p7)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #20288: origin
                    (at_b_p8)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #42714: origin
                    (at_b_p9)

                    ; #92133: origin
                    (not_at_b_p8)

                    ; #20288: <==negation-removal== 92133 (pos)
                    (not (at_b_p8))

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #40813: origin
                    (at_b_p1)

                    ; #48980: origin
                    (not_at_b_p9)

                    ; #10760: <==negation-removal== 40813 (pos)
                    (not (not_at_b_p1))

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #22451: origin
                    (at_b_p10)

                    ; #48980: origin
                    (not_at_b_p9)

                    ; #21122: <==negation-removal== 22451 (pos)
                    (not (not_at_b_p10))

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #48980: origin
                    (not_at_b_p9)

                    ; #53600: origin
                    (at_b_p11)

                    ; #20364: <==negation-removal== 53600 (pos)
                    (not (not_at_b_p11))

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #48647: origin
                    (at_b_p12)

                    ; #48980: origin
                    (not_at_b_p9)

                    ; #40525: <==negation-removal== 48647 (pos)
                    (not (not_at_b_p12))

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #48980: origin
                    (not_at_b_p9)

                    ; #58251: origin
                    (at_b_p2)

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))

                    ; #44448: <==negation-removal== 58251 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #48980: origin
                    (not_at_b_p9)

                    ; #61998: origin
                    (at_b_p3)

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))

                    ; #80486: <==negation-removal== 61998 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #30336: origin
                    (at_b_p4)

                    ; #48980: origin
                    (not_at_b_p9)

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))

                    ; #66670: <==negation-removal== 30336 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #48980: origin
                    (not_at_b_p9)

                    ; #52634: origin
                    (at_b_p5)

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))

                    ; #79288: <==negation-removal== 52634 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #48980: origin
                    (not_at_b_p9)

                    ; #89494: origin
                    (at_b_p6)

                    ; #42218: <==negation-removal== 89494 (pos)
                    (not (not_at_b_p6))

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #21014: origin
                    (at_b_p7)

                    ; #48980: origin
                    (not_at_b_p9)

                    ; #12662: <==negation-removal== 21014 (pos)
                    (not (not_at_b_p7))

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #20288: origin
                    (at_b_p8)

                    ; #48980: origin
                    (not_at_b_p9)

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))

                    ; #92133: <==negation-removal== 20288 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #42714: origin
                    (at_b_p9)

                    ; #48980: origin
                    (not_at_b_p9)

                    ; #42714: <==negation-removal== 48980 (pos)
                    (not (at_b_p9))

                    ; #48980: <==negation-removal== 42714 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #20723: origin
                    (at_c_p1)

                    ; #55289: origin
                    (not_at_c_p10)

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #36241: origin
                    (at_c_p10)

                    ; #55289: origin
                    (not_at_c_p10)

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #42081: origin
                    (at_c_p11)

                    ; #55289: origin
                    (not_at_c_p10)

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #55289: origin
                    (not_at_c_p10)

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #55289: origin
                    (not_at_c_p10)

                    ; #61140: origin
                    (at_c_p2)

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #55289: origin
                    (not_at_c_p10)

                    ; #77168: origin
                    (at_c_p3)

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #24468: origin
                    (at_c_p4)

                    ; #55289: origin
                    (not_at_c_p10)

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #49840: origin
                    (at_c_p5)

                    ; #55289: origin
                    (not_at_c_p10)

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #55289: origin
                    (not_at_c_p10)

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #34500: origin
                    (at_c_p7)

                    ; #55289: origin
                    (not_at_c_p10)

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #55289: origin
                    (not_at_c_p10)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #55289: origin
                    (not_at_c_p10)

                    ; #36241: <==negation-removal== 55289 (pos)
                    (not (at_c_p10))

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #19383: origin
                    (not_at_c_p11)

                    ; #20723: origin
                    (at_c_p1)

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #19383: origin
                    (not_at_c_p11)

                    ; #36241: origin
                    (at_c_p10)

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #19383: origin
                    (not_at_c_p11)

                    ; #42081: origin
                    (at_c_p11)

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #19383: origin
                    (not_at_c_p11)

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #19383: origin
                    (not_at_c_p11)

                    ; #61140: origin
                    (at_c_p2)

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #19383: origin
                    (not_at_c_p11)

                    ; #77168: origin
                    (at_c_p3)

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #19383: origin
                    (not_at_c_p11)

                    ; #24468: origin
                    (at_c_p4)

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #19383: origin
                    (not_at_c_p11)

                    ; #49840: origin
                    (at_c_p5)

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #19383: origin
                    (not_at_c_p11)

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #19383: origin
                    (not_at_c_p11)

                    ; #34500: origin
                    (at_c_p7)

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #19383: origin
                    (not_at_c_p11)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #19383: origin
                    (not_at_c_p11)

                    ; #42081: <==negation-removal== 19383 (pos)
                    (not (at_c_p11))

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #20723: origin
                    (at_c_p1)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #36241: origin
                    (at_c_p10)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #42081: origin
                    (at_c_p11)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #61140: origin
                    (at_c_p2)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #77168: origin
                    (at_c_p3)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #24468: origin
                    (at_c_p4)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #49840: origin
                    (at_c_p5)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #34500: origin
                    (at_c_p7)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #73059: origin
                    (at_c_p8)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #83639: origin
                    (not_at_c_p12)

                    ; #13067: <==negation-removal== 83639 (pos)
                    (not (at_c_p12))

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #20723: origin
                    (at_c_p1)

                    ; #43696: origin
                    (not_at_c_p1)

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #36241: origin
                    (at_c_p10)

                    ; #43696: origin
                    (not_at_c_p1)

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #42081: origin
                    (at_c_p11)

                    ; #43696: origin
                    (not_at_c_p1)

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #43696: origin
                    (not_at_c_p1)

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #43696: origin
                    (not_at_c_p1)

                    ; #61140: origin
                    (at_c_p2)

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #43696: origin
                    (not_at_c_p1)

                    ; #77168: origin
                    (at_c_p3)

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #24468: origin
                    (at_c_p4)

                    ; #43696: origin
                    (not_at_c_p1)

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #43696: origin
                    (not_at_c_p1)

                    ; #49840: origin
                    (at_c_p5)

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #43696: origin
                    (not_at_c_p1)

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #34500: origin
                    (at_c_p7)

                    ; #43696: origin
                    (not_at_c_p1)

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #43696: origin
                    (not_at_c_p1)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #43696: origin
                    (not_at_c_p1)

                    ; #20723: <==negation-removal== 43696 (pos)
                    (not (at_c_p1))

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #20723: origin
                    (at_c_p1)

                    ; #49294: origin
                    (not_at_c_p2)

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #36241: origin
                    (at_c_p10)

                    ; #49294: origin
                    (not_at_c_p2)

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #42081: origin
                    (at_c_p11)

                    ; #49294: origin
                    (not_at_c_p2)

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #49294: origin
                    (not_at_c_p2)

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #49294: origin
                    (not_at_c_p2)

                    ; #61140: origin
                    (at_c_p2)

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #49294: origin
                    (not_at_c_p2)

                    ; #77168: origin
                    (at_c_p3)

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #24468: origin
                    (at_c_p4)

                    ; #49294: origin
                    (not_at_c_p2)

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #49294: origin
                    (not_at_c_p2)

                    ; #49840: origin
                    (at_c_p5)

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #49294: origin
                    (not_at_c_p2)

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #34500: origin
                    (at_c_p7)

                    ; #49294: origin
                    (not_at_c_p2)

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #49294: origin
                    (not_at_c_p2)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #49294: origin
                    (not_at_c_p2)

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))

                    ; #61140: <==negation-removal== 49294 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #20723: origin
                    (at_c_p1)

                    ; #32242: origin
                    (not_at_c_p3)

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #32242: origin
                    (not_at_c_p3)

                    ; #36241: origin
                    (at_c_p10)

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #32242: origin
                    (not_at_c_p3)

                    ; #42081: origin
                    (at_c_p11)

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #32242: origin
                    (not_at_c_p3)

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #32242: origin
                    (not_at_c_p3)

                    ; #61140: origin
                    (at_c_p2)

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #32242: origin
                    (not_at_c_p3)

                    ; #77168: origin
                    (at_c_p3)

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #24468: origin
                    (at_c_p4)

                    ; #32242: origin
                    (not_at_c_p3)

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #32242: origin
                    (not_at_c_p3)

                    ; #49840: origin
                    (at_c_p5)

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #32242: origin
                    (not_at_c_p3)

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #32242: origin
                    (not_at_c_p3)

                    ; #34500: origin
                    (at_c_p7)

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #32242: origin
                    (not_at_c_p3)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #32242: origin
                    (not_at_c_p3)

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))

                    ; #77168: <==negation-removal== 32242 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #20723: origin
                    (at_c_p1)

                    ; #34439: origin
                    (not_at_c_p4)

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #34439: origin
                    (not_at_c_p4)

                    ; #36241: origin
                    (at_c_p10)

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #34439: origin
                    (not_at_c_p4)

                    ; #42081: origin
                    (at_c_p11)

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #34439: origin
                    (not_at_c_p4)

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #34439: origin
                    (not_at_c_p4)

                    ; #61140: origin
                    (at_c_p2)

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #34439: origin
                    (not_at_c_p4)

                    ; #77168: origin
                    (at_c_p3)

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #24468: origin
                    (at_c_p4)

                    ; #34439: origin
                    (not_at_c_p4)

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #34439: origin
                    (not_at_c_p4)

                    ; #49840: origin
                    (at_c_p5)

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #34439: origin
                    (not_at_c_p4)

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #34439: origin
                    (not_at_c_p4)

                    ; #34500: origin
                    (at_c_p7)

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #34439: origin
                    (not_at_c_p4)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #34439: origin
                    (not_at_c_p4)

                    ; #24468: <==negation-removal== 34439 (pos)
                    (not (at_c_p4))

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #20723: origin
                    (at_c_p1)

                    ; #28714: origin
                    (not_at_c_p5)

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #28714: origin
                    (not_at_c_p5)

                    ; #36241: origin
                    (at_c_p10)

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #28714: origin
                    (not_at_c_p5)

                    ; #42081: origin
                    (at_c_p11)

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #28714: origin
                    (not_at_c_p5)

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #28714: origin
                    (not_at_c_p5)

                    ; #61140: origin
                    (at_c_p2)

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #28714: origin
                    (not_at_c_p5)

                    ; #77168: origin
                    (at_c_p3)

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #24468: origin
                    (at_c_p4)

                    ; #28714: origin
                    (not_at_c_p5)

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #28714: origin
                    (not_at_c_p5)

                    ; #49840: origin
                    (at_c_p5)

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #28714: origin
                    (not_at_c_p5)

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #28714: origin
                    (not_at_c_p5)

                    ; #34500: origin
                    (at_c_p7)

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #28714: origin
                    (not_at_c_p5)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #28714: origin
                    (not_at_c_p5)

                    ; #49840: <==negation-removal== 28714 (pos)
                    (not (at_c_p5))

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #20723: origin
                    (at_c_p1)

                    ; #41679: origin
                    (not_at_c_p6)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #36241: origin
                    (at_c_p10)

                    ; #41679: origin
                    (not_at_c_p6)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #41679: origin
                    (not_at_c_p6)

                    ; #42081: origin
                    (at_c_p11)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #41679: origin
                    (not_at_c_p6)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #41679: origin
                    (not_at_c_p6)

                    ; #61140: origin
                    (at_c_p2)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #41679: origin
                    (not_at_c_p6)

                    ; #77168: origin
                    (at_c_p3)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #24468: origin
                    (at_c_p4)

                    ; #41679: origin
                    (not_at_c_p6)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #41679: origin
                    (not_at_c_p6)

                    ; #49840: origin
                    (at_c_p5)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #41679: origin
                    (not_at_c_p6)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #34500: origin
                    (at_c_p7)

                    ; #41679: origin
                    (not_at_c_p6)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #41679: origin
                    (not_at_c_p6)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #41679: origin
                    (not_at_c_p6)

                    ; #13799: <==negation-removal== 41679 (pos)
                    (not (at_c_p6))

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #20723: origin
                    (at_c_p1)

                    ; #53685: origin
                    (not_at_c_p7)

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #36241: origin
                    (at_c_p10)

                    ; #53685: origin
                    (not_at_c_p7)

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #42081: origin
                    (at_c_p11)

                    ; #53685: origin
                    (not_at_c_p7)

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #53685: origin
                    (not_at_c_p7)

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #53685: origin
                    (not_at_c_p7)

                    ; #61140: origin
                    (at_c_p2)

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #53685: origin
                    (not_at_c_p7)

                    ; #77168: origin
                    (at_c_p3)

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #24468: origin
                    (at_c_p4)

                    ; #53685: origin
                    (not_at_c_p7)

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #49840: origin
                    (at_c_p5)

                    ; #53685: origin
                    (not_at_c_p7)

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #53685: origin
                    (not_at_c_p7)

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #34500: origin
                    (at_c_p7)

                    ; #53685: origin
                    (not_at_c_p7)

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #53685: origin
                    (not_at_c_p7)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #53685: origin
                    (not_at_c_p7)

                    ; #34500: <==negation-removal== 53685 (pos)
                    (not (at_c_p7))

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #20723: origin
                    (at_c_p1)

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #36241: origin
                    (at_c_p10)

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #42081: origin
                    (at_c_p11)

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #13067: origin
                    (at_c_p12)

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #61140: origin
                    (at_c_p2)

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #77168: origin
                    (at_c_p3)

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #24468: origin
                    (at_c_p4)

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #49840: origin
                    (at_c_p5)

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #13799: origin
                    (at_c_p6)

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #34500: origin
                    (at_c_p7)

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #10997: origin
                    (not_at_c_p8)

                    ; #14307: origin
                    (at_c_p9)

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))

                    ; #73059: <==negation-removal== 10997 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #20723: origin
                    (at_c_p1)

                    ; #58013: origin
                    (not_at_c_p9)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #43696: <==negation-removal== 20723 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #36241: origin
                    (at_c_p10)

                    ; #58013: origin
                    (not_at_c_p9)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #55289: <==negation-removal== 36241 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #42081: origin
                    (at_c_p11)

                    ; #58013: origin
                    (not_at_c_p9)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #19383: <==negation-removal== 42081 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #13067: origin
                    (at_c_p12)

                    ; #58013: origin
                    (not_at_c_p9)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #83639: <==negation-removal== 13067 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #58013: origin
                    (not_at_c_p9)

                    ; #61140: origin
                    (at_c_p2)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #49294: <==negation-removal== 61140 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #58013: origin
                    (not_at_c_p9)

                    ; #77168: origin
                    (at_c_p3)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #32242: <==negation-removal== 77168 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #24468: origin
                    (at_c_p4)

                    ; #58013: origin
                    (not_at_c_p9)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #34439: <==negation-removal== 24468 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #49840: origin
                    (at_c_p5)

                    ; #58013: origin
                    (not_at_c_p9)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #28714: <==negation-removal== 49840 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #13799: origin
                    (at_c_p6)

                    ; #58013: origin
                    (not_at_c_p9)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #41679: <==negation-removal== 13799 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #34500: origin
                    (at_c_p7)

                    ; #58013: origin
                    (not_at_c_p9)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #53685: <==negation-removal== 34500 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #58013: origin
                    (not_at_c_p9)

                    ; #73059: origin
                    (at_c_p8)

                    ; #10997: <==negation-removal== 73059 (pos)
                    (not (not_at_c_p8))

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #14307: origin
                    (at_c_p9)

                    ; #58013: origin
                    (not_at_c_p9)

                    ; #14307: <==negation-removal== 58013 (pos)
                    (not (at_c_p9))

                    ; #58013: <==negation-removal== 14307 (pos)
                    (not (not_at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_d_p10))
        :effect (and
                    ; #20813: origin
                    (at_d_p1)

                    ; #70582: origin
                    (not_at_d_p10)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p10
        :precondition (and (at_d_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #24429: origin
                    (at_d_p10)

                    ; #70582: origin
                    (not_at_d_p10)

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (at_d_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #70582: origin
                    (not_at_d_p10)

                    ; #89160: origin
                    (at_d_p11)

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_d_p10))
        :effect (and
                    ; #69019: origin
                    (at_d_p12)

                    ; #70582: origin
                    (not_at_d_p10)

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p10_p2
        :precondition (and (at_d_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #70582: origin
                    (not_at_d_p10)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p3
        :precondition (and (at_d_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #70582: origin
                    (not_at_d_p10)

                    ; #73736: origin
                    (at_d_p3)

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_d_p10))
        :effect (and
                    ; #26460: origin
                    (at_d_p4)

                    ; #70582: origin
                    (not_at_d_p10)

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_d_p10))
        :effect (and
                    ; #24530: origin
                    (at_d_p5)

                    ; #70582: origin
                    (not_at_d_p10)

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p10_p6
        :precondition (and (at_d_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #33831: origin
                    (at_d_p6)

                    ; #70582: origin
                    (not_at_d_p10)

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_d_p10))
        :effect (and
                    ; #15444: origin
                    (at_d_p7)

                    ; #70582: origin
                    (not_at_d_p10)

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #19180: origin
                    (at_d_p8)

                    ; #70582: origin
                    (not_at_d_p10)

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_d_p10))
        :effect (and
                    ; #22630: origin
                    (at_d_p9)

                    ; #70582: origin
                    (not_at_d_p10)

                    ; #24429: <==negation-removal== 70582 (pos)
                    (not (at_d_p10))

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p11_p1
        :precondition (and (at_d_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #20813: origin
                    (at_d_p1)

                    ; #33370: origin
                    (not_at_d_p11)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p10
        :precondition (and (at_d_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #24429: origin
                    (at_d_p10)

                    ; #33370: origin
                    (not_at_d_p11)

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_d_p11))
        :effect (and
                    ; #33370: origin
                    (not_at_d_p11)

                    ; #89160: origin
                    (at_d_p11)

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (at_d_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #33370: origin
                    (not_at_d_p11)

                    ; #69019: origin
                    (at_d_p12)

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_d_p11))
        :effect (and
                    ; #33370: origin
                    (not_at_d_p11)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_d_p11))
        :effect (and
                    ; #33370: origin
                    (not_at_d_p11)

                    ; #73736: origin
                    (at_d_p3)

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11))
        :effect (and
                    ; #26460: origin
                    (at_d_p4)

                    ; #33370: origin
                    (not_at_d_p11)

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p5
        :precondition (and (at_d_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #24530: origin
                    (at_d_p5)

                    ; #33370: origin
                    (not_at_d_p11)

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p6
        :precondition (and (at_d_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #33370: origin
                    (not_at_d_p11)

                    ; #33831: origin
                    (at_d_p6)

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_d_p11))
        :effect (and
                    ; #15444: origin
                    (at_d_p7)

                    ; #33370: origin
                    (not_at_d_p11)

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_d_p11))
        :effect (and
                    ; #19180: origin
                    (at_d_p8)

                    ; #33370: origin
                    (not_at_d_p11)

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_d_p11))
        :effect (and
                    ; #22630: origin
                    (at_d_p9)

                    ; #33370: origin
                    (not_at_d_p11)

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))

                    ; #89160: <==negation-removal== 33370 (pos)
                    (not (at_d_p11))))

    (:action move_d_p12_p1
        :precondition (and (at_d_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #20813: origin
                    (at_d_p1)

                    ; #67176: origin
                    (not_at_d_p12)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p10
        :precondition (and (at_d_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #24429: origin
                    (at_d_p10)

                    ; #67176: origin
                    (not_at_d_p12)

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #67176: origin
                    (not_at_d_p12)

                    ; #89160: origin
                    (at_d_p11)

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p12
        :precondition (and (at_d_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #67176: origin
                    (not_at_d_p12)

                    ; #69019: origin
                    (at_d_p12)

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (at_d_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #67176: origin
                    (not_at_d_p12)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p3
        :precondition (and (at_d_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #67176: origin
                    (not_at_d_p12)

                    ; #73736: origin
                    (at_d_p3)

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p4
        :precondition (and (at_d_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #26460: origin
                    (at_d_p4)

                    ; #67176: origin
                    (not_at_d_p12)

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p5
        :precondition (and (at_d_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #24530: origin
                    (at_d_p5)

                    ; #67176: origin
                    (not_at_d_p12)

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p6
        :precondition (and (at_d_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #33831: origin
                    (at_d_p6)

                    ; #67176: origin
                    (not_at_d_p12)

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p7
        :precondition (and (at_d_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #15444: origin
                    (at_d_p7)

                    ; #67176: origin
                    (not_at_d_p12)

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p8
        :precondition (and (at_d_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #19180: origin
                    (at_d_p8)

                    ; #67176: origin
                    (not_at_d_p12)

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p9
        :precondition (and (at_d_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #22630: origin
                    (at_d_p9)

                    ; #67176: origin
                    (not_at_d_p12)

                    ; #69019: <==negation-removal== 67176 (pos)
                    (not (at_d_p12))

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #20813: origin
                    (at_d_p1)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (at_d_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #24429: origin
                    (at_d_p10)

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_d_p1))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #89160: origin
                    (at_d_p11)

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p1_p12
        :precondition (and (at_d_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #69019: origin
                    (at_d_p12)

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #73736: origin
                    (at_d_p3)

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #26460: origin
                    (at_d_p4)

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #24530: origin
                    (at_d_p5)

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #33831: origin
                    (at_d_p6)

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (at_d_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #15444: origin
                    (at_d_p7)

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #19180: origin
                    (at_d_p8)

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #14793: origin
                    (not_at_d_p1)

                    ; #22630: origin
                    (at_d_p9)

                    ; #20813: <==negation-removal== 14793 (pos)
                    (not (at_d_p1))

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #20813: origin
                    (at_d_p1)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #24429: origin
                    (at_d_p10)

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #89160: origin
                    (at_d_p11)

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #69019: origin
                    (at_d_p12)

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #73736: origin
                    (at_d_p3)

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #26460: origin
                    (at_d_p4)

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #24530: origin
                    (at_d_p5)

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #33831: origin
                    (at_d_p6)

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #15444: origin
                    (at_d_p7)

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #19180: origin
                    (at_d_p8)

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #10983: origin
                    (not_at_d_p2)

                    ; #22630: origin
                    (at_d_p9)

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))

                    ; #83371: <==negation-removal== 10983 (pos)
                    (not (at_d_p2))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #20813: origin
                    (at_d_p1)

                    ; #38274: origin
                    (not_at_d_p3)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_d_p3))
        :effect (and
                    ; #24429: origin
                    (at_d_p10)

                    ; #38274: origin
                    (not_at_d_p3)

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_d_p3))
        :effect (and
                    ; #38274: origin
                    (not_at_d_p3)

                    ; #89160: origin
                    (at_d_p11)

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_d_p3))
        :effect (and
                    ; #38274: origin
                    (not_at_d_p3)

                    ; #69019: origin
                    (at_d_p12)

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #38274: origin
                    (not_at_d_p3)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #38274: origin
                    (not_at_d_p3)

                    ; #73736: origin
                    (at_d_p3)

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #26460: origin
                    (at_d_p4)

                    ; #38274: origin
                    (not_at_d_p3)

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #24530: origin
                    (at_d_p5)

                    ; #38274: origin
                    (not_at_d_p3)

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #33831: origin
                    (at_d_p6)

                    ; #38274: origin
                    (not_at_d_p3)

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #15444: origin
                    (at_d_p7)

                    ; #38274: origin
                    (not_at_d_p3)

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #19180: origin
                    (at_d_p8)

                    ; #38274: origin
                    (not_at_d_p3)

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #22630: origin
                    (at_d_p9)

                    ; #38274: origin
                    (not_at_d_p3)

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))

                    ; #73736: <==negation-removal== 38274 (pos)
                    (not (at_d_p3))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #20813: origin
                    (at_d_p1)

                    ; #58925: origin
                    (not_at_d_p4)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #24429: origin
                    (at_d_p10)

                    ; #58925: origin
                    (not_at_d_p4)

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #58925: origin
                    (not_at_d_p4)

                    ; #89160: origin
                    (at_d_p11)

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #58925: origin
                    (not_at_d_p4)

                    ; #69019: origin
                    (at_d_p12)

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #58925: origin
                    (not_at_d_p4)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #58925: origin
                    (not_at_d_p4)

                    ; #73736: origin
                    (at_d_p3)

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #26460: origin
                    (at_d_p4)

                    ; #58925: origin
                    (not_at_d_p4)

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_d_p4))
        :effect (and
                    ; #24530: origin
                    (at_d_p5)

                    ; #58925: origin
                    (not_at_d_p4)

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #33831: origin
                    (at_d_p6)

                    ; #58925: origin
                    (not_at_d_p4)

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #15444: origin
                    (at_d_p7)

                    ; #58925: origin
                    (not_at_d_p4)

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4))
        :effect (and
                    ; #19180: origin
                    (at_d_p8)

                    ; #58925: origin
                    (not_at_d_p4)

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #22630: origin
                    (at_d_p9)

                    ; #58925: origin
                    (not_at_d_p4)

                    ; #26460: <==negation-removal== 58925 (pos)
                    (not (at_d_p4))

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #20813: origin
                    (at_d_p1)

                    ; #25310: origin
                    (not_at_d_p5)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_d_p5))
        :effect (and
                    ; #24429: origin
                    (at_d_p10)

                    ; #25310: origin
                    (not_at_d_p5)

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_d_p5))
        :effect (and
                    ; #25310: origin
                    (not_at_d_p5)

                    ; #89160: origin
                    (at_d_p11)

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_d_p5))
        :effect (and
                    ; #25310: origin
                    (not_at_d_p5)

                    ; #69019: origin
                    (at_d_p12)

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #25310: origin
                    (not_at_d_p5)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #25310: origin
                    (not_at_d_p5)

                    ; #73736: origin
                    (at_d_p3)

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #25310: origin
                    (not_at_d_p5)

                    ; #26460: origin
                    (at_d_p4)

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #24530: origin
                    (at_d_p5)

                    ; #25310: origin
                    (not_at_d_p5)

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #25310: origin
                    (not_at_d_p5)

                    ; #33831: origin
                    (at_d_p6)

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #15444: origin
                    (at_d_p7)

                    ; #25310: origin
                    (not_at_d_p5)

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #19180: origin
                    (at_d_p8)

                    ; #25310: origin
                    (not_at_d_p5)

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #22630: origin
                    (at_d_p9)

                    ; #25310: origin
                    (not_at_d_p5)

                    ; #24530: <==negation-removal== 25310 (pos)
                    (not (at_d_p5))

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (at_d_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #20813: origin
                    (at_d_p1)

                    ; #23886: origin
                    (not_at_d_p6)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p10
        :precondition (and (at_d_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #23886: origin
                    (not_at_d_p6)

                    ; #24429: origin
                    (at_d_p10)

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p6_p11
        :precondition (and (at_d_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #23886: origin
                    (not_at_d_p6)

                    ; #89160: origin
                    (at_d_p11)

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p12
        :precondition (and (at_d_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #23886: origin
                    (not_at_d_p6)

                    ; #69019: origin
                    (at_d_p12)

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #23886: origin
                    (not_at_d_p6)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #23886: origin
                    (not_at_d_p6)

                    ; #73736: origin
                    (at_d_p3)

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #23886: origin
                    (not_at_d_p6)

                    ; #26460: origin
                    (at_d_p4)

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #23886: origin
                    (not_at_d_p6)

                    ; #24530: origin
                    (at_d_p5)

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #23886: origin
                    (not_at_d_p6)

                    ; #33831: origin
                    (at_d_p6)

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #15444: origin
                    (at_d_p7)

                    ; #23886: origin
                    (not_at_d_p6)

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (at_d_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #19180: origin
                    (at_d_p8)

                    ; #23886: origin
                    (not_at_d_p6)

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (at_d_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #22630: origin
                    (at_d_p9)

                    ; #23886: origin
                    (not_at_d_p6)

                    ; #33831: <==negation-removal== 23886 (pos)
                    (not (at_d_p6))

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #20813: origin
                    (at_d_p1)

                    ; #42854: origin
                    (not_at_d_p7)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_d_p7))
        :effect (and
                    ; #24429: origin
                    (at_d_p10)

                    ; #42854: origin
                    (not_at_d_p7)

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_d_p7))
        :effect (and
                    ; #42854: origin
                    (not_at_d_p7)

                    ; #89160: origin
                    (at_d_p11)

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_d_p7))
        :effect (and
                    ; #42854: origin
                    (not_at_d_p7)

                    ; #69019: origin
                    (at_d_p12)

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7))
        :effect (and
                    ; #42854: origin
                    (not_at_d_p7)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #42854: origin
                    (not_at_d_p7)

                    ; #73736: origin
                    (at_d_p3)

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7))
        :effect (and
                    ; #26460: origin
                    (at_d_p4)

                    ; #42854: origin
                    (not_at_d_p7)

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #24530: origin
                    (at_d_p5)

                    ; #42854: origin
                    (not_at_d_p7)

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7))
        :effect (and
                    ; #33831: origin
                    (at_d_p6)

                    ; #42854: origin
                    (not_at_d_p7)

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #15444: origin
                    (at_d_p7)

                    ; #42854: origin
                    (not_at_d_p7)

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_d_p7))
        :effect (and
                    ; #19180: origin
                    (at_d_p8)

                    ; #42854: origin
                    (not_at_d_p7)

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_d_p7))
        :effect (and
                    ; #22630: origin
                    (at_d_p9)

                    ; #42854: origin
                    (not_at_d_p7)

                    ; #15444: <==negation-removal== 42854 (pos)
                    (not (at_d_p7))

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #20813: origin
                    (at_d_p1)

                    ; #28503: origin
                    (not_at_d_p8)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_d_p8))
        :effect (and
                    ; #24429: origin
                    (at_d_p10)

                    ; #28503: origin
                    (not_at_d_p8)

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_d_p8))
        :effect (and
                    ; #28503: origin
                    (not_at_d_p8)

                    ; #89160: origin
                    (at_d_p11)

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #28503: origin
                    (not_at_d_p8)

                    ; #69019: origin
                    (at_d_p12)

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #28503: origin
                    (not_at_d_p8)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #28503: origin
                    (not_at_d_p8)

                    ; #73736: origin
                    (at_d_p3)

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #26460: origin
                    (at_d_p4)

                    ; #28503: origin
                    (not_at_d_p8)

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #24530: origin
                    (at_d_p5)

                    ; #28503: origin
                    (not_at_d_p8)

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #28503: origin
                    (not_at_d_p8)

                    ; #33831: origin
                    (at_d_p6)

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #15444: origin
                    (at_d_p7)

                    ; #28503: origin
                    (not_at_d_p8)

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #19180: origin
                    (at_d_p8)

                    ; #28503: origin
                    (not_at_d_p8)

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8))
        :effect (and
                    ; #22630: origin
                    (at_d_p9)

                    ; #28503: origin
                    (not_at_d_p8)

                    ; #19180: <==negation-removal== 28503 (pos)
                    (not (at_d_p8))

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9))
        :effect (and
                    ; #20813: origin
                    (at_d_p1)

                    ; #69048: origin
                    (not_at_d_p9)

                    ; #14793: <==negation-removal== 20813 (pos)
                    (not (not_at_d_p1))

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_d_p9))
        :effect (and
                    ; #24429: origin
                    (at_d_p10)

                    ; #69048: origin
                    (not_at_d_p9)

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))

                    ; #70582: <==negation-removal== 24429 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_d_p9))
        :effect (and
                    ; #69048: origin
                    (not_at_d_p9)

                    ; #89160: origin
                    (at_d_p11)

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))

                    ; #33370: <==negation-removal== 89160 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_d_p9))
        :effect (and
                    ; #69019: origin
                    (at_d_p12)

                    ; #69048: origin
                    (not_at_d_p9)

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))

                    ; #67176: <==negation-removal== 69019 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9))
        :effect (and
                    ; #69048: origin
                    (not_at_d_p9)

                    ; #83371: origin
                    (at_d_p2)

                    ; #10983: <==negation-removal== 83371 (pos)
                    (not (not_at_d_p2))

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9))
        :effect (and
                    ; #69048: origin
                    (not_at_d_p9)

                    ; #73736: origin
                    (at_d_p3)

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))

                    ; #38274: <==negation-removal== 73736 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_d_p9))
        :effect (and
                    ; #26460: origin
                    (at_d_p4)

                    ; #69048: origin
                    (not_at_d_p9)

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))

                    ; #58925: <==negation-removal== 26460 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_d_p9))
        :effect (and
                    ; #24530: origin
                    (at_d_p5)

                    ; #69048: origin
                    (not_at_d_p9)

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))

                    ; #25310: <==negation-removal== 24530 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9))
        :effect (and
                    ; #33831: origin
                    (at_d_p6)

                    ; #69048: origin
                    (not_at_d_p9)

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))

                    ; #23886: <==negation-removal== 33831 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_d_p9))
        :effect (and
                    ; #15444: origin
                    (at_d_p7)

                    ; #69048: origin
                    (not_at_d_p9)

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))

                    ; #42854: <==negation-removal== 15444 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_d_p9))
        :effect (and
                    ; #19180: origin
                    (at_d_p8)

                    ; #69048: origin
                    (not_at_d_p9)

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))

                    ; #28503: <==negation-removal== 19180 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9))
        :effect (and
                    ; #22630: origin
                    (at_d_p9)

                    ; #69048: origin
                    (not_at_d_p9)

                    ; #22630: <==negation-removal== 69048 (pos)
                    (not (at_d_p9))

                    ; #69048: <==negation-removal== 22630 (pos)
                    (not (not_at_d_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14279: <==commonly_known== 84802 (pos)
                    (Bd_checked_p10)

                    ; #18467: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #19493: <==closure== 14279 (pos)
                    (Pd_checked_p10)

                    ; #21007: <==closure== 83295 (pos)
                    (Pa_checked_p10)

                    ; #31887: <==closure== 80608 (pos)
                    (Pb_checked_p10)

                    ; #56228: <==commonly_known== 84802 (pos)
                    (Bc_checked_p10)

                    ; #77720: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #80608: <==commonly_known== 84802 (pos)
                    (Bb_checked_p10)

                    ; #83253: <==closure== 77720 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #83295: <==commonly_known== 84802 (pos)
                    (Ba_checked_p10)

                    ; #84802: origin
                    (checked_p10)

                    ; #88534: <==closure== 18467 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #90979: <==closure== 56228 (pos)
                    (Pc_checked_p10)

                    ; #18907: <==negation-removal== 18467 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #20696: <==negation-removal== 90979 (pos)
                    (not (Bc_not_checked_p10))

                    ; #24031: <==negation-removal== 56228 (pos)
                    (not (Pc_not_checked_p10))

                    ; #26328: <==unclosure== 90557 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #32094: <==negation-removal== 19493 (pos)
                    (not (Bd_not_checked_p10))

                    ; #32341: <==negation-removal== 84802 (pos)
                    (not (not_checked_p10))

                    ; #33528: <==negation-removal== 77720 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #33688: <==uncertain_firing== 77720 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #37043: <==negation-removal== 88534 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #40113: <==unclosure== 33688 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #42330: <==negation-removal== 31887 (pos)
                    (not (Bb_not_checked_p10))

                    ; #49882: <==negation-removal== 83295 (pos)
                    (not (Pa_not_checked_p10))

                    ; #62399: <==negation-removal== 14279 (pos)
                    (not (Pd_not_checked_p10))

                    ; #65942: <==negation-removal== 21007 (pos)
                    (not (Ba_not_checked_p10))

                    ; #66900: <==negation-removal== 80608 (pos)
                    (not (Pb_not_checked_p10))

                    ; #84349: <==negation-removal== 83253 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #90557: <==uncertain_firing== 18467 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #12311: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #20391: <==closure== 47957 (pos)
                    (Pa_checked_p11)

                    ; #21489: origin
                    (checked_p11)

                    ; #21872: <==closure== 12311 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #34543: <==commonly_known== 21489 (pos)
                    (Bc_checked_p11)

                    ; #40202: <==closure== 58843 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #40470: <==commonly_known== 21489 (pos)
                    (Bb_checked_p11)

                    ; #47957: <==commonly_known== 21489 (pos)
                    (Ba_checked_p11)

                    ; #50129: <==closure== 40470 (pos)
                    (Pb_checked_p11)

                    ; #50505: <==closure== 34543 (pos)
                    (Pc_checked_p11)

                    ; #58843: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #60104: <==closure== 84643 (pos)
                    (Pd_checked_p11)

                    ; #84643: <==commonly_known== 21489 (pos)
                    (Bd_checked_p11)

                    ; #13089: <==negation-removal== 21489 (pos)
                    (not (not_checked_p11))

                    ; #20881: <==negation-removal== 50129 (pos)
                    (not (Bb_not_checked_p11))

                    ; #23496: <==negation-removal== 40202 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #28409: <==negation-removal== 58843 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #32796: <==negation-removal== 21872 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #33855: <==uncertain_firing== 58843 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #36968: <==negation-removal== 34543 (pos)
                    (not (Pc_not_checked_p11))

                    ; #44964: <==negation-removal== 84643 (pos)
                    (not (Pd_not_checked_p11))

                    ; #52328: <==unclosure== 59966 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #58908: <==unclosure== 33855 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #59561: <==negation-removal== 40470 (pos)
                    (not (Pb_not_checked_p11))

                    ; #59966: <==uncertain_firing== 12311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #65971: <==negation-removal== 47957 (pos)
                    (not (Pa_not_checked_p11))

                    ; #75214: <==negation-removal== 50505 (pos)
                    (not (Bc_not_checked_p11))

                    ; #82072: <==negation-removal== 60104 (pos)
                    (not (Bd_not_checked_p11))

                    ; #86445: <==negation-removal== 20391 (pos)
                    (not (Ba_not_checked_p11))

                    ; #89943: <==negation-removal== 12311 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10958: <==commonly_known== 74173 (pos)
                    (Bd_checked_p12)

                    ; #13239: <==closure== 10958 (pos)
                    (Pd_checked_p12)

                    ; #46748: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #48793: <==closure== 91814 (pos)
                    (Pa_checked_p12)

                    ; #56908: <==commonly_known== 74173 (pos)
                    (Bc_checked_p12)

                    ; #56958: <==closure== 71837 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #61009: <==closure== 46748 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #71837: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #74173: origin
                    (checked_p12)

                    ; #76202: <==commonly_known== 74173 (pos)
                    (Bb_checked_p12)

                    ; #78053: <==closure== 76202 (pos)
                    (Pb_checked_p12)

                    ; #90809: <==closure== 56908 (pos)
                    (Pc_checked_p12)

                    ; #91814: <==commonly_known== 74173 (pos)
                    (Ba_checked_p12)

                    ; #11732: <==unclosure== 72720 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #18619: <==negation-removal== 76202 (pos)
                    (not (Pb_not_checked_p12))

                    ; #19552: <==negation-removal== 56908 (pos)
                    (not (Pc_not_checked_p12))

                    ; #26363: <==negation-removal== 10958 (pos)
                    (not (Pd_not_checked_p12))

                    ; #35016: <==negation-removal== 90809 (pos)
                    (not (Bc_not_checked_p12))

                    ; #35937: <==uncertain_firing== 71837 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #36592: <==negation-removal== 56958 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #39914: <==negation-removal== 13239 (pos)
                    (not (Bd_not_checked_p12))

                    ; #51614: <==negation-removal== 78053 (pos)
                    (not (Bb_not_checked_p12))

                    ; #53337: <==negation-removal== 48793 (pos)
                    (not (Ba_not_checked_p12))

                    ; #67251: <==negation-removal== 71837 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #68439: <==negation-removal== 61009 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #72720: <==uncertain_firing== 46748 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #74533: <==negation-removal== 91814 (pos)
                    (not (Pa_not_checked_p12))

                    ; #77592: <==unclosure== 35937 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #82372: <==negation-removal== 74173 (pos)
                    (not (not_checked_p12))

                    ; #91024: <==negation-removal== 46748 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13044: <==commonly_known== 38026 (pos)
                    (Bd_checked_p1)

                    ; #18435: <==closure== 55518 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #21711: <==closure== 13044 (pos)
                    (Pd_checked_p1)

                    ; #22250: <==closure== 71168 (pos)
                    (Pa_checked_p1)

                    ; #26945: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #34114: <==closure== 64162 (pos)
                    (Pc_checked_p1)

                    ; #38026: origin
                    (checked_p1)

                    ; #41279: <==commonly_known== 38026 (pos)
                    (Bb_checked_p1)

                    ; #55518: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #64162: <==commonly_known== 38026 (pos)
                    (Bc_checked_p1)

                    ; #68557: <==closure== 26945 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #71168: <==commonly_known== 38026 (pos)
                    (Ba_checked_p1)

                    ; #77128: <==closure== 41279 (pos)
                    (Pb_checked_p1)

                    ; #16388: <==negation-removal== 55518 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #32465: <==negation-removal== 77128 (pos)
                    (not (Bb_not_checked_p1))

                    ; #40330: <==negation-removal== 71168 (pos)
                    (not (Pa_not_checked_p1))

                    ; #43731: <==negation-removal== 18435 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #46704: <==negation-removal== 13044 (pos)
                    (not (Pd_not_checked_p1))

                    ; #53504: <==negation-removal== 41279 (pos)
                    (not (Pb_not_checked_p1))

                    ; #53873: <==negation-removal== 21711 (pos)
                    (not (Bd_not_checked_p1))

                    ; #56403: <==negation-removal== 26945 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #73146: <==unclosure== 74168 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #74168: <==uncertain_firing== 26945 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #76102: <==negation-removal== 68557 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #84183: <==negation-removal== 34114 (pos)
                    (not (Bc_not_checked_p1))

                    ; #87573: <==uncertain_firing== 55518 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #87823: <==negation-removal== 38026 (pos)
                    (not (not_checked_p1))

                    ; #88872: <==unclosure== 87573 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #90889: <==negation-removal== 22250 (pos)
                    (not (Ba_not_checked_p1))

                    ; #98328: <==negation-removal== 64162 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #18349: origin
                    (checked_p2)

                    ; #20218: <==closure== 70527 (pos)
                    (Pb_checked_p2)

                    ; #29313: <==commonly_known== 18349 (pos)
                    (Bc_checked_p2)

                    ; #31032: <==closure== 29313 (pos)
                    (Pc_checked_p2)

                    ; #33048: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #41767: <==closure== 57662 (pos)
                    (Pd_checked_p2)

                    ; #57662: <==commonly_known== 18349 (pos)
                    (Bd_checked_p2)

                    ; #61607: <==closure== 82916 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #70527: <==commonly_known== 18349 (pos)
                    (Bb_checked_p2)

                    ; #74513: <==commonly_known== 18349 (pos)
                    (Ba_checked_p2)

                    ; #81535: <==closure== 33048 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #82605: <==closure== 74513 (pos)
                    (Pa_checked_p2)

                    ; #82916: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #15575: <==negation-removal== 29313 (pos)
                    (not (Pc_not_checked_p2))

                    ; #26298: <==negation-removal== 74513 (pos)
                    (not (Pa_not_checked_p2))

                    ; #29628: <==negation-removal== 31032 (pos)
                    (not (Bc_not_checked_p2))

                    ; #30916: <==negation-removal== 41767 (pos)
                    (not (Bd_not_checked_p2))

                    ; #34927: <==negation-removal== 20218 (pos)
                    (not (Bb_not_checked_p2))

                    ; #45591: <==negation-removal== 33048 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #59060: <==negation-removal== 70527 (pos)
                    (not (Pb_not_checked_p2))

                    ; #59953: <==negation-removal== 61607 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #72040: <==negation-removal== 82916 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #78321: <==negation-removal== 81535 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #79372: <==negation-removal== 82605 (pos)
                    (not (Ba_not_checked_p2))

                    ; #80543: <==uncertain_firing== 82916 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #84611: <==unclosure== 86751 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #85677: <==unclosure== 80543 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #86751: <==uncertain_firing== 33048 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #87790: <==negation-removal== 57662 (pos)
                    (not (Pd_not_checked_p2))

                    ; #91684: <==negation-removal== 18349 (pos)
                    (not (not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13033: <==commonly_known== 55934 (pos)
                    (Bc_checked_p3)

                    ; #17731: <==closure== 51818 (pos)
                    (Pd_checked_p3)

                    ; #25397: <==commonly_known== 55934 (pos)
                    (Bb_checked_p3)

                    ; #29375: <==closure== 13033 (pos)
                    (Pc_checked_p3)

                    ; #44084: <==commonly_known== 55934 (pos)
                    (Ba_checked_p3)

                    ; #51818: <==commonly_known== 55934 (pos)
                    (Bd_checked_p3)

                    ; #55934: origin
                    (checked_p3)

                    ; #56889: <==closure== 44084 (pos)
                    (Pa_checked_p3)

                    ; #57218: <==closure== 77253 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #73417: <==closure== 79969 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #77253: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #79969: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #91211: <==closure== 25397 (pos)
                    (Pb_checked_p3)

                    ; #11257: <==negation-removal== 51818 (pos)
                    (not (Pd_not_checked_p3))

                    ; #12541: <==negation-removal== 44084 (pos)
                    (not (Pa_not_checked_p3))

                    ; #14526: <==negation-removal== 79969 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #17405: <==unclosure== 89916 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #19808: <==unclosure== 64410 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #20763: <==negation-removal== 29375 (pos)
                    (not (Bc_not_checked_p3))

                    ; #26398: <==negation-removal== 73417 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #26893: <==negation-removal== 56889 (pos)
                    (not (Ba_not_checked_p3))

                    ; #27911: <==negation-removal== 17731 (pos)
                    (not (Bd_not_checked_p3))

                    ; #29751: <==negation-removal== 77253 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #62222: <==negation-removal== 55934 (pos)
                    (not (not_checked_p3))

                    ; #64410: <==uncertain_firing== 79969 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #71416: <==negation-removal== 25397 (pos)
                    (not (Pb_not_checked_p3))

                    ; #75359: <==negation-removal== 91211 (pos)
                    (not (Bb_not_checked_p3))

                    ; #82865: <==negation-removal== 13033 (pos)
                    (not (Pc_not_checked_p3))

                    ; #88718: <==negation-removal== 57218 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #89916: <==uncertain_firing== 77253 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11195: origin
                    (checked_p4)

                    ; #14191: <==commonly_known== 11195 (pos)
                    (Ba_checked_p4)

                    ; #17800: <==closure== 53047 (pos)
                    (Pd_checked_p4)

                    ; #27592: <==closure== 89749 (pos)
                    (Pc_checked_p4)

                    ; #33381: <==closure== 48988 (pos)
                    (Pb_checked_p4)

                    ; #48988: <==commonly_known== 11195 (pos)
                    (Bb_checked_p4)

                    ; #51517: <==closure== 67472 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #53047: <==commonly_known== 11195 (pos)
                    (Bd_checked_p4)

                    ; #67472: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #70156: <==closure== 77711 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #77317: <==closure== 14191 (pos)
                    (Pa_checked_p4)

                    ; #77711: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #89749: <==commonly_known== 11195 (pos)
                    (Bc_checked_p4)

                    ; #14538: <==negation-removal== 77317 (pos)
                    (not (Ba_not_checked_p4))

                    ; #19977: <==negation-removal== 27592 (pos)
                    (not (Bc_not_checked_p4))

                    ; #21244: <==uncertain_firing== 67472 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #21836: <==negation-removal== 17800 (pos)
                    (not (Bd_not_checked_p4))

                    ; #22572: <==negation-removal== 14191 (pos)
                    (not (Pa_not_checked_p4))

                    ; #23911: <==negation-removal== 11195 (pos)
                    (not (not_checked_p4))

                    ; #24470: <==negation-removal== 70156 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #33556: <==negation-removal== 33381 (pos)
                    (not (Bb_not_checked_p4))

                    ; #39608: <==negation-removal== 89749 (pos)
                    (not (Pc_not_checked_p4))

                    ; #42200: <==negation-removal== 53047 (pos)
                    (not (Pd_not_checked_p4))

                    ; #48299: <==negation-removal== 77711 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #53982: <==negation-removal== 67472 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #55787: <==uncertain_firing== 77711 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #59637: <==unclosure== 55787 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #60279: <==negation-removal== 51517 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #71739: <==unclosure== 21244 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #84372: <==negation-removal== 48988 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12911: <==closure== 66110 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #19660: <==closure== 86853 (pos)
                    (Pc_checked_p5)

                    ; #21641: <==closure== 46578 (pos)
                    (Pd_checked_p5)

                    ; #24970: origin
                    (checked_p5)

                    ; #32913: <==closure== 72598 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #41746: <==commonly_known== 24970 (pos)
                    (Bb_checked_p5)

                    ; #46578: <==commonly_known== 24970 (pos)
                    (Bd_checked_p5)

                    ; #64103: <==closure== 41746 (pos)
                    (Pb_checked_p5)

                    ; #66110: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #72598: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #75226: <==closure== 81518 (pos)
                    (Pa_checked_p5)

                    ; #81518: <==commonly_known== 24970 (pos)
                    (Ba_checked_p5)

                    ; #86853: <==commonly_known== 24970 (pos)
                    (Bc_checked_p5)

                    ; #25505: <==negation-removal== 64103 (pos)
                    (not (Bb_not_checked_p5))

                    ; #29987: <==negation-removal== 32913 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #34227: <==negation-removal== 24970 (pos)
                    (not (not_checked_p5))

                    ; #40239: <==negation-removal== 19660 (pos)
                    (not (Bc_not_checked_p5))

                    ; #50150: <==negation-removal== 86853 (pos)
                    (not (Pc_not_checked_p5))

                    ; #54234: <==negation-removal== 75226 (pos)
                    (not (Ba_not_checked_p5))

                    ; #54796: <==negation-removal== 66110 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #54967: <==negation-removal== 21641 (pos)
                    (not (Bd_not_checked_p5))

                    ; #56417: <==uncertain_firing== 72598 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #59171: <==uncertain_firing== 66110 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #62300: <==unclosure== 59171 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #69820: <==negation-removal== 41746 (pos)
                    (not (Pb_not_checked_p5))

                    ; #70760: <==negation-removal== 72598 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #75308: <==negation-removal== 46578 (pos)
                    (not (Pd_not_checked_p5))

                    ; #84036: <==negation-removal== 81518 (pos)
                    (not (Pa_not_checked_p5))

                    ; #88622: <==unclosure== 56417 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #88973: <==negation-removal== 12911 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16952: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #19865: <==closure== 90126 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #30695: <==closure== 16952 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #31302: <==commonly_known== 38344 (pos)
                    (Bb_checked_p6)

                    ; #31826: <==commonly_known== 38344 (pos)
                    (Bd_checked_p6)

                    ; #37105: <==closure== 78010 (pos)
                    (Pa_checked_p6)

                    ; #38344: origin
                    (checked_p6)

                    ; #56124: <==closure== 64344 (pos)
                    (Pc_checked_p6)

                    ; #64344: <==commonly_known== 38344 (pos)
                    (Bc_checked_p6)

                    ; #78010: <==commonly_known== 38344 (pos)
                    (Ba_checked_p6)

                    ; #87003: <==closure== 31826 (pos)
                    (Pd_checked_p6)

                    ; #90126: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #91809: <==closure== 31302 (pos)
                    (Pb_checked_p6)

                    ; #18488: <==negation-removal== 78010 (pos)
                    (not (Pa_not_checked_p6))

                    ; #27565: <==negation-removal== 87003 (pos)
                    (not (Bd_not_checked_p6))

                    ; #42132: <==negation-removal== 56124 (pos)
                    (not (Bc_not_checked_p6))

                    ; #42762: <==unclosure== 81052 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #45837: <==negation-removal== 30695 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #52674: <==negation-removal== 91809 (pos)
                    (not (Bb_not_checked_p6))

                    ; #53067: <==negation-removal== 31826 (pos)
                    (not (Pd_not_checked_p6))

                    ; #54991: <==negation-removal== 31302 (pos)
                    (not (Pb_not_checked_p6))

                    ; #55632: <==negation-removal== 90126 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #57982: <==negation-removal== 16952 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #58137: <==uncertain_firing== 16952 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #72219: <==unclosure== 58137 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #79787: <==negation-removal== 38344 (pos)
                    (not (not_checked_p6))

                    ; #81052: <==uncertain_firing== 90126 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #85571: <==negation-removal== 19865 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #88333: <==negation-removal== 64344 (pos)
                    (not (Pc_not_checked_p6))

                    ; #91258: <==negation-removal== 37105 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19200: <==closure== 56754 (pos)
                    (Pd_checked_p7)

                    ; #20013: <==closure== 90570 (pos)
                    (Pb_checked_p7)

                    ; #22295: <==closure== 42276 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #25552: <==closure== 44809 (pos)
                    (Pc_checked_p7)

                    ; #29004: <==closure== 43444 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #42276: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #43444: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #44809: <==commonly_known== 71089 (pos)
                    (Bc_checked_p7)

                    ; #53514: <==closure== 75466 (pos)
                    (Pa_checked_p7)

                    ; #56754: <==commonly_known== 71089 (pos)
                    (Bd_checked_p7)

                    ; #71089: origin
                    (checked_p7)

                    ; #75466: <==commonly_known== 71089 (pos)
                    (Ba_checked_p7)

                    ; #90570: <==commonly_known== 71089 (pos)
                    (Bb_checked_p7)

                    ; #10630: <==negation-removal== 22295 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #15110: <==negation-removal== 19200 (pos)
                    (not (Bd_not_checked_p7))

                    ; #16678: <==negation-removal== 56754 (pos)
                    (not (Pd_not_checked_p7))

                    ; #18163: <==negation-removal== 42276 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #30586: <==negation-removal== 90570 (pos)
                    (not (Pb_not_checked_p7))

                    ; #38043: <==uncertain_firing== 43444 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #43296: <==negation-removal== 53514 (pos)
                    (not (Ba_not_checked_p7))

                    ; #49703: <==negation-removal== 25552 (pos)
                    (not (Bc_not_checked_p7))

                    ; #54948: <==uncertain_firing== 42276 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #60639: <==unclosure== 54948 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #71024: <==negation-removal== 44809 (pos)
                    (not (Pc_not_checked_p7))

                    ; #76419: <==negation-removal== 43444 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #80006: <==negation-removal== 20013 (pos)
                    (not (Bb_not_checked_p7))

                    ; #80109: <==unclosure== 38043 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #88068: <==negation-removal== 75466 (pos)
                    (not (Pa_not_checked_p7))

                    ; #88120: <==negation-removal== 29004 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #89089: <==negation-removal== 71089 (pos)
                    (not (not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13527: <==closure== 35486 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #14514: <==commonly_known== 38526 (pos)
                    (Bc_checked_p8)

                    ; #15161: <==commonly_known== 38526 (pos)
                    (Bd_checked_p8)

                    ; #22050: <==commonly_known== 38526 (pos)
                    (Ba_checked_p8)

                    ; #22109: <==closure== 79437 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #22229: <==closure== 14514 (pos)
                    (Pc_checked_p8)

                    ; #35486: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #38526: origin
                    (checked_p8)

                    ; #38548: <==closure== 68572 (pos)
                    (Pb_checked_p8)

                    ; #53103: <==closure== 22050 (pos)
                    (Pa_checked_p8)

                    ; #56492: <==closure== 15161 (pos)
                    (Pd_checked_p8)

                    ; #68572: <==commonly_known== 38526 (pos)
                    (Bb_checked_p8)

                    ; #79437: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #20572: <==negation-removal== 38548 (pos)
                    (not (Bb_not_checked_p8))

                    ; #26780: <==unclosure== 73693 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #28662: <==negation-removal== 79437 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #34861: <==negation-removal== 53103 (pos)
                    (not (Ba_not_checked_p8))

                    ; #40776: <==negation-removal== 38526 (pos)
                    (not (not_checked_p8))

                    ; #48147: <==negation-removal== 68572 (pos)
                    (not (Pb_not_checked_p8))

                    ; #49619: <==negation-removal== 56492 (pos)
                    (not (Bd_not_checked_p8))

                    ; #50745: <==negation-removal== 14514 (pos)
                    (not (Pc_not_checked_p8))

                    ; #54573: <==uncertain_firing== 35486 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #56786: <==negation-removal== 22109 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #62899: <==negation-removal== 35486 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #69826: <==unclosure== 54573 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #73693: <==uncertain_firing== 79437 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #76177: <==negation-removal== 13527 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #86186: <==negation-removal== 15161 (pos)
                    (not (Pd_not_checked_p8))

                    ; #86908: <==negation-removal== 22050 (pos)
                    (not (Pa_not_checked_p8))

                    ; #91773: <==negation-removal== 22229 (pos)
                    (not (Bc_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11359: <==commonly_known== 19599 (pos)
                    (Bb_checked_p9)

                    ; #14496: <==closure== 50218 (pos)
                    (Pa_checked_p9)

                    ; #19599: origin
                    (checked_p9)

                    ; #22259: <==closure== 11359 (pos)
                    (Pb_checked_p9)

                    ; #24643: <==closure== 90326 (pos)
                    (Pd_checked_p9)

                    ; #36530: <==closure== 43852 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #39612: <==commonly_known== 19599 (pos)
                    (Bc_checked_p9)

                    ; #43852: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #50218: <==commonly_known== 19599 (pos)
                    (Ba_checked_p9)

                    ; #56989: <==closure== 39612 (pos)
                    (Pc_checked_p9)

                    ; #60893: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #78645: <==closure== 60893 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #90326: <==commonly_known== 19599 (pos)
                    (Bd_checked_p9)

                    ; #13254: <==unclosure== 85845 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #22444: <==negation-removal== 22259 (pos)
                    (not (Bb_not_checked_p9))

                    ; #38307: <==negation-removal== 11359 (pos)
                    (not (Pb_not_checked_p9))

                    ; #38659: <==unclosure== 70045 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #39890: <==negation-removal== 24643 (pos)
                    (not (Bd_not_checked_p9))

                    ; #43618: <==negation-removal== 78645 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #52471: <==negation-removal== 90326 (pos)
                    (not (Pd_not_checked_p9))

                    ; #54407: <==negation-removal== 43852 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #64277: <==negation-removal== 50218 (pos)
                    (not (Pa_not_checked_p9))

                    ; #70045: <==uncertain_firing== 60893 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #70353: <==negation-removal== 60893 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #78754: <==negation-removal== 56989 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82999: <==negation-removal== 14496 (pos)
                    (not (Ba_not_checked_p9))

                    ; #85845: <==uncertain_firing== 43852 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #85887: <==negation-removal== 36530 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #87452: <==negation-removal== 39612 (pos)
                    (not (Pc_not_checked_p9))

                    ; #96782: <==negation-removal== 19599 (pos)
                    (not (not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14279: <==commonly_known== 84802 (pos)
                    (Bd_checked_p10)

                    ; #19493: <==closure== 14279 (pos)
                    (Pd_checked_p10)

                    ; #21007: <==closure== 83295 (pos)
                    (Pa_checked_p10)

                    ; #23544: <==closure== 62185 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #30738: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #31887: <==closure== 80608 (pos)
                    (Pb_checked_p10)

                    ; #56228: <==commonly_known== 84802 (pos)
                    (Bc_checked_p10)

                    ; #62185: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #80608: <==commonly_known== 84802 (pos)
                    (Bb_checked_p10)

                    ; #83295: <==commonly_known== 84802 (pos)
                    (Ba_checked_p10)

                    ; #83786: <==closure== 30738 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #84802: origin
                    (checked_p10)

                    ; #90979: <==closure== 56228 (pos)
                    (Pc_checked_p10)

                    ; #19117: <==uncertain_firing== 62185 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #20696: <==negation-removal== 90979 (pos)
                    (not (Bc_not_checked_p10))

                    ; #24031: <==negation-removal== 56228 (pos)
                    (not (Pc_not_checked_p10))

                    ; #29718: <==unclosure== 19117 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #32094: <==negation-removal== 19493 (pos)
                    (not (Bd_not_checked_p10))

                    ; #32341: <==negation-removal== 84802 (pos)
                    (not (not_checked_p10))

                    ; #42330: <==negation-removal== 31887 (pos)
                    (not (Bb_not_checked_p10))

                    ; #49882: <==negation-removal== 83295 (pos)
                    (not (Pa_not_checked_p10))

                    ; #58478: <==negation-removal== 83786 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #61825: <==negation-removal== 23544 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #62399: <==negation-removal== 14279 (pos)
                    (not (Pd_not_checked_p10))

                    ; #62483: <==unclosure== 72241 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #65942: <==negation-removal== 21007 (pos)
                    (not (Ba_not_checked_p10))

                    ; #66900: <==negation-removal== 80608 (pos)
                    (not (Pb_not_checked_p10))

                    ; #72241: <==uncertain_firing== 30738 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #84573: <==negation-removal== 30738 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #84710: <==negation-removal== 62185 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #20391: <==closure== 47957 (pos)
                    (Pa_checked_p11)

                    ; #21343: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #21489: origin
                    (checked_p11)

                    ; #34543: <==commonly_known== 21489 (pos)
                    (Bc_checked_p11)

                    ; #40470: <==commonly_known== 21489 (pos)
                    (Bb_checked_p11)

                    ; #43395: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #47957: <==commonly_known== 21489 (pos)
                    (Ba_checked_p11)

                    ; #50129: <==closure== 40470 (pos)
                    (Pb_checked_p11)

                    ; #50505: <==closure== 34543 (pos)
                    (Pc_checked_p11)

                    ; #53573: <==closure== 21343 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #60104: <==closure== 84643 (pos)
                    (Pd_checked_p11)

                    ; #66266: <==closure== 43395 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #84643: <==commonly_known== 21489 (pos)
                    (Bd_checked_p11)

                    ; #13089: <==negation-removal== 21489 (pos)
                    (not (not_checked_p11))

                    ; #20881: <==negation-removal== 50129 (pos)
                    (not (Bb_not_checked_p11))

                    ; #20995: <==negation-removal== 43395 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #21941: <==unclosure== 52985 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #36616: <==negation-removal== 53573 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #36968: <==negation-removal== 34543 (pos)
                    (not (Pc_not_checked_p11))

                    ; #44964: <==negation-removal== 84643 (pos)
                    (not (Pd_not_checked_p11))

                    ; #52985: <==uncertain_firing== 43395 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #59561: <==negation-removal== 40470 (pos)
                    (not (Pb_not_checked_p11))

                    ; #65971: <==negation-removal== 47957 (pos)
                    (not (Pa_not_checked_p11))

                    ; #70258: <==uncertain_firing== 21343 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #75214: <==negation-removal== 50505 (pos)
                    (not (Bc_not_checked_p11))

                    ; #79240: <==negation-removal== 66266 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #82072: <==negation-removal== 60104 (pos)
                    (not (Bd_not_checked_p11))

                    ; #86295: <==negation-removal== 21343 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #86445: <==negation-removal== 20391 (pos)
                    (not (Ba_not_checked_p11))

                    ; #89050: <==unclosure== 70258 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10958: <==commonly_known== 74173 (pos)
                    (Bd_checked_p12)

                    ; #11145: <==closure== 31593 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #13239: <==closure== 10958 (pos)
                    (Pd_checked_p12)

                    ; #17047: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #31593: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #48793: <==closure== 91814 (pos)
                    (Pa_checked_p12)

                    ; #56908: <==commonly_known== 74173 (pos)
                    (Bc_checked_p12)

                    ; #74173: origin
                    (checked_p12)

                    ; #76202: <==commonly_known== 74173 (pos)
                    (Bb_checked_p12)

                    ; #78053: <==closure== 76202 (pos)
                    (Pb_checked_p12)

                    ; #90809: <==closure== 56908 (pos)
                    (Pc_checked_p12)

                    ; #91814: <==commonly_known== 74173 (pos)
                    (Ba_checked_p12)

                    ; #91874: <==closure== 17047 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #12553: <==unclosure== 18002 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #18002: <==uncertain_firing== 17047 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #18619: <==negation-removal== 76202 (pos)
                    (not (Pb_not_checked_p12))

                    ; #19552: <==negation-removal== 56908 (pos)
                    (not (Pc_not_checked_p12))

                    ; #25384: <==negation-removal== 11145 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #26363: <==negation-removal== 10958 (pos)
                    (not (Pd_not_checked_p12))

                    ; #35016: <==negation-removal== 90809 (pos)
                    (not (Bc_not_checked_p12))

                    ; #39914: <==negation-removal== 13239 (pos)
                    (not (Bd_not_checked_p12))

                    ; #51614: <==negation-removal== 78053 (pos)
                    (not (Bb_not_checked_p12))

                    ; #53337: <==negation-removal== 48793 (pos)
                    (not (Ba_not_checked_p12))

                    ; #56300: <==unclosure== 72780 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #67645: <==negation-removal== 17047 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #72780: <==uncertain_firing== 31593 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #74533: <==negation-removal== 91814 (pos)
                    (not (Pa_not_checked_p12))

                    ; #75047: <==negation-removal== 91874 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #82372: <==negation-removal== 74173 (pos)
                    (not (not_checked_p12))

                    ; #92018: <==negation-removal== 31593 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13044: <==commonly_known== 38026 (pos)
                    (Bd_checked_p1)

                    ; #16615: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #21711: <==closure== 13044 (pos)
                    (Pd_checked_p1)

                    ; #22250: <==closure== 71168 (pos)
                    (Pa_checked_p1)

                    ; #34114: <==closure== 64162 (pos)
                    (Pc_checked_p1)

                    ; #38026: origin
                    (checked_p1)

                    ; #39901: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #41279: <==commonly_known== 38026 (pos)
                    (Bb_checked_p1)

                    ; #55622: <==closure== 16615 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #64162: <==commonly_known== 38026 (pos)
                    (Bc_checked_p1)

                    ; #71168: <==commonly_known== 38026 (pos)
                    (Ba_checked_p1)

                    ; #77128: <==closure== 41279 (pos)
                    (Pb_checked_p1)

                    ; #80211: <==closure== 39901 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11614: <==unclosure== 16153 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #16153: <==uncertain_firing== 39901 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #16723: <==negation-removal== 55622 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #23214: <==negation-removal== 39901 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #27786: <==uncertain_firing== 16615 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #32465: <==negation-removal== 77128 (pos)
                    (not (Bb_not_checked_p1))

                    ; #40330: <==negation-removal== 71168 (pos)
                    (not (Pa_not_checked_p1))

                    ; #42137: <==unclosure== 27786 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #46704: <==negation-removal== 13044 (pos)
                    (not (Pd_not_checked_p1))

                    ; #53504: <==negation-removal== 41279 (pos)
                    (not (Pb_not_checked_p1))

                    ; #53536: <==negation-removal== 80211 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #53873: <==negation-removal== 21711 (pos)
                    (not (Bd_not_checked_p1))

                    ; #53901: <==negation-removal== 16615 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #84183: <==negation-removal== 34114 (pos)
                    (not (Bc_not_checked_p1))

                    ; #87823: <==negation-removal== 38026 (pos)
                    (not (not_checked_p1))

                    ; #90889: <==negation-removal== 22250 (pos)
                    (not (Ba_not_checked_p1))

                    ; #98328: <==negation-removal== 64162 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12810: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #18349: origin
                    (checked_p2)

                    ; #20218: <==closure== 70527 (pos)
                    (Pb_checked_p2)

                    ; #23313: <==closure== 12810 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #29313: <==commonly_known== 18349 (pos)
                    (Bc_checked_p2)

                    ; #31032: <==closure== 29313 (pos)
                    (Pc_checked_p2)

                    ; #35213: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #41767: <==closure== 57662 (pos)
                    (Pd_checked_p2)

                    ; #57662: <==commonly_known== 18349 (pos)
                    (Bd_checked_p2)

                    ; #59679: <==closure== 35213 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #70527: <==commonly_known== 18349 (pos)
                    (Bb_checked_p2)

                    ; #74513: <==commonly_known== 18349 (pos)
                    (Ba_checked_p2)

                    ; #82605: <==closure== 74513 (pos)
                    (Pa_checked_p2)

                    ; #15575: <==negation-removal== 29313 (pos)
                    (not (Pc_not_checked_p2))

                    ; #26298: <==negation-removal== 74513 (pos)
                    (not (Pa_not_checked_p2))

                    ; #29628: <==negation-removal== 31032 (pos)
                    (not (Bc_not_checked_p2))

                    ; #30916: <==negation-removal== 41767 (pos)
                    (not (Bd_not_checked_p2))

                    ; #32469: <==negation-removal== 35213 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #33560: <==unclosure== 50607 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #34927: <==negation-removal== 20218 (pos)
                    (not (Bb_not_checked_p2))

                    ; #36334: <==uncertain_firing== 35213 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #46795: <==negation-removal== 12810 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #46937: <==unclosure== 36334 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #50607: <==uncertain_firing== 12810 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #51839: <==negation-removal== 59679 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #59060: <==negation-removal== 70527 (pos)
                    (not (Pb_not_checked_p2))

                    ; #75070: <==negation-removal== 23313 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #79372: <==negation-removal== 82605 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87790: <==negation-removal== 57662 (pos)
                    (not (Pd_not_checked_p2))

                    ; #91684: <==negation-removal== 18349 (pos)
                    (not (not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13033: <==commonly_known== 55934 (pos)
                    (Bc_checked_p3)

                    ; #17731: <==closure== 51818 (pos)
                    (Pd_checked_p3)

                    ; #21804: <==closure== 28196 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #25397: <==commonly_known== 55934 (pos)
                    (Bb_checked_p3)

                    ; #28196: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #29375: <==closure== 13033 (pos)
                    (Pc_checked_p3)

                    ; #34829: <==closure== 86160 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #44084: <==commonly_known== 55934 (pos)
                    (Ba_checked_p3)

                    ; #51818: <==commonly_known== 55934 (pos)
                    (Bd_checked_p3)

                    ; #55934: origin
                    (checked_p3)

                    ; #56889: <==closure== 44084 (pos)
                    (Pa_checked_p3)

                    ; #86160: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #91211: <==closure== 25397 (pos)
                    (Pb_checked_p3)

                    ; #10337: <==negation-removal== 28196 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #11257: <==negation-removal== 51818 (pos)
                    (not (Pd_not_checked_p3))

                    ; #12541: <==negation-removal== 44084 (pos)
                    (not (Pa_not_checked_p3))

                    ; #12942: <==uncertain_firing== 86160 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #20763: <==negation-removal== 29375 (pos)
                    (not (Bc_not_checked_p3))

                    ; #21191: <==negation-removal== 34829 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #26893: <==negation-removal== 56889 (pos)
                    (not (Ba_not_checked_p3))

                    ; #27911: <==negation-removal== 17731 (pos)
                    (not (Bd_not_checked_p3))

                    ; #28218: <==negation-removal== 21804 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #32384: <==uncertain_firing== 28196 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #50096: <==unclosure== 32384 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #51582: <==unclosure== 12942 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #61625: <==negation-removal== 86160 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #62222: <==negation-removal== 55934 (pos)
                    (not (not_checked_p3))

                    ; #71416: <==negation-removal== 25397 (pos)
                    (not (Pb_not_checked_p3))

                    ; #75359: <==negation-removal== 91211 (pos)
                    (not (Bb_not_checked_p3))

                    ; #82865: <==negation-removal== 13033 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11195: origin
                    (checked_p4)

                    ; #14191: <==commonly_known== 11195 (pos)
                    (Ba_checked_p4)

                    ; #17800: <==closure== 53047 (pos)
                    (Pd_checked_p4)

                    ; #22441: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #27592: <==closure== 89749 (pos)
                    (Pc_checked_p4)

                    ; #32286: <==closure== 59946 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #33381: <==closure== 48988 (pos)
                    (Pb_checked_p4)

                    ; #46354: <==closure== 22441 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #48988: <==commonly_known== 11195 (pos)
                    (Bb_checked_p4)

                    ; #53047: <==commonly_known== 11195 (pos)
                    (Bd_checked_p4)

                    ; #59946: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #77317: <==closure== 14191 (pos)
                    (Pa_checked_p4)

                    ; #89749: <==commonly_known== 11195 (pos)
                    (Bc_checked_p4)

                    ; #14538: <==negation-removal== 77317 (pos)
                    (not (Ba_not_checked_p4))

                    ; #18607: <==uncertain_firing== 22441 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #19977: <==negation-removal== 27592 (pos)
                    (not (Bc_not_checked_p4))

                    ; #21836: <==negation-removal== 17800 (pos)
                    (not (Bd_not_checked_p4))

                    ; #22572: <==negation-removal== 14191 (pos)
                    (not (Pa_not_checked_p4))

                    ; #23911: <==negation-removal== 11195 (pos)
                    (not (not_checked_p4))

                    ; #32268: <==negation-removal== 59946 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #33556: <==negation-removal== 33381 (pos)
                    (not (Bb_not_checked_p4))

                    ; #39608: <==negation-removal== 89749 (pos)
                    (not (Pc_not_checked_p4))

                    ; #40152: <==negation-removal== 22441 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #42200: <==negation-removal== 53047 (pos)
                    (not (Pd_not_checked_p4))

                    ; #43004: <==unclosure== 71237 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #71237: <==uncertain_firing== 59946 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #72035: <==unclosure== 18607 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #84372: <==negation-removal== 48988 (pos)
                    (not (Pb_not_checked_p4))

                    ; #86131: <==negation-removal== 32286 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #87547: <==negation-removal== 46354 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #19660: <==closure== 86853 (pos)
                    (Pc_checked_p5)

                    ; #21641: <==closure== 46578 (pos)
                    (Pd_checked_p5)

                    ; #24970: origin
                    (checked_p5)

                    ; #41746: <==commonly_known== 24970 (pos)
                    (Bb_checked_p5)

                    ; #46578: <==commonly_known== 24970 (pos)
                    (Bd_checked_p5)

                    ; #59366: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #64103: <==closure== 41746 (pos)
                    (Pb_checked_p5)

                    ; #70041: <==closure== 78073 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #75226: <==closure== 81518 (pos)
                    (Pa_checked_p5)

                    ; #77577: <==closure== 59366 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #78073: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #81518: <==commonly_known== 24970 (pos)
                    (Ba_checked_p5)

                    ; #86853: <==commonly_known== 24970 (pos)
                    (Bc_checked_p5)

                    ; #12932: <==negation-removal== 70041 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #16840: <==negation-removal== 59366 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #25505: <==negation-removal== 64103 (pos)
                    (not (Bb_not_checked_p5))

                    ; #29685: <==uncertain_firing== 78073 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #34227: <==negation-removal== 24970 (pos)
                    (not (not_checked_p5))

                    ; #40239: <==negation-removal== 19660 (pos)
                    (not (Bc_not_checked_p5))

                    ; #45534: <==negation-removal== 78073 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #50150: <==negation-removal== 86853 (pos)
                    (not (Pc_not_checked_p5))

                    ; #50872: <==unclosure== 87929 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #54234: <==negation-removal== 75226 (pos)
                    (not (Ba_not_checked_p5))

                    ; #54967: <==negation-removal== 21641 (pos)
                    (not (Bd_not_checked_p5))

                    ; #69820: <==negation-removal== 41746 (pos)
                    (not (Pb_not_checked_p5))

                    ; #75308: <==negation-removal== 46578 (pos)
                    (not (Pd_not_checked_p5))

                    ; #83932: <==negation-removal== 77577 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #84036: <==negation-removal== 81518 (pos)
                    (not (Pa_not_checked_p5))

                    ; #87929: <==uncertain_firing== 59366 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #89756: <==unclosure== 29685 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11684: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #21634: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #23487: <==closure== 11684 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #31302: <==commonly_known== 38344 (pos)
                    (Bb_checked_p6)

                    ; #31826: <==commonly_known== 38344 (pos)
                    (Bd_checked_p6)

                    ; #37105: <==closure== 78010 (pos)
                    (Pa_checked_p6)

                    ; #38344: origin
                    (checked_p6)

                    ; #56124: <==closure== 64344 (pos)
                    (Pc_checked_p6)

                    ; #64344: <==commonly_known== 38344 (pos)
                    (Bc_checked_p6)

                    ; #66889: <==closure== 21634 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #78010: <==commonly_known== 38344 (pos)
                    (Ba_checked_p6)

                    ; #87003: <==closure== 31826 (pos)
                    (Pd_checked_p6)

                    ; #91809: <==closure== 31302 (pos)
                    (Pb_checked_p6)

                    ; #16523: <==negation-removal== 66889 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #18488: <==negation-removal== 78010 (pos)
                    (not (Pa_not_checked_p6))

                    ; #27565: <==negation-removal== 87003 (pos)
                    (not (Bd_not_checked_p6))

                    ; #29765: <==unclosure== 88169 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #32151: <==uncertain_firing== 21634 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #42132: <==negation-removal== 56124 (pos)
                    (not (Bc_not_checked_p6))

                    ; #52674: <==negation-removal== 91809 (pos)
                    (not (Bb_not_checked_p6))

                    ; #52912: <==negation-removal== 21634 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #53067: <==negation-removal== 31826 (pos)
                    (not (Pd_not_checked_p6))

                    ; #54991: <==negation-removal== 31302 (pos)
                    (not (Pb_not_checked_p6))

                    ; #66103: <==negation-removal== 11684 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #70866: <==negation-removal== 23487 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #78376: <==unclosure== 32151 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #79787: <==negation-removal== 38344 (pos)
                    (not (not_checked_p6))

                    ; #88169: <==uncertain_firing== 11684 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #88333: <==negation-removal== 64344 (pos)
                    (not (Pc_not_checked_p6))

                    ; #91258: <==negation-removal== 37105 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19200: <==closure== 56754 (pos)
                    (Pd_checked_p7)

                    ; #20013: <==closure== 90570 (pos)
                    (Pb_checked_p7)

                    ; #25552: <==closure== 44809 (pos)
                    (Pc_checked_p7)

                    ; #30791: <==closure== 36315 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #36315: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #44809: <==commonly_known== 71089 (pos)
                    (Bc_checked_p7)

                    ; #53514: <==closure== 75466 (pos)
                    (Pa_checked_p7)

                    ; #56754: <==commonly_known== 71089 (pos)
                    (Bd_checked_p7)

                    ; #71089: origin
                    (checked_p7)

                    ; #74111: <==closure== 78999 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #75466: <==commonly_known== 71089 (pos)
                    (Ba_checked_p7)

                    ; #78999: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #90570: <==commonly_known== 71089 (pos)
                    (Bb_checked_p7)

                    ; #15110: <==negation-removal== 19200 (pos)
                    (not (Bd_not_checked_p7))

                    ; #16678: <==negation-removal== 56754 (pos)
                    (not (Pd_not_checked_p7))

                    ; #25704: <==negation-removal== 30791 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #30586: <==negation-removal== 90570 (pos)
                    (not (Pb_not_checked_p7))

                    ; #43296: <==negation-removal== 53514 (pos)
                    (not (Ba_not_checked_p7))

                    ; #49703: <==negation-removal== 25552 (pos)
                    (not (Bc_not_checked_p7))

                    ; #59544: <==negation-removal== 78999 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #61061: <==negation-removal== 36315 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #61336: <==uncertain_firing== 78999 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #62374: <==negation-removal== 74111 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #63784: <==uncertain_firing== 36315 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #65160: <==unclosure== 61336 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #71024: <==negation-removal== 44809 (pos)
                    (not (Pc_not_checked_p7))

                    ; #73278: <==unclosure== 63784 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #80006: <==negation-removal== 20013 (pos)
                    (not (Bb_not_checked_p7))

                    ; #88068: <==negation-removal== 75466 (pos)
                    (not (Pa_not_checked_p7))

                    ; #89089: <==negation-removal== 71089 (pos)
                    (not (not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14514: <==commonly_known== 38526 (pos)
                    (Bc_checked_p8)

                    ; #15161: <==commonly_known== 38526 (pos)
                    (Bd_checked_p8)

                    ; #22050: <==commonly_known== 38526 (pos)
                    (Ba_checked_p8)

                    ; #22229: <==closure== 14514 (pos)
                    (Pc_checked_p8)

                    ; #27328: <==closure== 83253 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #38526: origin
                    (checked_p8)

                    ; #38548: <==closure== 68572 (pos)
                    (Pb_checked_p8)

                    ; #53103: <==closure== 22050 (pos)
                    (Pa_checked_p8)

                    ; #56492: <==closure== 15161 (pos)
                    (Pd_checked_p8)

                    ; #56938: <==closure== 71644 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #68572: <==commonly_known== 38526 (pos)
                    (Bb_checked_p8)

                    ; #71644: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #83253: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #11696: <==unclosure== 18209 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #18209: <==uncertain_firing== 83253 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #20572: <==negation-removal== 38548 (pos)
                    (not (Bb_not_checked_p8))

                    ; #34812: <==unclosure== 56884 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #34861: <==negation-removal== 53103 (pos)
                    (not (Ba_not_checked_p8))

                    ; #40059: <==negation-removal== 56938 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #40776: <==negation-removal== 38526 (pos)
                    (not (not_checked_p8))

                    ; #48147: <==negation-removal== 68572 (pos)
                    (not (Pb_not_checked_p8))

                    ; #49619: <==negation-removal== 56492 (pos)
                    (not (Bd_not_checked_p8))

                    ; #50745: <==negation-removal== 14514 (pos)
                    (not (Pc_not_checked_p8))

                    ; #52245: <==negation-removal== 83253 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #56884: <==uncertain_firing== 71644 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #62844: <==negation-removal== 71644 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #81236: <==negation-removal== 27328 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #86186: <==negation-removal== 15161 (pos)
                    (not (Pd_not_checked_p8))

                    ; #86908: <==negation-removal== 22050 (pos)
                    (not (Pa_not_checked_p8))

                    ; #91773: <==negation-removal== 22229 (pos)
                    (not (Bc_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11359: <==commonly_known== 19599 (pos)
                    (Bb_checked_p9)

                    ; #14496: <==closure== 50218 (pos)
                    (Pa_checked_p9)

                    ; #19599: origin
                    (checked_p9)

                    ; #22259: <==closure== 11359 (pos)
                    (Pb_checked_p9)

                    ; #24643: <==closure== 90326 (pos)
                    (Pd_checked_p9)

                    ; #30380: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #39612: <==commonly_known== 19599 (pos)
                    (Bc_checked_p9)

                    ; #50218: <==commonly_known== 19599 (pos)
                    (Ba_checked_p9)

                    ; #56989: <==closure== 39612 (pos)
                    (Pc_checked_p9)

                    ; #69040: <==closure== 30380 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #75638: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #85560: <==closure== 75638 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #90326: <==commonly_known== 19599 (pos)
                    (Bd_checked_p9)

                    ; #11161: <==negation-removal== 30380 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #22444: <==negation-removal== 22259 (pos)
                    (not (Bb_not_checked_p9))

                    ; #36466: <==negation-removal== 75638 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #38307: <==negation-removal== 11359 (pos)
                    (not (Pb_not_checked_p9))

                    ; #39890: <==negation-removal== 24643 (pos)
                    (not (Bd_not_checked_p9))

                    ; #49288: <==unclosure== 87625 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #52471: <==negation-removal== 90326 (pos)
                    (not (Pd_not_checked_p9))

                    ; #64277: <==negation-removal== 50218 (pos)
                    (not (Pa_not_checked_p9))

                    ; #66489: <==negation-removal== 85560 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #73212: <==uncertain_firing== 75638 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #78754: <==negation-removal== 56989 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82999: <==negation-removal== 14496 (pos)
                    (not (Ba_not_checked_p9))

                    ; #85470: <==unclosure== 73212 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #87452: <==negation-removal== 39612 (pos)
                    (not (Pc_not_checked_p9))

                    ; #87625: <==uncertain_firing== 30380 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #89202: <==negation-removal== 69040 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #96782: <==negation-removal== 19599 (pos)
                    (not (not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11532: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #14279: <==commonly_known== 84802 (pos)
                    (Bd_checked_p10)

                    ; #19493: <==closure== 14279 (pos)
                    (Pd_checked_p10)

                    ; #21007: <==closure== 83295 (pos)
                    (Pa_checked_p10)

                    ; #23275: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #30940: <==closure== 23275 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #31887: <==closure== 80608 (pos)
                    (Pb_checked_p10)

                    ; #49354: <==closure== 11532 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #56228: <==commonly_known== 84802 (pos)
                    (Bc_checked_p10)

                    ; #80608: <==commonly_known== 84802 (pos)
                    (Bb_checked_p10)

                    ; #83295: <==commonly_known== 84802 (pos)
                    (Ba_checked_p10)

                    ; #84802: origin
                    (checked_p10)

                    ; #90979: <==closure== 56228 (pos)
                    (Pc_checked_p10)

                    ; #12571: <==uncertain_firing== 23275 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #20696: <==negation-removal== 90979 (pos)
                    (not (Bc_not_checked_p10))

                    ; #21973: <==negation-removal== 11532 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #24031: <==negation-removal== 56228 (pos)
                    (not (Pc_not_checked_p10))

                    ; #32094: <==negation-removal== 19493 (pos)
                    (not (Bd_not_checked_p10))

                    ; #32341: <==negation-removal== 84802 (pos)
                    (not (not_checked_p10))

                    ; #42330: <==negation-removal== 31887 (pos)
                    (not (Bb_not_checked_p10))

                    ; #46484: <==negation-removal== 49354 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #49882: <==negation-removal== 83295 (pos)
                    (not (Pa_not_checked_p10))

                    ; #52880: <==negation-removal== 30940 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #62399: <==negation-removal== 14279 (pos)
                    (not (Pd_not_checked_p10))

                    ; #65526: <==unclosure== 12571 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #65942: <==negation-removal== 21007 (pos)
                    (not (Ba_not_checked_p10))

                    ; #66900: <==negation-removal== 80608 (pos)
                    (not (Pb_not_checked_p10))

                    ; #67612: <==uncertain_firing== 11532 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #73761: <==unclosure== 67612 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #80139: <==negation-removal== 23275 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #20391: <==closure== 47957 (pos)
                    (Pa_checked_p11)

                    ; #21489: origin
                    (checked_p11)

                    ; #26030: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #30192: <==closure== 42615 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #33913: <==closure== 26030 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #34543: <==commonly_known== 21489 (pos)
                    (Bc_checked_p11)

                    ; #40470: <==commonly_known== 21489 (pos)
                    (Bb_checked_p11)

                    ; #42615: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #47957: <==commonly_known== 21489 (pos)
                    (Ba_checked_p11)

                    ; #50129: <==closure== 40470 (pos)
                    (Pb_checked_p11)

                    ; #50505: <==closure== 34543 (pos)
                    (Pc_checked_p11)

                    ; #60104: <==closure== 84643 (pos)
                    (Pd_checked_p11)

                    ; #84643: <==commonly_known== 21489 (pos)
                    (Bd_checked_p11)

                    ; #13089: <==negation-removal== 21489 (pos)
                    (not (not_checked_p11))

                    ; #19274: <==negation-removal== 33913 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #20881: <==negation-removal== 50129 (pos)
                    (not (Bb_not_checked_p11))

                    ; #29344: <==negation-removal== 26030 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #33348: <==negation-removal== 42615 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #36968: <==negation-removal== 34543 (pos)
                    (not (Pc_not_checked_p11))

                    ; #44964: <==negation-removal== 84643 (pos)
                    (not (Pd_not_checked_p11))

                    ; #49589: <==uncertain_firing== 26030 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #57301: <==unclosure== 60799 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #59561: <==negation-removal== 40470 (pos)
                    (not (Pb_not_checked_p11))

                    ; #60799: <==uncertain_firing== 42615 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #65971: <==negation-removal== 47957 (pos)
                    (not (Pa_not_checked_p11))

                    ; #73460: <==negation-removal== 30192 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #75214: <==negation-removal== 50505 (pos)
                    (not (Bc_not_checked_p11))

                    ; #82072: <==negation-removal== 60104 (pos)
                    (not (Bd_not_checked_p11))

                    ; #86445: <==negation-removal== 20391 (pos)
                    (not (Ba_not_checked_p11))

                    ; #91089: <==unclosure== 49589 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10958: <==commonly_known== 74173 (pos)
                    (Bd_checked_p12)

                    ; #13239: <==closure== 10958 (pos)
                    (Pd_checked_p12)

                    ; #44500: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #48793: <==closure== 91814 (pos)
                    (Pa_checked_p12)

                    ; #56908: <==commonly_known== 74173 (pos)
                    (Bc_checked_p12)

                    ; #74173: origin
                    (checked_p12)

                    ; #76202: <==commonly_known== 74173 (pos)
                    (Bb_checked_p12)

                    ; #78053: <==closure== 76202 (pos)
                    (Pb_checked_p12)

                    ; #78487: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #84110: <==closure== 78487 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #90391: <==closure== 44500 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #90809: <==closure== 56908 (pos)
                    (Pc_checked_p12)

                    ; #91814: <==commonly_known== 74173 (pos)
                    (Ba_checked_p12)

                    ; #12277: <==negation-removal== 90391 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #12910: <==uncertain_firing== 44500 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #18619: <==negation-removal== 76202 (pos)
                    (not (Pb_not_checked_p12))

                    ; #19552: <==negation-removal== 56908 (pos)
                    (not (Pc_not_checked_p12))

                    ; #26363: <==negation-removal== 10958 (pos)
                    (not (Pd_not_checked_p12))

                    ; #28970: <==uncertain_firing== 78487 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #30874: <==negation-removal== 78487 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #35016: <==negation-removal== 90809 (pos)
                    (not (Bc_not_checked_p12))

                    ; #39914: <==negation-removal== 13239 (pos)
                    (not (Bd_not_checked_p12))

                    ; #46725: <==unclosure== 12910 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #51614: <==negation-removal== 78053 (pos)
                    (not (Bb_not_checked_p12))

                    ; #53337: <==negation-removal== 48793 (pos)
                    (not (Ba_not_checked_p12))

                    ; #62876: <==unclosure== 28970 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #74533: <==negation-removal== 91814 (pos)
                    (not (Pa_not_checked_p12))

                    ; #74729: <==negation-removal== 44500 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #82372: <==negation-removal== 74173 (pos)
                    (not (not_checked_p12))

                    ; #86639: <==negation-removal== 84110 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13044: <==commonly_known== 38026 (pos)
                    (Bd_checked_p1)

                    ; #21711: <==closure== 13044 (pos)
                    (Pd_checked_p1)

                    ; #22250: <==closure== 71168 (pos)
                    (Pa_checked_p1)

                    ; #26511: <==closure== 69078 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #29060: <==closure== 66205 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #34114: <==closure== 64162 (pos)
                    (Pc_checked_p1)

                    ; #38026: origin
                    (checked_p1)

                    ; #41279: <==commonly_known== 38026 (pos)
                    (Bb_checked_p1)

                    ; #64162: <==commonly_known== 38026 (pos)
                    (Bc_checked_p1)

                    ; #66205: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #69078: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #71168: <==commonly_known== 38026 (pos)
                    (Ba_checked_p1)

                    ; #77128: <==closure== 41279 (pos)
                    (Pb_checked_p1)

                    ; #11005: <==negation-removal== 69078 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #32465: <==negation-removal== 77128 (pos)
                    (not (Bb_not_checked_p1))

                    ; #33436: <==unclosure== 34090 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #34090: <==uncertain_firing== 66205 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #40330: <==negation-removal== 71168 (pos)
                    (not (Pa_not_checked_p1))

                    ; #44740: <==negation-removal== 26511 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #46704: <==negation-removal== 13044 (pos)
                    (not (Pd_not_checked_p1))

                    ; #51578: <==unclosure== 90134 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #53504: <==negation-removal== 41279 (pos)
                    (not (Pb_not_checked_p1))

                    ; #53873: <==negation-removal== 21711 (pos)
                    (not (Bd_not_checked_p1))

                    ; #61791: <==negation-removal== 66205 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #80566: <==negation-removal== 29060 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #84183: <==negation-removal== 34114 (pos)
                    (not (Bc_not_checked_p1))

                    ; #87823: <==negation-removal== 38026 (pos)
                    (not (not_checked_p1))

                    ; #90134: <==uncertain_firing== 69078 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #90889: <==negation-removal== 22250 (pos)
                    (not (Ba_not_checked_p1))

                    ; #98328: <==negation-removal== 64162 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #18349: origin
                    (checked_p2)

                    ; #20218: <==closure== 70527 (pos)
                    (Pb_checked_p2)

                    ; #29313: <==commonly_known== 18349 (pos)
                    (Bc_checked_p2)

                    ; #31032: <==closure== 29313 (pos)
                    (Pc_checked_p2)

                    ; #31703: <==closure== 91664 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #41767: <==closure== 57662 (pos)
                    (Pd_checked_p2)

                    ; #45815: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #47746: <==closure== 45815 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #57662: <==commonly_known== 18349 (pos)
                    (Bd_checked_p2)

                    ; #70527: <==commonly_known== 18349 (pos)
                    (Bb_checked_p2)

                    ; #74513: <==commonly_known== 18349 (pos)
                    (Ba_checked_p2)

                    ; #82605: <==closure== 74513 (pos)
                    (Pa_checked_p2)

                    ; #91664: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #15575: <==negation-removal== 29313 (pos)
                    (not (Pc_not_checked_p2))

                    ; #26298: <==negation-removal== 74513 (pos)
                    (not (Pa_not_checked_p2))

                    ; #26316: <==negation-removal== 91664 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #28388: <==unclosure== 58143 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #29628: <==negation-removal== 31032 (pos)
                    (not (Bc_not_checked_p2))

                    ; #30916: <==negation-removal== 41767 (pos)
                    (not (Bd_not_checked_p2))

                    ; #34927: <==negation-removal== 20218 (pos)
                    (not (Bb_not_checked_p2))

                    ; #37149: <==negation-removal== 31703 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #58143: <==uncertain_firing== 91664 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #59060: <==negation-removal== 70527 (pos)
                    (not (Pb_not_checked_p2))

                    ; #61155: <==negation-removal== 47746 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #71930: <==negation-removal== 45815 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #79372: <==negation-removal== 82605 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87790: <==negation-removal== 57662 (pos)
                    (not (Pd_not_checked_p2))

                    ; #87875: <==unclosure== 90173 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #90173: <==uncertain_firing== 45815 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #91684: <==negation-removal== 18349 (pos)
                    (not (not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13033: <==commonly_known== 55934 (pos)
                    (Bc_checked_p3)

                    ; #17731: <==closure== 51818 (pos)
                    (Pd_checked_p3)

                    ; #25397: <==commonly_known== 55934 (pos)
                    (Bb_checked_p3)

                    ; #29375: <==closure== 13033 (pos)
                    (Pc_checked_p3)

                    ; #44084: <==commonly_known== 55934 (pos)
                    (Ba_checked_p3)

                    ; #44362: <==closure== 77277 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #51818: <==commonly_known== 55934 (pos)
                    (Bd_checked_p3)

                    ; #55934: origin
                    (checked_p3)

                    ; #56889: <==closure== 44084 (pos)
                    (Pa_checked_p3)

                    ; #74977: <==closure== 86807 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #77277: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #86807: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #91211: <==closure== 25397 (pos)
                    (Pb_checked_p3)

                    ; #11257: <==negation-removal== 51818 (pos)
                    (not (Pd_not_checked_p3))

                    ; #12541: <==negation-removal== 44084 (pos)
                    (not (Pa_not_checked_p3))

                    ; #15810: <==negation-removal== 86807 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #20763: <==negation-removal== 29375 (pos)
                    (not (Bc_not_checked_p3))

                    ; #26893: <==negation-removal== 56889 (pos)
                    (not (Ba_not_checked_p3))

                    ; #26923: <==uncertain_firing== 86807 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #27911: <==negation-removal== 17731 (pos)
                    (not (Bd_not_checked_p3))

                    ; #41772: <==unclosure== 54816 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #45201: <==unclosure== 26923 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #45628: <==negation-removal== 77277 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #53370: <==negation-removal== 44362 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #54816: <==uncertain_firing== 77277 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #62222: <==negation-removal== 55934 (pos)
                    (not (not_checked_p3))

                    ; #71416: <==negation-removal== 25397 (pos)
                    (not (Pb_not_checked_p3))

                    ; #75359: <==negation-removal== 91211 (pos)
                    (not (Bb_not_checked_p3))

                    ; #79377: <==negation-removal== 74977 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #82865: <==negation-removal== 13033 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11195: origin
                    (checked_p4)

                    ; #14191: <==commonly_known== 11195 (pos)
                    (Ba_checked_p4)

                    ; #17800: <==closure== 53047 (pos)
                    (Pd_checked_p4)

                    ; #27592: <==closure== 89749 (pos)
                    (Pc_checked_p4)

                    ; #33381: <==closure== 48988 (pos)
                    (Pb_checked_p4)

                    ; #44312: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #48988: <==commonly_known== 11195 (pos)
                    (Bb_checked_p4)

                    ; #53047: <==commonly_known== 11195 (pos)
                    (Bd_checked_p4)

                    ; #74135: <==closure== 81607 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #77317: <==closure== 14191 (pos)
                    (Pa_checked_p4)

                    ; #81607: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #83976: <==closure== 44312 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #89749: <==commonly_known== 11195 (pos)
                    (Bc_checked_p4)

                    ; #14160: <==uncertain_firing== 44312 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #14538: <==negation-removal== 77317 (pos)
                    (not (Ba_not_checked_p4))

                    ; #19977: <==negation-removal== 27592 (pos)
                    (not (Bc_not_checked_p4))

                    ; #21836: <==negation-removal== 17800 (pos)
                    (not (Bd_not_checked_p4))

                    ; #22572: <==negation-removal== 14191 (pos)
                    (not (Pa_not_checked_p4))

                    ; #23911: <==negation-removal== 11195 (pos)
                    (not (not_checked_p4))

                    ; #33556: <==negation-removal== 33381 (pos)
                    (not (Bb_not_checked_p4))

                    ; #39608: <==negation-removal== 89749 (pos)
                    (not (Pc_not_checked_p4))

                    ; #42200: <==negation-removal== 53047 (pos)
                    (not (Pd_not_checked_p4))

                    ; #46290: <==negation-removal== 74135 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #46760: <==negation-removal== 44312 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #54043: <==unclosure== 14160 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #73471: <==negation-removal== 81607 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #82501: <==negation-removal== 83976 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #84372: <==negation-removal== 48988 (pos)
                    (not (Pb_not_checked_p4))

                    ; #84876: <==unclosure== 86903 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #86903: <==uncertain_firing== 81607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #19660: <==closure== 86853 (pos)
                    (Pc_checked_p5)

                    ; #21641: <==closure== 46578 (pos)
                    (Pd_checked_p5)

                    ; #24970: origin
                    (checked_p5)

                    ; #26118: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #41746: <==commonly_known== 24970 (pos)
                    (Bb_checked_p5)

                    ; #46578: <==commonly_known== 24970 (pos)
                    (Bd_checked_p5)

                    ; #61446: <==closure== 70245 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #64103: <==closure== 41746 (pos)
                    (Pb_checked_p5)

                    ; #70245: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #75226: <==closure== 81518 (pos)
                    (Pa_checked_p5)

                    ; #81518: <==commonly_known== 24970 (pos)
                    (Ba_checked_p5)

                    ; #85449: <==closure== 26118 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #86853: <==commonly_known== 24970 (pos)
                    (Bc_checked_p5)

                    ; #18703: <==negation-removal== 85449 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #25505: <==negation-removal== 64103 (pos)
                    (not (Bb_not_checked_p5))

                    ; #34227: <==negation-removal== 24970 (pos)
                    (not (not_checked_p5))

                    ; #35560: <==uncertain_firing== 26118 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #40239: <==negation-removal== 19660 (pos)
                    (not (Bc_not_checked_p5))

                    ; #41703: <==negation-removal== 61446 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #44954: <==negation-removal== 70245 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #48026: <==unclosure== 35560 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #50150: <==negation-removal== 86853 (pos)
                    (not (Pc_not_checked_p5))

                    ; #51245: <==uncertain_firing== 70245 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #54234: <==negation-removal== 75226 (pos)
                    (not (Ba_not_checked_p5))

                    ; #54967: <==negation-removal== 21641 (pos)
                    (not (Bd_not_checked_p5))

                    ; #67037: <==negation-removal== 26118 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #69820: <==negation-removal== 41746 (pos)
                    (not (Pb_not_checked_p5))

                    ; #75308: <==negation-removal== 46578 (pos)
                    (not (Pd_not_checked_p5))

                    ; #75625: <==unclosure== 51245 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #84036: <==negation-removal== 81518 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12591: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #31302: <==commonly_known== 38344 (pos)
                    (Bb_checked_p6)

                    ; #31826: <==commonly_known== 38344 (pos)
                    (Bd_checked_p6)

                    ; #36350: <==closure== 12591 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #37105: <==closure== 78010 (pos)
                    (Pa_checked_p6)

                    ; #38344: origin
                    (checked_p6)

                    ; #45140: <==closure== 55479 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #55479: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #56124: <==closure== 64344 (pos)
                    (Pc_checked_p6)

                    ; #64344: <==commonly_known== 38344 (pos)
                    (Bc_checked_p6)

                    ; #78010: <==commonly_known== 38344 (pos)
                    (Ba_checked_p6)

                    ; #87003: <==closure== 31826 (pos)
                    (Pd_checked_p6)

                    ; #91809: <==closure== 31302 (pos)
                    (Pb_checked_p6)

                    ; #11677: <==uncertain_firing== 12591 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #18488: <==negation-removal== 78010 (pos)
                    (not (Pa_not_checked_p6))

                    ; #27565: <==negation-removal== 87003 (pos)
                    (not (Bd_not_checked_p6))

                    ; #42132: <==negation-removal== 56124 (pos)
                    (not (Bc_not_checked_p6))

                    ; #44276: <==uncertain_firing== 55479 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #52674: <==negation-removal== 91809 (pos)
                    (not (Bb_not_checked_p6))

                    ; #53067: <==negation-removal== 31826 (pos)
                    (not (Pd_not_checked_p6))

                    ; #54991: <==negation-removal== 31302 (pos)
                    (not (Pb_not_checked_p6))

                    ; #64282: <==negation-removal== 36350 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #68372: <==unclosure== 11677 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #74818: <==negation-removal== 55479 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #79787: <==negation-removal== 38344 (pos)
                    (not (not_checked_p6))

                    ; #86329: <==unclosure== 44276 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #88333: <==negation-removal== 64344 (pos)
                    (not (Pc_not_checked_p6))

                    ; #91258: <==negation-removal== 37105 (pos)
                    (not (Ba_not_checked_p6))

                    ; #91569: <==negation-removal== 12591 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #95876: <==negation-removal== 45140 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14817: <==closure== 21941 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #19200: <==closure== 56754 (pos)
                    (Pd_checked_p7)

                    ; #20013: <==closure== 90570 (pos)
                    (Pb_checked_p7)

                    ; #21941: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #25552: <==closure== 44809 (pos)
                    (Pc_checked_p7)

                    ; #44809: <==commonly_known== 71089 (pos)
                    (Bc_checked_p7)

                    ; #53514: <==closure== 75466 (pos)
                    (Pa_checked_p7)

                    ; #55392: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #56754: <==commonly_known== 71089 (pos)
                    (Bd_checked_p7)

                    ; #70472: <==closure== 55392 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #71089: origin
                    (checked_p7)

                    ; #75466: <==commonly_known== 71089 (pos)
                    (Ba_checked_p7)

                    ; #90570: <==commonly_known== 71089 (pos)
                    (Bb_checked_p7)

                    ; #14860: <==unclosure== 85802 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #15110: <==negation-removal== 19200 (pos)
                    (not (Bd_not_checked_p7))

                    ; #16678: <==negation-removal== 56754 (pos)
                    (not (Pd_not_checked_p7))

                    ; #20022: <==negation-removal== 70472 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #30586: <==negation-removal== 90570 (pos)
                    (not (Pb_not_checked_p7))

                    ; #43296: <==negation-removal== 53514 (pos)
                    (not (Ba_not_checked_p7))

                    ; #49703: <==negation-removal== 25552 (pos)
                    (not (Bc_not_checked_p7))

                    ; #60216: <==uncertain_firing== 55392 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #67874: <==unclosure== 60216 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #68452: <==negation-removal== 14817 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #70223: <==negation-removal== 21941 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #71024: <==negation-removal== 44809 (pos)
                    (not (Pc_not_checked_p7))

                    ; #80006: <==negation-removal== 20013 (pos)
                    (not (Bb_not_checked_p7))

                    ; #83862: <==negation-removal== 55392 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #85802: <==uncertain_firing== 21941 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #88068: <==negation-removal== 75466 (pos)
                    (not (Pa_not_checked_p7))

                    ; #89089: <==negation-removal== 71089 (pos)
                    (not (not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14514: <==commonly_known== 38526 (pos)
                    (Bc_checked_p8)

                    ; #15161: <==commonly_known== 38526 (pos)
                    (Bd_checked_p8)

                    ; #22050: <==commonly_known== 38526 (pos)
                    (Ba_checked_p8)

                    ; #22229: <==closure== 14514 (pos)
                    (Pc_checked_p8)

                    ; #27181: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #38526: origin
                    (checked_p8)

                    ; #38548: <==closure== 68572 (pos)
                    (Pb_checked_p8)

                    ; #38924: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #53103: <==closure== 22050 (pos)
                    (Pa_checked_p8)

                    ; #56492: <==closure== 15161 (pos)
                    (Pd_checked_p8)

                    ; #60117: <==closure== 27181 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #68572: <==commonly_known== 38526 (pos)
                    (Bb_checked_p8)

                    ; #84813: <==closure== 38924 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #20572: <==negation-removal== 38548 (pos)
                    (not (Bb_not_checked_p8))

                    ; #33429: <==unclosure== 38523 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #34861: <==negation-removal== 53103 (pos)
                    (not (Ba_not_checked_p8))

                    ; #38221: <==negation-removal== 60117 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #38523: <==uncertain_firing== 38924 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #40776: <==negation-removal== 38526 (pos)
                    (not (not_checked_p8))

                    ; #44492: <==negation-removal== 84813 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #46471: <==unclosure== 46637 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #46488: <==negation-removal== 27181 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #46637: <==uncertain_firing== 27181 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #48147: <==negation-removal== 68572 (pos)
                    (not (Pb_not_checked_p8))

                    ; #49619: <==negation-removal== 56492 (pos)
                    (not (Bd_not_checked_p8))

                    ; #50745: <==negation-removal== 14514 (pos)
                    (not (Pc_not_checked_p8))

                    ; #64156: <==negation-removal== 38924 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #86186: <==negation-removal== 15161 (pos)
                    (not (Pd_not_checked_p8))

                    ; #86908: <==negation-removal== 22050 (pos)
                    (not (Pa_not_checked_p8))

                    ; #91773: <==negation-removal== 22229 (pos)
                    (not (Bc_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11359: <==commonly_known== 19599 (pos)
                    (Bb_checked_p9)

                    ; #14496: <==closure== 50218 (pos)
                    (Pa_checked_p9)

                    ; #19599: origin
                    (checked_p9)

                    ; #22259: <==closure== 11359 (pos)
                    (Pb_checked_p9)

                    ; #24643: <==closure== 90326 (pos)
                    (Pd_checked_p9)

                    ; #29319: <==closure== 51578 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #38483: <==closure== 85197 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #39612: <==commonly_known== 19599 (pos)
                    (Bc_checked_p9)

                    ; #50218: <==commonly_known== 19599 (pos)
                    (Ba_checked_p9)

                    ; #51578: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #56989: <==closure== 39612 (pos)
                    (Pc_checked_p9)

                    ; #85197: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #90326: <==commonly_known== 19599 (pos)
                    (Bd_checked_p9)

                    ; #15210: <==unclosure== 54022 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #22444: <==negation-removal== 22259 (pos)
                    (not (Bb_not_checked_p9))

                    ; #35753: <==negation-removal== 38483 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #37247: <==unclosure== 73206 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #38307: <==negation-removal== 11359 (pos)
                    (not (Pb_not_checked_p9))

                    ; #39890: <==negation-removal== 24643 (pos)
                    (not (Bd_not_checked_p9))

                    ; #45465: <==negation-removal== 51578 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #52471: <==negation-removal== 90326 (pos)
                    (not (Pd_not_checked_p9))

                    ; #54022: <==uncertain_firing== 85197 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #64277: <==negation-removal== 50218 (pos)
                    (not (Pa_not_checked_p9))

                    ; #69214: <==negation-removal== 85197 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #73206: <==uncertain_firing== 51578 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #78754: <==negation-removal== 56989 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82999: <==negation-removal== 14496 (pos)
                    (not (Ba_not_checked_p9))

                    ; #87452: <==negation-removal== 39612 (pos)
                    (not (Pc_not_checked_p9))

                    ; #95420: <==negation-removal== 29319 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #96782: <==negation-removal== 19599 (pos)
                    (not (not_checked_p9))))

    (:action observ_d_p10_s
        :precondition (and (at_d_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14279: <==commonly_known== 84802 (pos)
                    (Bd_checked_p10)

                    ; #19493: <==closure== 14279 (pos)
                    (Pd_checked_p10)

                    ; #21007: <==closure== 83295 (pos)
                    (Pa_checked_p10)

                    ; #31887: <==closure== 80608 (pos)
                    (Pb_checked_p10)

                    ; #43530: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #48244: <==closure== 62561 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #56228: <==commonly_known== 84802 (pos)
                    (Bc_checked_p10)

                    ; #62561: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #80608: <==commonly_known== 84802 (pos)
                    (Bb_checked_p10)

                    ; #83295: <==commonly_known== 84802 (pos)
                    (Ba_checked_p10)

                    ; #84802: origin
                    (checked_p10)

                    ; #86196: <==closure== 43530 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #90979: <==closure== 56228 (pos)
                    (Pc_checked_p10)

                    ; #20696: <==negation-removal== 90979 (pos)
                    (not (Bc_not_checked_p10))

                    ; #24031: <==negation-removal== 56228 (pos)
                    (not (Pc_not_checked_p10))

                    ; #26484: <==negation-removal== 48244 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #31909: <==negation-removal== 62561 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #32094: <==negation-removal== 19493 (pos)
                    (not (Bd_not_checked_p10))

                    ; #32341: <==negation-removal== 84802 (pos)
                    (not (not_checked_p10))

                    ; #32669: <==uncertain_firing== 62561 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #38271: <==negation-removal== 43530 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #42330: <==negation-removal== 31887 (pos)
                    (not (Bb_not_checked_p10))

                    ; #49882: <==negation-removal== 83295 (pos)
                    (not (Pa_not_checked_p10))

                    ; #52683: <==unclosure== 69031 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #62399: <==negation-removal== 14279 (pos)
                    (not (Pd_not_checked_p10))

                    ; #65942: <==negation-removal== 21007 (pos)
                    (not (Ba_not_checked_p10))

                    ; #66900: <==negation-removal== 80608 (pos)
                    (not (Pb_not_checked_p10))

                    ; #66961: <==unclosure== 32669 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #69031: <==uncertain_firing== 43530 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #89400: <==negation-removal== 86196 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))))

    (:action observ_d_p11_s
        :precondition (and (at_d_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #20391: <==closure== 47957 (pos)
                    (Pa_checked_p11)

                    ; #21489: origin
                    (checked_p11)

                    ; #32598: <==closure== 53503 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #34543: <==commonly_known== 21489 (pos)
                    (Bc_checked_p11)

                    ; #40470: <==commonly_known== 21489 (pos)
                    (Bb_checked_p11)

                    ; #47957: <==commonly_known== 21489 (pos)
                    (Ba_checked_p11)

                    ; #50129: <==closure== 40470 (pos)
                    (Pb_checked_p11)

                    ; #50505: <==closure== 34543 (pos)
                    (Pc_checked_p11)

                    ; #50638: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #53503: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #60104: <==closure== 84643 (pos)
                    (Pd_checked_p11)

                    ; #71746: <==closure== 50638 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #84643: <==commonly_known== 21489 (pos)
                    (Bd_checked_p11)

                    ; #13089: <==negation-removal== 21489 (pos)
                    (not (not_checked_p11))

                    ; #14994: <==uncertain_firing== 50638 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #20881: <==negation-removal== 50129 (pos)
                    (not (Bb_not_checked_p11))

                    ; #30350: <==negation-removal== 32598 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #30947: <==unclosure== 14994 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #36968: <==negation-removal== 34543 (pos)
                    (not (Pc_not_checked_p11))

                    ; #41919: <==negation-removal== 53503 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #42422: <==unclosure== 55971 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #44964: <==negation-removal== 84643 (pos)
                    (not (Pd_not_checked_p11))

                    ; #55971: <==uncertain_firing== 53503 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #59561: <==negation-removal== 40470 (pos)
                    (not (Pb_not_checked_p11))

                    ; #65971: <==negation-removal== 47957 (pos)
                    (not (Pa_not_checked_p11))

                    ; #73711: <==negation-removal== 71746 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #75214: <==negation-removal== 50505 (pos)
                    (not (Bc_not_checked_p11))

                    ; #82072: <==negation-removal== 60104 (pos)
                    (not (Bd_not_checked_p11))

                    ; #86445: <==negation-removal== 20391 (pos)
                    (not (Ba_not_checked_p11))

                    ; #86792: <==negation-removal== 50638 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))))

    (:action observ_d_p12_s
        :precondition (and (at_d_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10958: <==commonly_known== 74173 (pos)
                    (Bd_checked_p12)

                    ; #13239: <==closure== 10958 (pos)
                    (Pd_checked_p12)

                    ; #41952: <==closure== 86311 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #48793: <==closure== 91814 (pos)
                    (Pa_checked_p12)

                    ; #52272: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #55505: <==closure== 52272 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #56908: <==commonly_known== 74173 (pos)
                    (Bc_checked_p12)

                    ; #74173: origin
                    (checked_p12)

                    ; #76202: <==commonly_known== 74173 (pos)
                    (Bb_checked_p12)

                    ; #78053: <==closure== 76202 (pos)
                    (Pb_checked_p12)

                    ; #86311: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #90809: <==closure== 56908 (pos)
                    (Pc_checked_p12)

                    ; #91814: <==commonly_known== 74173 (pos)
                    (Ba_checked_p12)

                    ; #13439: <==negation-removal== 52272 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #16574: <==uncertain_firing== 52272 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #18619: <==negation-removal== 76202 (pos)
                    (not (Pb_not_checked_p12))

                    ; #19552: <==negation-removal== 56908 (pos)
                    (not (Pc_not_checked_p12))

                    ; #20175: <==unclosure== 21388 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #21388: <==uncertain_firing== 86311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #26363: <==negation-removal== 10958 (pos)
                    (not (Pd_not_checked_p12))

                    ; #35016: <==negation-removal== 90809 (pos)
                    (not (Bc_not_checked_p12))

                    ; #36625: <==negation-removal== 55505 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #39914: <==negation-removal== 13239 (pos)
                    (not (Bd_not_checked_p12))

                    ; #51614: <==negation-removal== 78053 (pos)
                    (not (Bb_not_checked_p12))

                    ; #53337: <==negation-removal== 48793 (pos)
                    (not (Ba_not_checked_p12))

                    ; #59181: <==negation-removal== 86311 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #65869: <==unclosure== 16574 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #74533: <==negation-removal== 91814 (pos)
                    (not (Pa_not_checked_p12))

                    ; #82372: <==negation-removal== 74173 (pos)
                    (not (not_checked_p12))

                    ; #87553: <==negation-removal== 41952 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13044: <==commonly_known== 38026 (pos)
                    (Bd_checked_p1)

                    ; #21711: <==closure== 13044 (pos)
                    (Pd_checked_p1)

                    ; #22250: <==closure== 71168 (pos)
                    (Pa_checked_p1)

                    ; #30774: <==closure== 87710 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #34114: <==closure== 64162 (pos)
                    (Pc_checked_p1)

                    ; #38026: origin
                    (checked_p1)

                    ; #41279: <==commonly_known== 38026 (pos)
                    (Bb_checked_p1)

                    ; #42971: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #64162: <==commonly_known== 38026 (pos)
                    (Bc_checked_p1)

                    ; #71168: <==commonly_known== 38026 (pos)
                    (Ba_checked_p1)

                    ; #76457: <==closure== 42971 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #77128: <==closure== 41279 (pos)
                    (Pb_checked_p1)

                    ; #87710: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #32465: <==negation-removal== 77128 (pos)
                    (not (Bb_not_checked_p1))

                    ; #37423: <==uncertain_firing== 42971 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #40330: <==negation-removal== 71168 (pos)
                    (not (Pa_not_checked_p1))

                    ; #46704: <==negation-removal== 13044 (pos)
                    (not (Pd_not_checked_p1))

                    ; #47865: <==negation-removal== 30774 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #53504: <==negation-removal== 41279 (pos)
                    (not (Pb_not_checked_p1))

                    ; #53873: <==negation-removal== 21711 (pos)
                    (not (Bd_not_checked_p1))

                    ; #58288: <==unclosure== 61210 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #61210: <==uncertain_firing== 87710 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #64384: <==negation-removal== 42971 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #67299: <==negation-removal== 87710 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #73863: <==unclosure== 37423 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #76598: <==negation-removal== 76457 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #84183: <==negation-removal== 34114 (pos)
                    (not (Bc_not_checked_p1))

                    ; #87823: <==negation-removal== 38026 (pos)
                    (not (not_checked_p1))

                    ; #90889: <==negation-removal== 22250 (pos)
                    (not (Ba_not_checked_p1))

                    ; #98328: <==negation-removal== 64162 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #18349: origin
                    (checked_p2)

                    ; #20218: <==closure== 70527 (pos)
                    (Pb_checked_p2)

                    ; #29313: <==commonly_known== 18349 (pos)
                    (Bc_checked_p2)

                    ; #31032: <==closure== 29313 (pos)
                    (Pc_checked_p2)

                    ; #41767: <==closure== 57662 (pos)
                    (Pd_checked_p2)

                    ; #42338: <==closure== 46916 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #46916: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #51113: <==closure== 78720 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #57662: <==commonly_known== 18349 (pos)
                    (Bd_checked_p2)

                    ; #70527: <==commonly_known== 18349 (pos)
                    (Bb_checked_p2)

                    ; #74513: <==commonly_known== 18349 (pos)
                    (Ba_checked_p2)

                    ; #78720: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #82605: <==closure== 74513 (pos)
                    (Pa_checked_p2)

                    ; #15575: <==negation-removal== 29313 (pos)
                    (not (Pc_not_checked_p2))

                    ; #26298: <==negation-removal== 74513 (pos)
                    (not (Pa_not_checked_p2))

                    ; #29121: <==unclosure== 57256 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #29628: <==negation-removal== 31032 (pos)
                    (not (Bc_not_checked_p2))

                    ; #30916: <==negation-removal== 41767 (pos)
                    (not (Bd_not_checked_p2))

                    ; #34927: <==negation-removal== 20218 (pos)
                    (not (Bb_not_checked_p2))

                    ; #45134: <==unclosure== 66528 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #55781: <==negation-removal== 78720 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #57256: <==uncertain_firing== 78720 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #58491: <==negation-removal== 51113 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #59060: <==negation-removal== 70527 (pos)
                    (not (Pb_not_checked_p2))

                    ; #66528: <==uncertain_firing== 46916 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #78232: <==negation-removal== 46916 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #79372: <==negation-removal== 82605 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87790: <==negation-removal== 57662 (pos)
                    (not (Pd_not_checked_p2))

                    ; #88800: <==negation-removal== 42338 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #91684: <==negation-removal== 18349 (pos)
                    (not (not_checked_p2))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13033: <==commonly_known== 55934 (pos)
                    (Bc_checked_p3)

                    ; #17731: <==closure== 51818 (pos)
                    (Pd_checked_p3)

                    ; #19947: <==closure== 59200 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #25397: <==commonly_known== 55934 (pos)
                    (Bb_checked_p3)

                    ; #29375: <==closure== 13033 (pos)
                    (Pc_checked_p3)

                    ; #38516: <==closure== 63478 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #44084: <==commonly_known== 55934 (pos)
                    (Ba_checked_p3)

                    ; #51818: <==commonly_known== 55934 (pos)
                    (Bd_checked_p3)

                    ; #55934: origin
                    (checked_p3)

                    ; #56889: <==closure== 44084 (pos)
                    (Pa_checked_p3)

                    ; #59200: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #63478: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #91211: <==closure== 25397 (pos)
                    (Pb_checked_p3)

                    ; #11257: <==negation-removal== 51818 (pos)
                    (not (Pd_not_checked_p3))

                    ; #12541: <==negation-removal== 44084 (pos)
                    (not (Pa_not_checked_p3))

                    ; #20763: <==negation-removal== 29375 (pos)
                    (not (Bc_not_checked_p3))

                    ; #22751: <==negation-removal== 38516 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #25253: <==unclosure== 54789 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #26893: <==negation-removal== 56889 (pos)
                    (not (Ba_not_checked_p3))

                    ; #27911: <==negation-removal== 17731 (pos)
                    (not (Bd_not_checked_p3))

                    ; #51124: <==negation-removal== 63478 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #54789: <==uncertain_firing== 63478 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #56962: <==unclosure== 85422 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #62222: <==negation-removal== 55934 (pos)
                    (not (not_checked_p3))

                    ; #71416: <==negation-removal== 25397 (pos)
                    (not (Pb_not_checked_p3))

                    ; #75359: <==negation-removal== 91211 (pos)
                    (not (Bb_not_checked_p3))

                    ; #79002: <==negation-removal== 59200 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #82865: <==negation-removal== 13033 (pos)
                    (not (Pc_not_checked_p3))

                    ; #85422: <==uncertain_firing== 59200 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #88949: <==negation-removal== 19947 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11195: origin
                    (checked_p4)

                    ; #14191: <==commonly_known== 11195 (pos)
                    (Ba_checked_p4)

                    ; #17800: <==closure== 53047 (pos)
                    (Pd_checked_p4)

                    ; #19205: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #27592: <==closure== 89749 (pos)
                    (Pc_checked_p4)

                    ; #33381: <==closure== 48988 (pos)
                    (Pb_checked_p4)

                    ; #48988: <==commonly_known== 11195 (pos)
                    (Bb_checked_p4)

                    ; #52086: <==closure== 19205 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #53047: <==commonly_known== 11195 (pos)
                    (Bd_checked_p4)

                    ; #64802: <==closure== 69446 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #69446: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #77317: <==closure== 14191 (pos)
                    (Pa_checked_p4)

                    ; #89749: <==commonly_known== 11195 (pos)
                    (Bc_checked_p4)

                    ; #14538: <==negation-removal== 77317 (pos)
                    (not (Ba_not_checked_p4))

                    ; #19977: <==negation-removal== 27592 (pos)
                    (not (Bc_not_checked_p4))

                    ; #21836: <==negation-removal== 17800 (pos)
                    (not (Bd_not_checked_p4))

                    ; #22572: <==negation-removal== 14191 (pos)
                    (not (Pa_not_checked_p4))

                    ; #23911: <==negation-removal== 11195 (pos)
                    (not (not_checked_p4))

                    ; #28674: <==unclosure== 42734 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #33556: <==negation-removal== 33381 (pos)
                    (not (Bb_not_checked_p4))

                    ; #39608: <==negation-removal== 89749 (pos)
                    (not (Pc_not_checked_p4))

                    ; #40033: <==negation-removal== 52086 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #42200: <==negation-removal== 53047 (pos)
                    (not (Pd_not_checked_p4))

                    ; #42734: <==uncertain_firing== 19205 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #48378: <==negation-removal== 19205 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #62945: <==negation-removal== 69446 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #72950: <==uncertain_firing== 69446 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #77253: <==negation-removal== 64802 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #79647: <==unclosure== 72950 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #84372: <==negation-removal== 48988 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #19660: <==closure== 86853 (pos)
                    (Pc_checked_p5)

                    ; #21641: <==closure== 46578 (pos)
                    (Pd_checked_p5)

                    ; #24970: origin
                    (checked_p5)

                    ; #41746: <==commonly_known== 24970 (pos)
                    (Bb_checked_p5)

                    ; #46578: <==commonly_known== 24970 (pos)
                    (Bd_checked_p5)

                    ; #46626: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #64103: <==closure== 41746 (pos)
                    (Pb_checked_p5)

                    ; #75154: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #75226: <==closure== 81518 (pos)
                    (Pa_checked_p5)

                    ; #77791: <==closure== 75154 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #81518: <==commonly_known== 24970 (pos)
                    (Ba_checked_p5)

                    ; #86853: <==commonly_known== 24970 (pos)
                    (Bc_checked_p5)

                    ; #90190: <==closure== 46626 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #11887: <==negation-removal== 46626 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #25505: <==negation-removal== 64103 (pos)
                    (not (Bb_not_checked_p5))

                    ; #27454: <==unclosure== 62136 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #34227: <==negation-removal== 24970 (pos)
                    (not (not_checked_p5))

                    ; #40239: <==negation-removal== 19660 (pos)
                    (not (Bc_not_checked_p5))

                    ; #50150: <==negation-removal== 86853 (pos)
                    (not (Pc_not_checked_p5))

                    ; #53966: <==negation-removal== 75154 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #54234: <==negation-removal== 75226 (pos)
                    (not (Ba_not_checked_p5))

                    ; #54967: <==negation-removal== 21641 (pos)
                    (not (Bd_not_checked_p5))

                    ; #62136: <==uncertain_firing== 75154 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #69820: <==negation-removal== 41746 (pos)
                    (not (Pb_not_checked_p5))

                    ; #75308: <==negation-removal== 46578 (pos)
                    (not (Pd_not_checked_p5))

                    ; #80262: <==uncertain_firing== 46626 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #80940: <==negation-removal== 90190 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #83854: <==unclosure== 80262 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #84036: <==negation-removal== 81518 (pos)
                    (not (Pa_not_checked_p5))

                    ; #89380: <==negation-removal== 77791 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #21772: <==closure== 89544 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #29904: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #31302: <==commonly_known== 38344 (pos)
                    (Bb_checked_p6)

                    ; #31826: <==commonly_known== 38344 (pos)
                    (Bd_checked_p6)

                    ; #37105: <==closure== 78010 (pos)
                    (Pa_checked_p6)

                    ; #38344: origin
                    (checked_p6)

                    ; #56124: <==closure== 64344 (pos)
                    (Pc_checked_p6)

                    ; #64344: <==commonly_known== 38344 (pos)
                    (Bc_checked_p6)

                    ; #78010: <==commonly_known== 38344 (pos)
                    (Ba_checked_p6)

                    ; #81332: <==closure== 29904 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #87003: <==closure== 31826 (pos)
                    (Pd_checked_p6)

                    ; #89544: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #91809: <==closure== 31302 (pos)
                    (Pb_checked_p6)

                    ; #12953: <==negation-removal== 21772 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #18488: <==negation-removal== 78010 (pos)
                    (not (Pa_not_checked_p6))

                    ; #27565: <==negation-removal== 87003 (pos)
                    (not (Bd_not_checked_p6))

                    ; #34040: <==unclosure== 89850 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #35485: <==unclosure== 36683 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #36683: <==uncertain_firing== 29904 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #39391: <==negation-removal== 89544 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #42132: <==negation-removal== 56124 (pos)
                    (not (Bc_not_checked_p6))

                    ; #52674: <==negation-removal== 91809 (pos)
                    (not (Bb_not_checked_p6))

                    ; #53067: <==negation-removal== 31826 (pos)
                    (not (Pd_not_checked_p6))

                    ; #54991: <==negation-removal== 31302 (pos)
                    (not (Pb_not_checked_p6))

                    ; #65870: <==negation-removal== 81332 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #79572: <==negation-removal== 29904 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #79787: <==negation-removal== 38344 (pos)
                    (not (not_checked_p6))

                    ; #88333: <==negation-removal== 64344 (pos)
                    (not (Pc_not_checked_p6))

                    ; #89850: <==uncertain_firing== 89544 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #91258: <==negation-removal== 37105 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10473: <==closure== 36415 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #19200: <==closure== 56754 (pos)
                    (Pd_checked_p7)

                    ; #20013: <==closure== 90570 (pos)
                    (Pb_checked_p7)

                    ; #25552: <==closure== 44809 (pos)
                    (Pc_checked_p7)

                    ; #36415: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #39362: <==closure== 44968 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #44809: <==commonly_known== 71089 (pos)
                    (Bc_checked_p7)

                    ; #44968: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #53514: <==closure== 75466 (pos)
                    (Pa_checked_p7)

                    ; #56754: <==commonly_known== 71089 (pos)
                    (Bd_checked_p7)

                    ; #71089: origin
                    (checked_p7)

                    ; #75466: <==commonly_known== 71089 (pos)
                    (Ba_checked_p7)

                    ; #90570: <==commonly_known== 71089 (pos)
                    (Bb_checked_p7)

                    ; #13403: <==uncertain_firing== 44968 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #15110: <==negation-removal== 19200 (pos)
                    (not (Bd_not_checked_p7))

                    ; #16678: <==negation-removal== 56754 (pos)
                    (not (Pd_not_checked_p7))

                    ; #30586: <==negation-removal== 90570 (pos)
                    (not (Pb_not_checked_p7))

                    ; #34966: <==negation-removal== 39362 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #39377: <==unclosure== 66027 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #43296: <==negation-removal== 53514 (pos)
                    (not (Ba_not_checked_p7))

                    ; #49703: <==negation-removal== 25552 (pos)
                    (not (Bc_not_checked_p7))

                    ; #66027: <==uncertain_firing== 36415 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #71024: <==negation-removal== 44809 (pos)
                    (not (Pc_not_checked_p7))

                    ; #73125: <==negation-removal== 36415 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #80006: <==negation-removal== 20013 (pos)
                    (not (Bb_not_checked_p7))

                    ; #82834: <==negation-removal== 10473 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #82934: <==negation-removal== 44968 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #84972: <==unclosure== 13403 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #88068: <==negation-removal== 75466 (pos)
                    (not (Pa_not_checked_p7))

                    ; #89089: <==negation-removal== 71089 (pos)
                    (not (not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14514: <==commonly_known== 38526 (pos)
                    (Bc_checked_p8)

                    ; #15161: <==commonly_known== 38526 (pos)
                    (Bd_checked_p8)

                    ; #18128: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #22050: <==commonly_known== 38526 (pos)
                    (Ba_checked_p8)

                    ; #22229: <==closure== 14514 (pos)
                    (Pc_checked_p8)

                    ; #38526: origin
                    (checked_p8)

                    ; #38548: <==closure== 68572 (pos)
                    (Pb_checked_p8)

                    ; #48320: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #51349: <==closure== 18128 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #53103: <==closure== 22050 (pos)
                    (Pa_checked_p8)

                    ; #56492: <==closure== 15161 (pos)
                    (Pd_checked_p8)

                    ; #61779: <==closure== 48320 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #68572: <==commonly_known== 38526 (pos)
                    (Bb_checked_p8)

                    ; #18684: <==unclosure== 37898 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #20572: <==negation-removal== 38548 (pos)
                    (not (Bb_not_checked_p8))

                    ; #22612: <==unclosure== 35769 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #29843: <==negation-removal== 51349 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #34861: <==negation-removal== 53103 (pos)
                    (not (Ba_not_checked_p8))

                    ; #35769: <==uncertain_firing== 18128 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #37898: <==uncertain_firing== 48320 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #40776: <==negation-removal== 38526 (pos)
                    (not (not_checked_p8))

                    ; #43176: <==negation-removal== 18128 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #48147: <==negation-removal== 68572 (pos)
                    (not (Pb_not_checked_p8))

                    ; #49619: <==negation-removal== 56492 (pos)
                    (not (Bd_not_checked_p8))

                    ; #50745: <==negation-removal== 14514 (pos)
                    (not (Pc_not_checked_p8))

                    ; #64384: <==negation-removal== 48320 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #64540: <==negation-removal== 61779 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #86186: <==negation-removal== 15161 (pos)
                    (not (Pd_not_checked_p8))

                    ; #86908: <==negation-removal== 22050 (pos)
                    (not (Pa_not_checked_p8))

                    ; #91773: <==negation-removal== 22229 (pos)
                    (not (Bc_not_checked_p8))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11359: <==commonly_known== 19599 (pos)
                    (Bb_checked_p9)

                    ; #14496: <==closure== 50218 (pos)
                    (Pa_checked_p9)

                    ; #19152: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #19566: <==closure== 19152 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #19599: origin
                    (checked_p9)

                    ; #22259: <==closure== 11359 (pos)
                    (Pb_checked_p9)

                    ; #24643: <==closure== 90326 (pos)
                    (Pd_checked_p9)

                    ; #39612: <==commonly_known== 19599 (pos)
                    (Bc_checked_p9)

                    ; #50218: <==commonly_known== 19599 (pos)
                    (Ba_checked_p9)

                    ; #56989: <==closure== 39612 (pos)
                    (Pc_checked_p9)

                    ; #68525: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #84734: <==closure== 68525 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #90326: <==commonly_known== 19599 (pos)
                    (Bd_checked_p9)

                    ; #14827: <==negation-removal== 68525 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #22444: <==negation-removal== 22259 (pos)
                    (not (Bb_not_checked_p9))

                    ; #30485: <==negation-removal== 19566 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #34037: <==negation-removal== 19152 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #36157: <==unclosure== 86190 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #36967: <==negation-removal== 84734 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #37144: <==unclosure== 40814 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #38307: <==negation-removal== 11359 (pos)
                    (not (Pb_not_checked_p9))

                    ; #39890: <==negation-removal== 24643 (pos)
                    (not (Bd_not_checked_p9))

                    ; #40814: <==uncertain_firing== 68525 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #52471: <==negation-removal== 90326 (pos)
                    (not (Pd_not_checked_p9))

                    ; #64277: <==negation-removal== 50218 (pos)
                    (not (Pa_not_checked_p9))

                    ; #78754: <==negation-removal== 56989 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82999: <==negation-removal== 14496 (pos)
                    (not (Ba_not_checked_p9))

                    ; #86190: <==uncertain_firing== 19152 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #87452: <==negation-removal== 39612 (pos)
                    (not (Pc_not_checked_p9))

                    ; #96782: <==negation-removal== 19599 (pos)
                    (not (not_checked_p9))))

)