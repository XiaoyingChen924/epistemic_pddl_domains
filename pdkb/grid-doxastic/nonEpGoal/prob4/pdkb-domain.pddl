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
                    ; #31593: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #38714: <==closure== 31593 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #44260: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #70908: <==closure== 44260 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #85490: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #88473: <==closure== 85490 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #90439: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #90973: <==closure== 90439 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #12049: <==negation-removal== 31593 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #22520: <==unclosure== 81461 (neg)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #22824: <==uncertain_firing== 31593 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #30300: <==negation-removal== 90439 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #30607: <==negation-removal== 70908 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #33054: <==unclosure== 58343 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #34008: <==unclosure== 22824 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #34027: <==negation-removal== 90973 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #35165: <==negation-removal== 88473 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #58343: <==uncertain_firing== 44260 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #60421: <==negation-removal== 38714 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #67496: <==unclosure== 74153 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #74153: <==uncertain_firing== 90439 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #78883: <==negation-removal== 44260 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #81461: <==uncertain_firing== 85490 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #82297: <==negation-removal== 85490 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #31593: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #38714: <==closure== 31593 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #44260: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #70908: <==closure== 44260 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #85490: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #88473: <==closure== 85490 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #90439: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #90973: <==closure== 90439 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #12049: <==negation-removal== 31593 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #22520: <==unclosure== 81461 (neg)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #22824: <==uncertain_firing== 31593 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #30300: <==negation-removal== 90439 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #30607: <==negation-removal== 70908 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #33054: <==unclosure== 58343 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #34008: <==unclosure== 22824 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #34027: <==negation-removal== 90973 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #35165: <==negation-removal== 88473 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #58343: <==uncertain_firing== 44260 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #60421: <==negation-removal== 38714 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #67496: <==unclosure== 74153 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #74153: <==uncertain_firing== 90439 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #78883: <==negation-removal== 44260 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #81461: <==uncertain_firing== 85490 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #82297: <==negation-removal== 85490 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #31593: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #38714: <==closure== 31593 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #44260: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #70908: <==closure== 44260 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #85490: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #88473: <==closure== 85490 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #90439: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #90973: <==closure== 90439 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #12049: <==negation-removal== 31593 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #22520: <==unclosure== 81461 (neg)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #22824: <==uncertain_firing== 31593 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #30300: <==negation-removal== 90439 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #30607: <==negation-removal== 70908 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #33054: <==unclosure== 58343 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #34008: <==unclosure== 22824 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #34027: <==negation-removal== 90973 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #35165: <==negation-removal== 88473 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #58343: <==uncertain_firing== 44260 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #60421: <==negation-removal== 38714 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #67496: <==unclosure== 74153 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #74153: <==uncertain_firing== 90439 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #78883: <==negation-removal== 44260 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #81461: <==uncertain_firing== 85490 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #82297: <==negation-removal== 85490 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action badcomm_p10_d_s
        :precondition (and (at_d_p10)
                           (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #31593: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #38714: <==closure== 31593 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #44260: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #70908: <==closure== 44260 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #85490: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #88473: <==closure== 85490 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #90439: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #90973: <==closure== 90439 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #12049: <==negation-removal== 31593 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #22520: <==unclosure== 81461 (neg)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #22824: <==uncertain_firing== 31593 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #30300: <==negation-removal== 90439 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #30607: <==negation-removal== 70908 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #33054: <==unclosure== 58343 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #34008: <==unclosure== 22824 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #34027: <==negation-removal== 90973 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #35165: <==negation-removal== 88473 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #58343: <==uncertain_firing== 44260 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #60421: <==negation-removal== 38714 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #67496: <==unclosure== 74153 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #74153: <==uncertain_firing== 90439 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #78883: <==negation-removal== 44260 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #81461: <==uncertain_firing== 85490 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #82297: <==negation-removal== 85490 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #17145: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #37646: <==closure== 69806 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #40437: <==closure== 17145 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #41917: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #43766: <==closure== 41917 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #69805: <==closure== 76295 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #69806: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #76295: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #12855: <==uncertain_firing== 17145 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #13071: <==unclosure== 39905 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #20703: <==uncertain_firing== 76295 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #21744: <==unclosure== 12855 (neg)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #32404: <==negation-removal== 69805 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #34686: <==unclosure== 39884 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #37457: <==negation-removal== 41917 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #39884: <==uncertain_firing== 41917 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #39905: <==uncertain_firing== 69806 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #49716: <==negation-removal== 43766 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #58082: <==negation-removal== 69806 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #59349: <==unclosure== 20703 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #68087: <==negation-removal== 40437 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #73294: <==negation-removal== 17145 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #78017: <==negation-removal== 37646 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #78165: <==negation-removal== 76295 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #17145: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #37646: <==closure== 69806 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #40437: <==closure== 17145 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #41917: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #43766: <==closure== 41917 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #69805: <==closure== 76295 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #69806: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #76295: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #12855: <==uncertain_firing== 17145 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #13071: <==unclosure== 39905 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #20703: <==uncertain_firing== 76295 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #21744: <==unclosure== 12855 (neg)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #32404: <==negation-removal== 69805 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #34686: <==unclosure== 39884 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #37457: <==negation-removal== 41917 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #39884: <==uncertain_firing== 41917 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #39905: <==uncertain_firing== 69806 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #49716: <==negation-removal== 43766 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #58082: <==negation-removal== 69806 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #59349: <==unclosure== 20703 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #68087: <==negation-removal== 40437 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #73294: <==negation-removal== 17145 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #78017: <==negation-removal== 37646 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #78165: <==negation-removal== 76295 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #17145: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #37646: <==closure== 69806 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #40437: <==closure== 17145 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #41917: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #43766: <==closure== 41917 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #69805: <==closure== 76295 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #69806: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #76295: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #12855: <==uncertain_firing== 17145 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #13071: <==unclosure== 39905 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #20703: <==uncertain_firing== 76295 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #21744: <==unclosure== 12855 (neg)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #32404: <==negation-removal== 69805 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #34686: <==unclosure== 39884 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #37457: <==negation-removal== 41917 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #39884: <==uncertain_firing== 41917 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #39905: <==uncertain_firing== 69806 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #49716: <==negation-removal== 43766 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #58082: <==negation-removal== 69806 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #59349: <==unclosure== 20703 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #68087: <==negation-removal== 40437 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #73294: <==negation-removal== 17145 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #78017: <==negation-removal== 37646 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #78165: <==negation-removal== 76295 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p11_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (at_d_p11)
                           (Bd_survivorat_s_p11))
        :effect (and
                    ; #17145: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #37646: <==closure== 69806 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #40437: <==closure== 17145 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #41917: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #43766: <==closure== 41917 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #69805: <==closure== 76295 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #69806: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #76295: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #12855: <==uncertain_firing== 17145 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #13071: <==unclosure== 39905 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #20703: <==uncertain_firing== 76295 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #21744: <==unclosure== 12855 (neg)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #32404: <==negation-removal== 69805 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #34686: <==unclosure== 39884 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #37457: <==negation-removal== 41917 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #39884: <==uncertain_firing== 41917 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #39905: <==uncertain_firing== 69806 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #49716: <==negation-removal== 43766 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #58082: <==negation-removal== 69806 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #59349: <==unclosure== 20703 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #68087: <==negation-removal== 40437 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #73294: <==negation-removal== 17145 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #78017: <==negation-removal== 37646 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #78165: <==negation-removal== 76295 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #17323: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #28137: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #29048: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #48589: <==closure== 17323 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #72063: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #72873: <==closure== 28137 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #79538: <==closure== 72063 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #79620: <==closure== 29048 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #15420: <==unclosure== 64377 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #20374: <==uncertain_firing== 17323 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #21235: <==unclosure== 20374 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #36665: <==negation-removal== 79620 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #39435: <==uncertain_firing== 72063 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #39607: <==negation-removal== 17323 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #40800: <==unclosure== 41319 (neg)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #41319: <==uncertain_firing== 28137 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #54102: <==negation-removal== 72063 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #58017: <==negation-removal== 72873 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #59149: <==unclosure== 39435 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #64377: <==uncertain_firing== 29048 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #74849: <==negation-removal== 79538 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #77528: <==negation-removal== 29048 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #77951: <==negation-removal== 28137 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #81113: <==negation-removal== 48589 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #17323: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #28137: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #29048: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #48589: <==closure== 17323 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #72063: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #72873: <==closure== 28137 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #79538: <==closure== 72063 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #79620: <==closure== 29048 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #15420: <==unclosure== 64377 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #20374: <==uncertain_firing== 17323 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #21235: <==unclosure== 20374 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #36665: <==negation-removal== 79620 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #39435: <==uncertain_firing== 72063 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #39607: <==negation-removal== 17323 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #40800: <==unclosure== 41319 (neg)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #41319: <==uncertain_firing== 28137 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #54102: <==negation-removal== 72063 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #58017: <==negation-removal== 72873 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #59149: <==unclosure== 39435 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #64377: <==uncertain_firing== 29048 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #74849: <==negation-removal== 79538 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #77528: <==negation-removal== 29048 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #77951: <==negation-removal== 28137 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #81113: <==negation-removal== 48589 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #17323: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #28137: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #29048: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #48589: <==closure== 17323 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #72063: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #72873: <==closure== 28137 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #79538: <==closure== 72063 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #79620: <==closure== 29048 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #15420: <==unclosure== 64377 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #20374: <==uncertain_firing== 17323 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #21235: <==unclosure== 20374 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #36665: <==negation-removal== 79620 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #39435: <==uncertain_firing== 72063 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #39607: <==negation-removal== 17323 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #40800: <==unclosure== 41319 (neg)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #41319: <==uncertain_firing== 28137 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #54102: <==negation-removal== 72063 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #58017: <==negation-removal== 72873 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #59149: <==unclosure== 39435 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #64377: <==uncertain_firing== 29048 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #74849: <==negation-removal== 79538 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #77528: <==negation-removal== 29048 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #77951: <==negation-removal== 28137 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #81113: <==negation-removal== 48589 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action badcomm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #17323: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #28137: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #29048: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #48589: <==closure== 17323 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #72063: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #72873: <==closure== 28137 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #79538: <==closure== 72063 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #79620: <==closure== 29048 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #15420: <==unclosure== 64377 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #20374: <==uncertain_firing== 17323 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #21235: <==unclosure== 20374 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #36665: <==negation-removal== 79620 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #39435: <==uncertain_firing== 72063 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #39607: <==negation-removal== 17323 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #40800: <==unclosure== 41319 (neg)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #41319: <==uncertain_firing== 28137 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #54102: <==negation-removal== 72063 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #58017: <==negation-removal== 72873 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #59149: <==unclosure== 39435 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #64377: <==uncertain_firing== 29048 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #74849: <==negation-removal== 79538 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #77528: <==negation-removal== 29048 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #77951: <==negation-removal== 28137 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #81113: <==negation-removal== 48589 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #27778: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #33462: <==closure== 27778 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #53400: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #70347: <==closure== 81787 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #70591: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #73549: <==closure== 53400 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #81408: <==closure== 70591 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #81787: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #17337: <==uncertain_firing== 53400 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #19081: <==negation-removal== 81408 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #21669: <==negation-removal== 70347 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #26959: <==unclosure== 46144 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36988: <==negation-removal== 73549 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #45259: <==negation-removal== 53400 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #46144: <==uncertain_firing== 70591 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #48053: <==unclosure== 70535 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #50924: <==negation-removal== 27778 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #56657: <==negation-removal== 81787 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #62212: <==unclosure== 17337 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #64173: <==negation-removal== 33462 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #65842: <==uncertain_firing== 81787 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #70535: <==uncertain_firing== 27778 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #73681: <==negation-removal== 70591 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #89933: <==unclosure== 65842 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #27778: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #33462: <==closure== 27778 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #53400: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #70347: <==closure== 81787 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #70591: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #73549: <==closure== 53400 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #81408: <==closure== 70591 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #81787: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #17337: <==uncertain_firing== 53400 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #19081: <==negation-removal== 81408 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #21669: <==negation-removal== 70347 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #26959: <==unclosure== 46144 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36988: <==negation-removal== 73549 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #45259: <==negation-removal== 53400 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #46144: <==uncertain_firing== 70591 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #48053: <==unclosure== 70535 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #50924: <==negation-removal== 27778 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #56657: <==negation-removal== 81787 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #62212: <==unclosure== 17337 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #64173: <==negation-removal== 33462 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #65842: <==uncertain_firing== 81787 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #70535: <==uncertain_firing== 27778 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #73681: <==negation-removal== 70591 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #89933: <==unclosure== 65842 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #27778: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #33462: <==closure== 27778 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #53400: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #70347: <==closure== 81787 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #70591: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #73549: <==closure== 53400 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #81408: <==closure== 70591 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #81787: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #17337: <==uncertain_firing== 53400 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #19081: <==negation-removal== 81408 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #21669: <==negation-removal== 70347 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #26959: <==unclosure== 46144 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36988: <==negation-removal== 73549 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #45259: <==negation-removal== 53400 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #46144: <==uncertain_firing== 70591 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #48053: <==unclosure== 70535 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #50924: <==negation-removal== 27778 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #56657: <==negation-removal== 81787 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #62212: <==unclosure== 17337 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #64173: <==negation-removal== 33462 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #65842: <==uncertain_firing== 81787 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #70535: <==uncertain_firing== 27778 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #73681: <==negation-removal== 70591 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #89933: <==unclosure== 65842 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #27778: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #33462: <==closure== 27778 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #53400: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #70347: <==closure== 81787 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #70591: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #73549: <==closure== 53400 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #81408: <==closure== 70591 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #81787: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #17337: <==uncertain_firing== 53400 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #19081: <==negation-removal== 81408 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #21669: <==negation-removal== 70347 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #26959: <==unclosure== 46144 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36988: <==negation-removal== 73549 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #45259: <==negation-removal== 53400 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #46144: <==uncertain_firing== 70591 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #48053: <==unclosure== 70535 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #50924: <==negation-removal== 27778 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #56657: <==negation-removal== 81787 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #62212: <==unclosure== 17337 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #64173: <==negation-removal== 33462 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #65842: <==uncertain_firing== 81787 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #70535: <==uncertain_firing== 27778 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #73681: <==negation-removal== 70591 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #89933: <==unclosure== 65842 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #21802: <==closure== 24745 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #24745: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #38782: <==closure== 56856 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #44514: <==closure== 78601 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #56856: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #70421: <==closure== 81659 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #78601: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #81659: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #14672: <==uncertain_firing== 24745 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #16211: <==negation-removal== 21802 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #23488: <==negation-removal== 24745 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #30218: <==uncertain_firing== 56856 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #32060: <==negation-removal== 78601 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #50431: <==uncertain_firing== 81659 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #52710: <==unclosure== 50431 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #57493: <==negation-removal== 44514 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #61998: <==unclosure== 14672 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #65453: <==unclosure== 71755 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #68414: <==negation-removal== 56856 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #68873: <==negation-removal== 81659 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71755: <==uncertain_firing== 78601 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #79137: <==unclosure== 30218 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #81269: <==negation-removal== 70421 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #94122: <==negation-removal== 38782 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #21802: <==closure== 24745 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #24745: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #38782: <==closure== 56856 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #44514: <==closure== 78601 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #56856: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #70421: <==closure== 81659 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #78601: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #81659: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #14672: <==uncertain_firing== 24745 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #16211: <==negation-removal== 21802 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #23488: <==negation-removal== 24745 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #30218: <==uncertain_firing== 56856 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #32060: <==negation-removal== 78601 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #50431: <==uncertain_firing== 81659 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #52710: <==unclosure== 50431 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #57493: <==negation-removal== 44514 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #61998: <==unclosure== 14672 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #65453: <==unclosure== 71755 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #68414: <==negation-removal== 56856 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #68873: <==negation-removal== 81659 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71755: <==uncertain_firing== 78601 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #79137: <==unclosure== 30218 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #81269: <==negation-removal== 70421 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #94122: <==negation-removal== 38782 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #21802: <==closure== 24745 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #24745: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #38782: <==closure== 56856 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #44514: <==closure== 78601 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #56856: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #70421: <==closure== 81659 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #78601: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #81659: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #14672: <==uncertain_firing== 24745 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #16211: <==negation-removal== 21802 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #23488: <==negation-removal== 24745 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #30218: <==uncertain_firing== 56856 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #32060: <==negation-removal== 78601 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #50431: <==uncertain_firing== 81659 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #52710: <==unclosure== 50431 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #57493: <==negation-removal== 44514 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #61998: <==unclosure== 14672 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #65453: <==unclosure== 71755 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #68414: <==negation-removal== 56856 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #68873: <==negation-removal== 81659 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71755: <==uncertain_firing== 78601 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #79137: <==unclosure== 30218 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #81269: <==negation-removal== 70421 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #94122: <==negation-removal== 38782 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #21802: <==closure== 24745 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #24745: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #38782: <==closure== 56856 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #44514: <==closure== 78601 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #56856: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #70421: <==closure== 81659 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #78601: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #81659: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #14672: <==uncertain_firing== 24745 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #16211: <==negation-removal== 21802 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #23488: <==negation-removal== 24745 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #30218: <==uncertain_firing== 56856 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #32060: <==negation-removal== 78601 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #50431: <==uncertain_firing== 81659 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #52710: <==unclosure== 50431 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #57493: <==negation-removal== 44514 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #61998: <==unclosure== 14672 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #65453: <==unclosure== 71755 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #68414: <==negation-removal== 56856 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #68873: <==negation-removal== 81659 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #71755: <==uncertain_firing== 78601 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #79137: <==unclosure== 30218 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #81269: <==negation-removal== 70421 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #94122: <==negation-removal== 38782 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #41643: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #54573: <==closure== 92185 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #57186: <==closure== 41643 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #61715: <==closure== 74372 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #67714: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #74372: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #87019: <==closure== 67714 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #92185: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #20754: <==negation-removal== 87019 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #21953: <==negation-removal== 54573 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #28847: <==uncertain_firing== 92185 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #29486: <==negation-removal== 41643 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #29602: <==uncertain_firing== 41643 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #35345: <==uncertain_firing== 67714 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38232: <==unclosure== 35345 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #49608: <==negation-removal== 61715 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #53558: <==unclosure== 28847 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #66653: <==unclosure== 81633 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #70860: <==negation-removal== 57186 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #74419: <==negation-removal== 74372 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #78246: <==negation-removal== 92185 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #78457: <==negation-removal== 67714 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #81633: <==uncertain_firing== 74372 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86319: <==unclosure== 29602 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #41643: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #54573: <==closure== 92185 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #57186: <==closure== 41643 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #61715: <==closure== 74372 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #67714: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #74372: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #87019: <==closure== 67714 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #92185: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #20754: <==negation-removal== 87019 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #21953: <==negation-removal== 54573 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #28847: <==uncertain_firing== 92185 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #29486: <==negation-removal== 41643 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #29602: <==uncertain_firing== 41643 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #35345: <==uncertain_firing== 67714 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38232: <==unclosure== 35345 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #49608: <==negation-removal== 61715 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #53558: <==unclosure== 28847 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #66653: <==unclosure== 81633 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #70860: <==negation-removal== 57186 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #74419: <==negation-removal== 74372 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #78246: <==negation-removal== 92185 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #78457: <==negation-removal== 67714 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #81633: <==uncertain_firing== 74372 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86319: <==unclosure== 29602 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #41643: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #54573: <==closure== 92185 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #57186: <==closure== 41643 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #61715: <==closure== 74372 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #67714: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #74372: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #87019: <==closure== 67714 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #92185: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #20754: <==negation-removal== 87019 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #21953: <==negation-removal== 54573 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #28847: <==uncertain_firing== 92185 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #29486: <==negation-removal== 41643 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #29602: <==uncertain_firing== 41643 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #35345: <==uncertain_firing== 67714 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38232: <==unclosure== 35345 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #49608: <==negation-removal== 61715 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #53558: <==unclosure== 28847 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #66653: <==unclosure== 81633 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #70860: <==negation-removal== 57186 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #74419: <==negation-removal== 74372 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #78246: <==negation-removal== 92185 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #78457: <==negation-removal== 67714 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #81633: <==uncertain_firing== 74372 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86319: <==unclosure== 29602 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #41643: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #54573: <==closure== 92185 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #57186: <==closure== 41643 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #61715: <==closure== 74372 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #67714: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #74372: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #87019: <==closure== 67714 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #92185: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #20754: <==negation-removal== 87019 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #21953: <==negation-removal== 54573 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #28847: <==uncertain_firing== 92185 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #29486: <==negation-removal== 41643 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #29602: <==uncertain_firing== 41643 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #35345: <==uncertain_firing== 67714 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38232: <==unclosure== 35345 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #49608: <==negation-removal== 61715 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #53558: <==unclosure== 28847 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #66653: <==unclosure== 81633 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #70860: <==negation-removal== 57186 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #74419: <==negation-removal== 74372 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #78246: <==negation-removal== 92185 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #78457: <==negation-removal== 67714 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #81633: <==uncertain_firing== 74372 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86319: <==unclosure== 29602 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #12465: <==closure== 20168 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #20168: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #32645: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37480: <==closure== 89113 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #41726: <==closure== 32645 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #52189: <==closure== 85488 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #85488: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #89113: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #12603: <==negation-removal== 37480 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #13035: <==unclosure== 48585 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #23467: <==unclosure== 27454 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #26126: <==negation-removal== 32645 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #27454: <==uncertain_firing== 85488 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #27811: <==negation-removal== 12465 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #32702: <==negation-removal== 41726 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #41154: <==negation-removal== 52189 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #43675: <==unclosure== 79909 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #48585: <==uncertain_firing== 89113 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57726: <==negation-removal== 20168 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #78144: <==uncertain_firing== 20168 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #79909: <==uncertain_firing== 32645 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #82742: <==negation-removal== 85488 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #89962: <==negation-removal== 89113 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #96913: <==unclosure== 78144 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #12465: <==closure== 20168 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #20168: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #32645: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37480: <==closure== 89113 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #41726: <==closure== 32645 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #52189: <==closure== 85488 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #85488: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #89113: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #12603: <==negation-removal== 37480 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #13035: <==unclosure== 48585 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #23467: <==unclosure== 27454 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #26126: <==negation-removal== 32645 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #27454: <==uncertain_firing== 85488 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #27811: <==negation-removal== 12465 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #32702: <==negation-removal== 41726 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #41154: <==negation-removal== 52189 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #43675: <==unclosure== 79909 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #48585: <==uncertain_firing== 89113 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57726: <==negation-removal== 20168 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #78144: <==uncertain_firing== 20168 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #79909: <==uncertain_firing== 32645 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #82742: <==negation-removal== 85488 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #89962: <==negation-removal== 89113 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #96913: <==unclosure== 78144 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #12465: <==closure== 20168 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #20168: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #32645: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37480: <==closure== 89113 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #41726: <==closure== 32645 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #52189: <==closure== 85488 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #85488: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #89113: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #12603: <==negation-removal== 37480 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #13035: <==unclosure== 48585 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #23467: <==unclosure== 27454 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #26126: <==negation-removal== 32645 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #27454: <==uncertain_firing== 85488 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #27811: <==negation-removal== 12465 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #32702: <==negation-removal== 41726 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #41154: <==negation-removal== 52189 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #43675: <==unclosure== 79909 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #48585: <==uncertain_firing== 89113 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57726: <==negation-removal== 20168 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #78144: <==uncertain_firing== 20168 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #79909: <==uncertain_firing== 32645 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #82742: <==negation-removal== 85488 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #89962: <==negation-removal== 89113 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #96913: <==unclosure== 78144 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #12465: <==closure== 20168 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #20168: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #32645: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37480: <==closure== 89113 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #41726: <==closure== 32645 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #52189: <==closure== 85488 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #85488: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #89113: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #12603: <==negation-removal== 37480 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #13035: <==unclosure== 48585 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #23467: <==unclosure== 27454 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #26126: <==negation-removal== 32645 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #27454: <==uncertain_firing== 85488 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #27811: <==negation-removal== 12465 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #32702: <==negation-removal== 41726 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #41154: <==negation-removal== 52189 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #43675: <==unclosure== 79909 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #48585: <==uncertain_firing== 89113 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #57726: <==negation-removal== 20168 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #78144: <==uncertain_firing== 20168 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #79909: <==uncertain_firing== 32645 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #82742: <==negation-removal== 85488 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #89962: <==negation-removal== 89113 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #96913: <==unclosure== 78144 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #42832: <==closure== 65785 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #44685: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #53593: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #59044: <==closure== 53593 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #65785: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #77849: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #81212: <==closure== 44685 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #97770: <==closure== 77849 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #18063: <==uncertain_firing== 53593 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #20030: <==negation-removal== 42832 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #27454: <==negation-removal== 44685 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #27951: <==unclosure== 49172 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #39393: <==negation-removal== 97770 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #42645: <==negation-removal== 59044 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #44096: <==negation-removal== 77849 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #45386: <==unclosure== 71665 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #49172: <==uncertain_firing== 65785 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #49589: <==unclosure== 70837 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #50133: <==unclosure== 18063 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #57286: <==negation-removal== 65785 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #69919: <==negation-removal== 53593 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #70837: <==uncertain_firing== 44685 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #71213: <==negation-removal== 81212 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71665: <==uncertain_firing== 77849 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #42832: <==closure== 65785 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #44685: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #53593: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #59044: <==closure== 53593 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #65785: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #77849: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #81212: <==closure== 44685 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #97770: <==closure== 77849 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #18063: <==uncertain_firing== 53593 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #20030: <==negation-removal== 42832 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #27454: <==negation-removal== 44685 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #27951: <==unclosure== 49172 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #39393: <==negation-removal== 97770 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #42645: <==negation-removal== 59044 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #44096: <==negation-removal== 77849 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #45386: <==unclosure== 71665 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #49172: <==uncertain_firing== 65785 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #49589: <==unclosure== 70837 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #50133: <==unclosure== 18063 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #57286: <==negation-removal== 65785 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #69919: <==negation-removal== 53593 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #70837: <==uncertain_firing== 44685 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #71213: <==negation-removal== 81212 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71665: <==uncertain_firing== 77849 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #42832: <==closure== 65785 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #44685: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #53593: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #59044: <==closure== 53593 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #65785: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #77849: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #81212: <==closure== 44685 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #97770: <==closure== 77849 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #18063: <==uncertain_firing== 53593 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #20030: <==negation-removal== 42832 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #27454: <==negation-removal== 44685 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #27951: <==unclosure== 49172 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #39393: <==negation-removal== 97770 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #42645: <==negation-removal== 59044 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #44096: <==negation-removal== 77849 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #45386: <==unclosure== 71665 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #49172: <==uncertain_firing== 65785 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #49589: <==unclosure== 70837 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #50133: <==unclosure== 18063 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #57286: <==negation-removal== 65785 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #69919: <==negation-removal== 53593 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #70837: <==uncertain_firing== 44685 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #71213: <==negation-removal== 81212 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71665: <==uncertain_firing== 77849 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (at_d_p5)
                           (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #42832: <==closure== 65785 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #44685: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #53593: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #59044: <==closure== 53593 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #65785: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #77849: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #81212: <==closure== 44685 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #97770: <==closure== 77849 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #18063: <==uncertain_firing== 53593 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #20030: <==negation-removal== 42832 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #27454: <==negation-removal== 44685 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #27951: <==unclosure== 49172 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #39393: <==negation-removal== 97770 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #42645: <==negation-removal== 59044 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #44096: <==negation-removal== 77849 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #45386: <==unclosure== 71665 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #49172: <==uncertain_firing== 65785 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #49589: <==unclosure== 70837 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #50133: <==unclosure== 18063 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #57286: <==negation-removal== 65785 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #69919: <==negation-removal== 53593 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #70837: <==uncertain_firing== 44685 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #71213: <==negation-removal== 81212 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71665: <==uncertain_firing== 77849 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #16301: <==closure== 88233 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #27024: <==closure== 68180 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #38923: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #40879: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #56033: <==closure== 38923 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #68180: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #72684: <==closure== 40879 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #88233: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #10037: <==uncertain_firing== 88233 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #11796: <==unclosure== 16565 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #15193: <==negation-removal== 16301 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #16565: <==uncertain_firing== 40879 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #19380: <==negation-removal== 88233 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #21428: <==unclosure== 10037 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #21433: <==negation-removal== 56033 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #41551: <==negation-removal== 72684 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #44011: <==unclosure== 45378 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #45378: <==uncertain_firing== 68180 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #57719: <==negation-removal== 27024 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #61029: <==negation-removal== 40879 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #61568: <==negation-removal== 38923 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #66539: <==uncertain_firing== 38923 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #73734: <==unclosure== 66539 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #85683: <==negation-removal== 68180 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #16301: <==closure== 88233 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #27024: <==closure== 68180 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #38923: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #40879: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #56033: <==closure== 38923 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #68180: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #72684: <==closure== 40879 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #88233: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #10037: <==uncertain_firing== 88233 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #11796: <==unclosure== 16565 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #15193: <==negation-removal== 16301 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #16565: <==uncertain_firing== 40879 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #19380: <==negation-removal== 88233 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #21428: <==unclosure== 10037 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #21433: <==negation-removal== 56033 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #41551: <==negation-removal== 72684 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #44011: <==unclosure== 45378 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #45378: <==uncertain_firing== 68180 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #57719: <==negation-removal== 27024 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #61029: <==negation-removal== 40879 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #61568: <==negation-removal== 38923 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #66539: <==uncertain_firing== 38923 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #73734: <==unclosure== 66539 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #85683: <==negation-removal== 68180 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #16301: <==closure== 88233 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #27024: <==closure== 68180 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #38923: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #40879: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #56033: <==closure== 38923 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #68180: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #72684: <==closure== 40879 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #88233: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #10037: <==uncertain_firing== 88233 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #11796: <==unclosure== 16565 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #15193: <==negation-removal== 16301 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #16565: <==uncertain_firing== 40879 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #19380: <==negation-removal== 88233 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #21428: <==unclosure== 10037 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #21433: <==negation-removal== 56033 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #41551: <==negation-removal== 72684 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #44011: <==unclosure== 45378 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #45378: <==uncertain_firing== 68180 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #57719: <==negation-removal== 27024 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #61029: <==negation-removal== 40879 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #61568: <==negation-removal== 38923 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #66539: <==uncertain_firing== 38923 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #73734: <==unclosure== 66539 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #85683: <==negation-removal== 68180 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #16301: <==closure== 88233 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #27024: <==closure== 68180 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #38923: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #40879: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #56033: <==closure== 38923 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #68180: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #72684: <==closure== 40879 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #88233: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #10037: <==uncertain_firing== 88233 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #11796: <==unclosure== 16565 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #15193: <==negation-removal== 16301 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #16565: <==uncertain_firing== 40879 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #19380: <==negation-removal== 88233 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #21428: <==unclosure== 10037 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #21433: <==negation-removal== 56033 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #41551: <==negation-removal== 72684 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #44011: <==unclosure== 45378 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #45378: <==uncertain_firing== 68180 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #57719: <==negation-removal== 27024 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #61029: <==negation-removal== 40879 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #61568: <==negation-removal== 38923 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #66539: <==uncertain_firing== 38923 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #73734: <==unclosure== 66539 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #85683: <==negation-removal== 68180 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #15914: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #43029: <==closure== 15914 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #49180: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #73735: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #77459: <==closure== 49180 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #79922: <==closure== 81738 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #81738: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #89640: <==closure== 73735 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #14935: <==negation-removal== 15914 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #22997: <==uncertain_firing== 81738 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #23656: <==negation-removal== 49180 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41380: <==unclosure== 90857 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #45488: <==negation-removal== 73735 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #48341: <==negation-removal== 43029 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #51780: <==negation-removal== 89640 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #54000: <==uncertain_firing== 49180 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #63602: <==unclosure== 54000 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #69538: <==negation-removal== 81738 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #78686: <==negation-removal== 79922 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #79794: <==uncertain_firing== 73735 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #80610: <==unclosure== 22997 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #85868: <==negation-removal== 77459 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #87043: <==unclosure== 79794 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #90857: <==uncertain_firing== 15914 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #15914: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #43029: <==closure== 15914 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #49180: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #73735: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #77459: <==closure== 49180 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #79922: <==closure== 81738 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #81738: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #89640: <==closure== 73735 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #14935: <==negation-removal== 15914 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #22997: <==uncertain_firing== 81738 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #23656: <==negation-removal== 49180 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41380: <==unclosure== 90857 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #45488: <==negation-removal== 73735 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #48341: <==negation-removal== 43029 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #51780: <==negation-removal== 89640 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #54000: <==uncertain_firing== 49180 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #63602: <==unclosure== 54000 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #69538: <==negation-removal== 81738 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #78686: <==negation-removal== 79922 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #79794: <==uncertain_firing== 73735 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #80610: <==unclosure== 22997 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #85868: <==negation-removal== 77459 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #87043: <==unclosure== 79794 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #90857: <==uncertain_firing== 15914 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #15914: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #43029: <==closure== 15914 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #49180: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #73735: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #77459: <==closure== 49180 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #79922: <==closure== 81738 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #81738: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #89640: <==closure== 73735 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #14935: <==negation-removal== 15914 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #22997: <==uncertain_firing== 81738 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #23656: <==negation-removal== 49180 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41380: <==unclosure== 90857 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #45488: <==negation-removal== 73735 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #48341: <==negation-removal== 43029 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #51780: <==negation-removal== 89640 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #54000: <==uncertain_firing== 49180 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #63602: <==unclosure== 54000 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #69538: <==negation-removal== 81738 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #78686: <==negation-removal== 79922 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #79794: <==uncertain_firing== 73735 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #80610: <==unclosure== 22997 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #85868: <==negation-removal== 77459 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #87043: <==unclosure== 79794 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #90857: <==uncertain_firing== 15914 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #15914: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #43029: <==closure== 15914 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #49180: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #73735: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #77459: <==closure== 49180 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #79922: <==closure== 81738 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #81738: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #89640: <==closure== 73735 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #14935: <==negation-removal== 15914 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #22997: <==uncertain_firing== 81738 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #23656: <==negation-removal== 49180 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41380: <==unclosure== 90857 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #45488: <==negation-removal== 73735 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #48341: <==negation-removal== 43029 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #51780: <==negation-removal== 89640 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #54000: <==uncertain_firing== 49180 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #63602: <==unclosure== 54000 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #69538: <==negation-removal== 81738 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #78686: <==negation-removal== 79922 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #79794: <==uncertain_firing== 73735 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #80610: <==unclosure== 22997 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #85868: <==negation-removal== 77459 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #87043: <==unclosure== 79794 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #90857: <==uncertain_firing== 15914 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #20617: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #24060: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #26852: <==closure== 20617 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #26935: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #41723: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #53207: <==closure== 41723 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #54165: <==closure== 24060 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #96737: <==closure== 26935 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #13790: <==unclosure== 60853 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #13812: <==unclosure== 49427 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #15405: <==negation-removal== 26852 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #36901: <==uncertain_firing== 26935 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #37680: <==uncertain_firing== 41723 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #37763: <==negation-removal== 54165 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #46824: <==negation-removal== 96737 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #49427: <==uncertain_firing== 20617 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #59125: <==negation-removal== 24060 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60853: <==uncertain_firing== 24060 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60978: <==negation-removal== 53207 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #61202: <==negation-removal== 26935 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #66410: <==negation-removal== 20617 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #83397: <==unclosure== 37680 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #87806: <==negation-removal== 41723 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #89279: <==unclosure== 36901 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #20617: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #24060: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #26852: <==closure== 20617 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #26935: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #41723: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #53207: <==closure== 41723 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #54165: <==closure== 24060 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #96737: <==closure== 26935 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #13790: <==unclosure== 60853 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #13812: <==unclosure== 49427 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #15405: <==negation-removal== 26852 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #36901: <==uncertain_firing== 26935 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #37680: <==uncertain_firing== 41723 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #37763: <==negation-removal== 54165 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #46824: <==negation-removal== 96737 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #49427: <==uncertain_firing== 20617 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #59125: <==negation-removal== 24060 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60853: <==uncertain_firing== 24060 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60978: <==negation-removal== 53207 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #61202: <==negation-removal== 26935 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #66410: <==negation-removal== 20617 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #83397: <==unclosure== 37680 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #87806: <==negation-removal== 41723 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #89279: <==unclosure== 36901 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #20617: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #24060: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #26852: <==closure== 20617 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #26935: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #41723: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #53207: <==closure== 41723 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #54165: <==closure== 24060 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #96737: <==closure== 26935 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #13790: <==unclosure== 60853 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #13812: <==unclosure== 49427 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #15405: <==negation-removal== 26852 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #36901: <==uncertain_firing== 26935 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #37680: <==uncertain_firing== 41723 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #37763: <==negation-removal== 54165 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #46824: <==negation-removal== 96737 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #49427: <==uncertain_firing== 20617 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #59125: <==negation-removal== 24060 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60853: <==uncertain_firing== 24060 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60978: <==negation-removal== 53207 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #61202: <==negation-removal== 26935 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #66410: <==negation-removal== 20617 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #83397: <==unclosure== 37680 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #87806: <==negation-removal== 41723 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #89279: <==unclosure== 36901 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (at_d_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #20617: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #24060: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #26852: <==closure== 20617 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #26935: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #41723: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #53207: <==closure== 41723 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #54165: <==closure== 24060 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #96737: <==closure== 26935 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #13790: <==unclosure== 60853 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #13812: <==unclosure== 49427 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #15405: <==negation-removal== 26852 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #36901: <==uncertain_firing== 26935 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #37680: <==uncertain_firing== 41723 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #37763: <==negation-removal== 54165 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #46824: <==negation-removal== 96737 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #49427: <==uncertain_firing== 20617 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #59125: <==negation-removal== 24060 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60853: <==uncertain_firing== 24060 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #60978: <==negation-removal== 53207 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #61202: <==negation-removal== 26935 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #66410: <==negation-removal== 20617 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #83397: <==unclosure== 37680 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #87806: <==negation-removal== 41723 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #89279: <==unclosure== 36901 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #18024: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #37690: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #49097: <==closure== 18024 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #49914: <==closure== 37690 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #57598: <==closure== 59557 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #59557: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #65806: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #75259: <==closure== 65806 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #10015: <==negation-removal== 37690 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #13000: <==uncertain_firing== 65806 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #15853: <==negation-removal== 57598 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #19140: <==uncertain_firing== 18024 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #22845: <==uncertain_firing== 37690 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #27311: <==unclosure== 19140 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #28375: <==uncertain_firing== 59557 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #41108: <==negation-removal== 49097 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #47722: <==negation-removal== 18024 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #49295: <==unclosure== 13000 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #59610: <==negation-removal== 65806 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #60521: <==negation-removal== 49914 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #85628: <==negation-removal== 59557 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #88547: <==unclosure== 28375 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #89663: <==unclosure== 22845 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #96156: <==negation-removal== 75259 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #18024: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #37690: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #49097: <==closure== 18024 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #49914: <==closure== 37690 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #57598: <==closure== 59557 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #59557: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #65806: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #75259: <==closure== 65806 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #10015: <==negation-removal== 37690 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #13000: <==uncertain_firing== 65806 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #15853: <==negation-removal== 57598 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #19140: <==uncertain_firing== 18024 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #22845: <==uncertain_firing== 37690 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #27311: <==unclosure== 19140 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #28375: <==uncertain_firing== 59557 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #41108: <==negation-removal== 49097 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #47722: <==negation-removal== 18024 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #49295: <==unclosure== 13000 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #59610: <==negation-removal== 65806 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #60521: <==negation-removal== 49914 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #85628: <==negation-removal== 59557 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #88547: <==unclosure== 28375 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #89663: <==unclosure== 22845 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #96156: <==negation-removal== 75259 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #18024: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #37690: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #49097: <==closure== 18024 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #49914: <==closure== 37690 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #57598: <==closure== 59557 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #59557: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #65806: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #75259: <==closure== 65806 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #10015: <==negation-removal== 37690 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #13000: <==uncertain_firing== 65806 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #15853: <==negation-removal== 57598 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #19140: <==uncertain_firing== 18024 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #22845: <==uncertain_firing== 37690 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #27311: <==unclosure== 19140 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #28375: <==uncertain_firing== 59557 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #41108: <==negation-removal== 49097 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #47722: <==negation-removal== 18024 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #49295: <==unclosure== 13000 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #59610: <==negation-removal== 65806 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #60521: <==negation-removal== 49914 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #85628: <==negation-removal== 59557 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #88547: <==unclosure== 28375 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #89663: <==unclosure== 22845 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #96156: <==negation-removal== 75259 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #18024: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #37690: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #49097: <==closure== 18024 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #49914: <==closure== 37690 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #57598: <==closure== 59557 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #59557: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #65806: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #75259: <==closure== 65806 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #10015: <==negation-removal== 37690 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #13000: <==uncertain_firing== 65806 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #15853: <==negation-removal== 57598 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #19140: <==uncertain_firing== 18024 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #22845: <==uncertain_firing== 37690 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #27311: <==unclosure== 19140 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #28375: <==uncertain_firing== 59557 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #41108: <==negation-removal== 49097 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #47722: <==negation-removal== 18024 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #49295: <==unclosure== 13000 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #59610: <==negation-removal== 65806 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #60521: <==negation-removal== 49914 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #85628: <==negation-removal== 59557 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #88547: <==unclosure== 28375 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #89663: <==unclosure== 22845 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #96156: <==negation-removal== 75259 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #13868: origin
                    (Bd_survivorat_s_p10)

                    ; #16058: <==closure== 87306 (pos)
                    (Pa_survivorat_s_p10)

                    ; #19376: origin
                    (Bc_survivorat_s_p10)

                    ; #46293: <==closure== 68713 (pos)
                    (Pb_survivorat_s_p10)

                    ; #55122: <==closure== 13868 (pos)
                    (Pd_survivorat_s_p10)

                    ; #60128: <==closure== 19376 (pos)
                    (Pc_survivorat_s_p10)

                    ; #68713: origin
                    (Bb_survivorat_s_p10)

                    ; #87306: origin
                    (Ba_survivorat_s_p10)

                    ; #20289: <==negation-removal== 13868 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #63515: <==negation-removal== 19376 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #69005: <==negation-removal== 55122 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #71592: <==negation-removal== 60128 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #74076: <==negation-removal== 16058 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #75447: <==negation-removal== 68713 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #85503: <==negation-removal== 46293 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #88379: <==negation-removal== 87306 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #13868: origin
                    (Bd_survivorat_s_p10)

                    ; #16058: <==closure== 87306 (pos)
                    (Pa_survivorat_s_p10)

                    ; #19376: origin
                    (Bc_survivorat_s_p10)

                    ; #46293: <==closure== 68713 (pos)
                    (Pb_survivorat_s_p10)

                    ; #55122: <==closure== 13868 (pos)
                    (Pd_survivorat_s_p10)

                    ; #60128: <==closure== 19376 (pos)
                    (Pc_survivorat_s_p10)

                    ; #68713: origin
                    (Bb_survivorat_s_p10)

                    ; #87306: origin
                    (Ba_survivorat_s_p10)

                    ; #20289: <==negation-removal== 13868 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #63515: <==negation-removal== 19376 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #69005: <==negation-removal== 55122 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #71592: <==negation-removal== 60128 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #74076: <==negation-removal== 16058 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #75447: <==negation-removal== 68713 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #85503: <==negation-removal== 46293 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #88379: <==negation-removal== 87306 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #13868: origin
                    (Bd_survivorat_s_p10)

                    ; #16058: <==closure== 87306 (pos)
                    (Pa_survivorat_s_p10)

                    ; #19376: origin
                    (Bc_survivorat_s_p10)

                    ; #46293: <==closure== 68713 (pos)
                    (Pb_survivorat_s_p10)

                    ; #55122: <==closure== 13868 (pos)
                    (Pd_survivorat_s_p10)

                    ; #60128: <==closure== 19376 (pos)
                    (Pc_survivorat_s_p10)

                    ; #68713: origin
                    (Bb_survivorat_s_p10)

                    ; #87306: origin
                    (Ba_survivorat_s_p10)

                    ; #20289: <==negation-removal== 13868 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #63515: <==negation-removal== 19376 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #69005: <==negation-removal== 55122 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #71592: <==negation-removal== 60128 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #74076: <==negation-removal== 16058 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #75447: <==negation-removal== 68713 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #85503: <==negation-removal== 46293 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #88379: <==negation-removal== 87306 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_d_s
        :precondition (and (at_d_p10)
                           (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #13868: origin
                    (Bd_survivorat_s_p10)

                    ; #16058: <==closure== 87306 (pos)
                    (Pa_survivorat_s_p10)

                    ; #19376: origin
                    (Bc_survivorat_s_p10)

                    ; #46293: <==closure== 68713 (pos)
                    (Pb_survivorat_s_p10)

                    ; #55122: <==closure== 13868 (pos)
                    (Pd_survivorat_s_p10)

                    ; #60128: <==closure== 19376 (pos)
                    (Pc_survivorat_s_p10)

                    ; #68713: origin
                    (Bb_survivorat_s_p10)

                    ; #87306: origin
                    (Ba_survivorat_s_p10)

                    ; #20289: <==negation-removal== 13868 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #63515: <==negation-removal== 19376 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #69005: <==negation-removal== 55122 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #71592: <==negation-removal== 60128 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #74076: <==negation-removal== 16058 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #75447: <==negation-removal== 68713 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #85503: <==negation-removal== 46293 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #88379: <==negation-removal== 87306 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #11896: <==closure== 58235 (pos)
                    (Pb_survivorat_s_p11)

                    ; #13662: origin
                    (Ba_survivorat_s_p11)

                    ; #30564: origin
                    (Bd_survivorat_s_p11)

                    ; #33137: origin
                    (Bc_survivorat_s_p11)

                    ; #50975: <==closure== 33137 (pos)
                    (Pc_survivorat_s_p11)

                    ; #57567: <==closure== 13662 (pos)
                    (Pa_survivorat_s_p11)

                    ; #58235: origin
                    (Bb_survivorat_s_p11)

                    ; #58439: <==closure== 30564 (pos)
                    (Pd_survivorat_s_p11)

                    ; #25191: <==negation-removal== 30564 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #29718: <==negation-removal== 13662 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #38361: <==negation-removal== 11896 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #41559: <==negation-removal== 50975 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #54519: <==negation-removal== 57567 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #68990: <==negation-removal== 58235 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #71743: <==negation-removal== 58439 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #83273: <==negation-removal== 33137 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #11896: <==closure== 58235 (pos)
                    (Pb_survivorat_s_p11)

                    ; #13662: origin
                    (Ba_survivorat_s_p11)

                    ; #30564: origin
                    (Bd_survivorat_s_p11)

                    ; #33137: origin
                    (Bc_survivorat_s_p11)

                    ; #50975: <==closure== 33137 (pos)
                    (Pc_survivorat_s_p11)

                    ; #57567: <==closure== 13662 (pos)
                    (Pa_survivorat_s_p11)

                    ; #58235: origin
                    (Bb_survivorat_s_p11)

                    ; #58439: <==closure== 30564 (pos)
                    (Pd_survivorat_s_p11)

                    ; #25191: <==negation-removal== 30564 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #29718: <==negation-removal== 13662 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #38361: <==negation-removal== 11896 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #41559: <==negation-removal== 50975 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #54519: <==negation-removal== 57567 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #68990: <==negation-removal== 58235 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #71743: <==negation-removal== 58439 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #83273: <==negation-removal== 33137 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #11896: <==closure== 58235 (pos)
                    (Pb_survivorat_s_p11)

                    ; #13662: origin
                    (Ba_survivorat_s_p11)

                    ; #30564: origin
                    (Bd_survivorat_s_p11)

                    ; #33137: origin
                    (Bc_survivorat_s_p11)

                    ; #50975: <==closure== 33137 (pos)
                    (Pc_survivorat_s_p11)

                    ; #57567: <==closure== 13662 (pos)
                    (Pa_survivorat_s_p11)

                    ; #58235: origin
                    (Bb_survivorat_s_p11)

                    ; #58439: <==closure== 30564 (pos)
                    (Pd_survivorat_s_p11)

                    ; #25191: <==negation-removal== 30564 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #29718: <==negation-removal== 13662 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #38361: <==negation-removal== 11896 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #41559: <==negation-removal== 50975 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #54519: <==negation-removal== 57567 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #68990: <==negation-removal== 58235 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #71743: <==negation-removal== 58439 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #83273: <==negation-removal== 33137 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (at_d_p11)
                           (Bd_survivorat_s_p11))
        :effect (and
                    ; #11896: <==closure== 58235 (pos)
                    (Pb_survivorat_s_p11)

                    ; #13662: origin
                    (Ba_survivorat_s_p11)

                    ; #30564: origin
                    (Bd_survivorat_s_p11)

                    ; #33137: origin
                    (Bc_survivorat_s_p11)

                    ; #50975: <==closure== 33137 (pos)
                    (Pc_survivorat_s_p11)

                    ; #57567: <==closure== 13662 (pos)
                    (Pa_survivorat_s_p11)

                    ; #58235: origin
                    (Bb_survivorat_s_p11)

                    ; #58439: <==closure== 30564 (pos)
                    (Pd_survivorat_s_p11)

                    ; #25191: <==negation-removal== 30564 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #29718: <==negation-removal== 13662 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #38361: <==negation-removal== 11896 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #41559: <==negation-removal== 50975 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #54519: <==negation-removal== 57567 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #68990: <==negation-removal== 58235 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #71743: <==negation-removal== 58439 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #83273: <==negation-removal== 33137 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #10344: origin
                    (Ba_survivorat_s_p12)

                    ; #17355: origin
                    (Bc_survivorat_s_p12)

                    ; #18643: origin
                    (Bb_survivorat_s_p12)

                    ; #29996: origin
                    (Bd_survivorat_s_p12)

                    ; #53457: <==closure== 18643 (pos)
                    (Pb_survivorat_s_p12)

                    ; #64649: <==closure== 10344 (pos)
                    (Pa_survivorat_s_p12)

                    ; #76182: <==closure== 29996 (pos)
                    (Pd_survivorat_s_p12)

                    ; #79610: <==closure== 17355 (pos)
                    (Pc_survivorat_s_p12)

                    ; #18227: <==negation-removal== 53457 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #21515: <==negation-removal== 29996 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #46048: <==negation-removal== 76182 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #50938: <==negation-removal== 10344 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #51966: <==negation-removal== 17355 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #52225: <==negation-removal== 79610 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #60558: <==negation-removal== 64649 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #75808: <==negation-removal== 18643 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #10344: origin
                    (Ba_survivorat_s_p12)

                    ; #17355: origin
                    (Bc_survivorat_s_p12)

                    ; #18643: origin
                    (Bb_survivorat_s_p12)

                    ; #29996: origin
                    (Bd_survivorat_s_p12)

                    ; #53457: <==closure== 18643 (pos)
                    (Pb_survivorat_s_p12)

                    ; #64649: <==closure== 10344 (pos)
                    (Pa_survivorat_s_p12)

                    ; #76182: <==closure== 29996 (pos)
                    (Pd_survivorat_s_p12)

                    ; #79610: <==closure== 17355 (pos)
                    (Pc_survivorat_s_p12)

                    ; #18227: <==negation-removal== 53457 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #21515: <==negation-removal== 29996 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #46048: <==negation-removal== 76182 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #50938: <==negation-removal== 10344 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #51966: <==negation-removal== 17355 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #52225: <==negation-removal== 79610 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #60558: <==negation-removal== 64649 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #75808: <==negation-removal== 18643 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #10344: origin
                    (Ba_survivorat_s_p12)

                    ; #17355: origin
                    (Bc_survivorat_s_p12)

                    ; #18643: origin
                    (Bb_survivorat_s_p12)

                    ; #29996: origin
                    (Bd_survivorat_s_p12)

                    ; #53457: <==closure== 18643 (pos)
                    (Pb_survivorat_s_p12)

                    ; #64649: <==closure== 10344 (pos)
                    (Pa_survivorat_s_p12)

                    ; #76182: <==closure== 29996 (pos)
                    (Pd_survivorat_s_p12)

                    ; #79610: <==closure== 17355 (pos)
                    (Pc_survivorat_s_p12)

                    ; #18227: <==negation-removal== 53457 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #21515: <==negation-removal== 29996 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #46048: <==negation-removal== 76182 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #50938: <==negation-removal== 10344 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #51966: <==negation-removal== 17355 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #52225: <==negation-removal== 79610 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #60558: <==negation-removal== 64649 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #75808: <==negation-removal== 18643 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #10344: origin
                    (Ba_survivorat_s_p12)

                    ; #17355: origin
                    (Bc_survivorat_s_p12)

                    ; #18643: origin
                    (Bb_survivorat_s_p12)

                    ; #29996: origin
                    (Bd_survivorat_s_p12)

                    ; #53457: <==closure== 18643 (pos)
                    (Pb_survivorat_s_p12)

                    ; #64649: <==closure== 10344 (pos)
                    (Pa_survivorat_s_p12)

                    ; #76182: <==closure== 29996 (pos)
                    (Pd_survivorat_s_p12)

                    ; #79610: <==closure== 17355 (pos)
                    (Pc_survivorat_s_p12)

                    ; #18227: <==negation-removal== 53457 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #21515: <==negation-removal== 29996 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #46048: <==negation-removal== 76182 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #50938: <==negation-removal== 10344 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #51966: <==negation-removal== 17355 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #52225: <==negation-removal== 79610 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #60558: <==negation-removal== 64649 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #75808: <==negation-removal== 18643 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #12661: origin
                    (Bc_survivorat_s_p1)

                    ; #34388: <==closure== 78814 (pos)
                    (Pd_survivorat_s_p1)

                    ; #42958: <==closure== 85367 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60643: <==closure== 12661 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78814: origin
                    (Bd_survivorat_s_p1)

                    ; #85367: origin
                    (Bb_survivorat_s_p1)

                    ; #91850: origin
                    (Ba_survivorat_s_p1)

                    ; #99682: <==closure== 91850 (pos)
                    (Pa_survivorat_s_p1)

                    ; #29363: <==negation-removal== 91850 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #30710: <==negation-removal== 34388 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #38612: <==negation-removal== 42958 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44804: <==negation-removal== 78814 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #56055: <==negation-removal== 99682 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #63420: <==negation-removal== 60643 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89646: <==negation-removal== 85367 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #97717: <==negation-removal== 12661 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #12661: origin
                    (Bc_survivorat_s_p1)

                    ; #34388: <==closure== 78814 (pos)
                    (Pd_survivorat_s_p1)

                    ; #42958: <==closure== 85367 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60643: <==closure== 12661 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78814: origin
                    (Bd_survivorat_s_p1)

                    ; #85367: origin
                    (Bb_survivorat_s_p1)

                    ; #91850: origin
                    (Ba_survivorat_s_p1)

                    ; #99682: <==closure== 91850 (pos)
                    (Pa_survivorat_s_p1)

                    ; #29363: <==negation-removal== 91850 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #30710: <==negation-removal== 34388 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #38612: <==negation-removal== 42958 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44804: <==negation-removal== 78814 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #56055: <==negation-removal== 99682 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #63420: <==negation-removal== 60643 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89646: <==negation-removal== 85367 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #97717: <==negation-removal== 12661 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #12661: origin
                    (Bc_survivorat_s_p1)

                    ; #34388: <==closure== 78814 (pos)
                    (Pd_survivorat_s_p1)

                    ; #42958: <==closure== 85367 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60643: <==closure== 12661 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78814: origin
                    (Bd_survivorat_s_p1)

                    ; #85367: origin
                    (Bb_survivorat_s_p1)

                    ; #91850: origin
                    (Ba_survivorat_s_p1)

                    ; #99682: <==closure== 91850 (pos)
                    (Pa_survivorat_s_p1)

                    ; #29363: <==negation-removal== 91850 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #30710: <==negation-removal== 34388 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #38612: <==negation-removal== 42958 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44804: <==negation-removal== 78814 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #56055: <==negation-removal== 99682 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #63420: <==negation-removal== 60643 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89646: <==negation-removal== 85367 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #97717: <==negation-removal== 12661 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #12661: origin
                    (Bc_survivorat_s_p1)

                    ; #34388: <==closure== 78814 (pos)
                    (Pd_survivorat_s_p1)

                    ; #42958: <==closure== 85367 (pos)
                    (Pb_survivorat_s_p1)

                    ; #60643: <==closure== 12661 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78814: origin
                    (Bd_survivorat_s_p1)

                    ; #85367: origin
                    (Bb_survivorat_s_p1)

                    ; #91850: origin
                    (Ba_survivorat_s_p1)

                    ; #99682: <==closure== 91850 (pos)
                    (Pa_survivorat_s_p1)

                    ; #29363: <==negation-removal== 91850 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #30710: <==negation-removal== 34388 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #38612: <==negation-removal== 42958 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44804: <==negation-removal== 78814 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #56055: <==negation-removal== 99682 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #63420: <==negation-removal== 60643 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89646: <==negation-removal== 85367 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #97717: <==negation-removal== 12661 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #17238: <==closure== 31705 (pos)
                    (Pb_survivorat_s_p2)

                    ; #18026: <==closure== 27029 (pos)
                    (Pd_survivorat_s_p2)

                    ; #27029: origin
                    (Bd_survivorat_s_p2)

                    ; #31705: origin
                    (Bb_survivorat_s_p2)

                    ; #35227: origin
                    (Ba_survivorat_s_p2)

                    ; #38504: origin
                    (Bc_survivorat_s_p2)

                    ; #60555: <==closure== 38504 (pos)
                    (Pc_survivorat_s_p2)

                    ; #63113: <==closure== 35227 (pos)
                    (Pa_survivorat_s_p2)

                    ; #13133: <==negation-removal== 63113 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #13136: <==negation-removal== 18026 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #20062: <==negation-removal== 27029 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #30581: <==negation-removal== 17238 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #38248: <==negation-removal== 60555 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #61678: <==negation-removal== 31705 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #63640: <==negation-removal== 35227 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #71932: <==negation-removal== 38504 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #17238: <==closure== 31705 (pos)
                    (Pb_survivorat_s_p2)

                    ; #18026: <==closure== 27029 (pos)
                    (Pd_survivorat_s_p2)

                    ; #27029: origin
                    (Bd_survivorat_s_p2)

                    ; #31705: origin
                    (Bb_survivorat_s_p2)

                    ; #35227: origin
                    (Ba_survivorat_s_p2)

                    ; #38504: origin
                    (Bc_survivorat_s_p2)

                    ; #60555: <==closure== 38504 (pos)
                    (Pc_survivorat_s_p2)

                    ; #63113: <==closure== 35227 (pos)
                    (Pa_survivorat_s_p2)

                    ; #13133: <==negation-removal== 63113 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #13136: <==negation-removal== 18026 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #20062: <==negation-removal== 27029 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #30581: <==negation-removal== 17238 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #38248: <==negation-removal== 60555 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #61678: <==negation-removal== 31705 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #63640: <==negation-removal== 35227 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #71932: <==negation-removal== 38504 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #17238: <==closure== 31705 (pos)
                    (Pb_survivorat_s_p2)

                    ; #18026: <==closure== 27029 (pos)
                    (Pd_survivorat_s_p2)

                    ; #27029: origin
                    (Bd_survivorat_s_p2)

                    ; #31705: origin
                    (Bb_survivorat_s_p2)

                    ; #35227: origin
                    (Ba_survivorat_s_p2)

                    ; #38504: origin
                    (Bc_survivorat_s_p2)

                    ; #60555: <==closure== 38504 (pos)
                    (Pc_survivorat_s_p2)

                    ; #63113: <==closure== 35227 (pos)
                    (Pa_survivorat_s_p2)

                    ; #13133: <==negation-removal== 63113 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #13136: <==negation-removal== 18026 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #20062: <==negation-removal== 27029 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #30581: <==negation-removal== 17238 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #38248: <==negation-removal== 60555 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #61678: <==negation-removal== 31705 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #63640: <==negation-removal== 35227 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #71932: <==negation-removal== 38504 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #17238: <==closure== 31705 (pos)
                    (Pb_survivorat_s_p2)

                    ; #18026: <==closure== 27029 (pos)
                    (Pd_survivorat_s_p2)

                    ; #27029: origin
                    (Bd_survivorat_s_p2)

                    ; #31705: origin
                    (Bb_survivorat_s_p2)

                    ; #35227: origin
                    (Ba_survivorat_s_p2)

                    ; #38504: origin
                    (Bc_survivorat_s_p2)

                    ; #60555: <==closure== 38504 (pos)
                    (Pc_survivorat_s_p2)

                    ; #63113: <==closure== 35227 (pos)
                    (Pa_survivorat_s_p2)

                    ; #13133: <==negation-removal== 63113 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #13136: <==negation-removal== 18026 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #20062: <==negation-removal== 27029 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #30581: <==negation-removal== 17238 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #38248: <==negation-removal== 60555 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #61678: <==negation-removal== 31705 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #63640: <==negation-removal== 35227 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #71932: <==negation-removal== 38504 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #21230: origin
                    (Bd_survivorat_s_p3)

                    ; #37820: <==closure== 75452 (pos)
                    (Pa_survivorat_s_p3)

                    ; #54100: <==closure== 61922 (pos)
                    (Pc_survivorat_s_p3)

                    ; #54828: <==closure== 70936 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61922: origin
                    (Bc_survivorat_s_p3)

                    ; #66392: <==closure== 21230 (pos)
                    (Pd_survivorat_s_p3)

                    ; #70936: origin
                    (Bb_survivorat_s_p3)

                    ; #75452: origin
                    (Ba_survivorat_s_p3)

                    ; #13002: <==negation-removal== 75452 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #30069: <==negation-removal== 61922 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #40649: <==negation-removal== 70936 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #56563: <==negation-removal== 37820 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #64173: <==negation-removal== 54100 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #66828: <==negation-removal== 54828 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #80301: <==negation-removal== 66392 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #90097: <==negation-removal== 21230 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #21230: origin
                    (Bd_survivorat_s_p3)

                    ; #37820: <==closure== 75452 (pos)
                    (Pa_survivorat_s_p3)

                    ; #54100: <==closure== 61922 (pos)
                    (Pc_survivorat_s_p3)

                    ; #54828: <==closure== 70936 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61922: origin
                    (Bc_survivorat_s_p3)

                    ; #66392: <==closure== 21230 (pos)
                    (Pd_survivorat_s_p3)

                    ; #70936: origin
                    (Bb_survivorat_s_p3)

                    ; #75452: origin
                    (Ba_survivorat_s_p3)

                    ; #13002: <==negation-removal== 75452 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #30069: <==negation-removal== 61922 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #40649: <==negation-removal== 70936 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #56563: <==negation-removal== 37820 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #64173: <==negation-removal== 54100 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #66828: <==negation-removal== 54828 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #80301: <==negation-removal== 66392 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #90097: <==negation-removal== 21230 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #21230: origin
                    (Bd_survivorat_s_p3)

                    ; #37820: <==closure== 75452 (pos)
                    (Pa_survivorat_s_p3)

                    ; #54100: <==closure== 61922 (pos)
                    (Pc_survivorat_s_p3)

                    ; #54828: <==closure== 70936 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61922: origin
                    (Bc_survivorat_s_p3)

                    ; #66392: <==closure== 21230 (pos)
                    (Pd_survivorat_s_p3)

                    ; #70936: origin
                    (Bb_survivorat_s_p3)

                    ; #75452: origin
                    (Ba_survivorat_s_p3)

                    ; #13002: <==negation-removal== 75452 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #30069: <==negation-removal== 61922 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #40649: <==negation-removal== 70936 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #56563: <==negation-removal== 37820 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #64173: <==negation-removal== 54100 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #66828: <==negation-removal== 54828 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #80301: <==negation-removal== 66392 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #90097: <==negation-removal== 21230 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #21230: origin
                    (Bd_survivorat_s_p3)

                    ; #37820: <==closure== 75452 (pos)
                    (Pa_survivorat_s_p3)

                    ; #54100: <==closure== 61922 (pos)
                    (Pc_survivorat_s_p3)

                    ; #54828: <==closure== 70936 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61922: origin
                    (Bc_survivorat_s_p3)

                    ; #66392: <==closure== 21230 (pos)
                    (Pd_survivorat_s_p3)

                    ; #70936: origin
                    (Bb_survivorat_s_p3)

                    ; #75452: origin
                    (Ba_survivorat_s_p3)

                    ; #13002: <==negation-removal== 75452 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #30069: <==negation-removal== 61922 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #40649: <==negation-removal== 70936 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #56563: <==negation-removal== 37820 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #64173: <==negation-removal== 54100 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #66828: <==negation-removal== 54828 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #80301: <==negation-removal== 66392 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #90097: <==negation-removal== 21230 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #13716: origin
                    (Ba_survivorat_s_p4)

                    ; #18929: <==closure== 45108 (pos)
                    (Pd_survivorat_s_p4)

                    ; #33395: <==closure== 38070 (pos)
                    (Pc_survivorat_s_p4)

                    ; #38070: origin
                    (Bc_survivorat_s_p4)

                    ; #45108: origin
                    (Bd_survivorat_s_p4)

                    ; #59755: <==closure== 13716 (pos)
                    (Pa_survivorat_s_p4)

                    ; #65045: <==closure== 89294 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89294: origin
                    (Bb_survivorat_s_p4)

                    ; #30898: <==negation-removal== 38070 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #39876: <==negation-removal== 45108 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #45486: <==negation-removal== 65045 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #47477: <==negation-removal== 59755 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #53390: <==negation-removal== 13716 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #84453: <==negation-removal== 89294 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #92004: <==negation-removal== 18929 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #92057: <==negation-removal== 33395 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #13716: origin
                    (Ba_survivorat_s_p4)

                    ; #18929: <==closure== 45108 (pos)
                    (Pd_survivorat_s_p4)

                    ; #33395: <==closure== 38070 (pos)
                    (Pc_survivorat_s_p4)

                    ; #38070: origin
                    (Bc_survivorat_s_p4)

                    ; #45108: origin
                    (Bd_survivorat_s_p4)

                    ; #59755: <==closure== 13716 (pos)
                    (Pa_survivorat_s_p4)

                    ; #65045: <==closure== 89294 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89294: origin
                    (Bb_survivorat_s_p4)

                    ; #30898: <==negation-removal== 38070 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #39876: <==negation-removal== 45108 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #45486: <==negation-removal== 65045 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #47477: <==negation-removal== 59755 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #53390: <==negation-removal== 13716 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #84453: <==negation-removal== 89294 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #92004: <==negation-removal== 18929 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #92057: <==negation-removal== 33395 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #13716: origin
                    (Ba_survivorat_s_p4)

                    ; #18929: <==closure== 45108 (pos)
                    (Pd_survivorat_s_p4)

                    ; #33395: <==closure== 38070 (pos)
                    (Pc_survivorat_s_p4)

                    ; #38070: origin
                    (Bc_survivorat_s_p4)

                    ; #45108: origin
                    (Bd_survivorat_s_p4)

                    ; #59755: <==closure== 13716 (pos)
                    (Pa_survivorat_s_p4)

                    ; #65045: <==closure== 89294 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89294: origin
                    (Bb_survivorat_s_p4)

                    ; #30898: <==negation-removal== 38070 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #39876: <==negation-removal== 45108 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #45486: <==negation-removal== 65045 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #47477: <==negation-removal== 59755 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #53390: <==negation-removal== 13716 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #84453: <==negation-removal== 89294 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #92004: <==negation-removal== 18929 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #92057: <==negation-removal== 33395 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #13716: origin
                    (Ba_survivorat_s_p4)

                    ; #18929: <==closure== 45108 (pos)
                    (Pd_survivorat_s_p4)

                    ; #33395: <==closure== 38070 (pos)
                    (Pc_survivorat_s_p4)

                    ; #38070: origin
                    (Bc_survivorat_s_p4)

                    ; #45108: origin
                    (Bd_survivorat_s_p4)

                    ; #59755: <==closure== 13716 (pos)
                    (Pa_survivorat_s_p4)

                    ; #65045: <==closure== 89294 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89294: origin
                    (Bb_survivorat_s_p4)

                    ; #30898: <==negation-removal== 38070 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #39876: <==negation-removal== 45108 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #45486: <==negation-removal== 65045 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #47477: <==negation-removal== 59755 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #53390: <==negation-removal== 13716 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #84453: <==negation-removal== 89294 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #92004: <==negation-removal== 18929 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #92057: <==negation-removal== 33395 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #27004: <==closure== 65688 (pos)
                    (Pa_survivorat_s_p5)

                    ; #46987: <==closure== 50488 (pos)
                    (Pb_survivorat_s_p5)

                    ; #50488: origin
                    (Bb_survivorat_s_p5)

                    ; #62285: origin
                    (Bc_survivorat_s_p5)

                    ; #65688: origin
                    (Ba_survivorat_s_p5)

                    ; #75342: <==closure== 62285 (pos)
                    (Pc_survivorat_s_p5)

                    ; #80860: <==closure== 97786 (pos)
                    (Pd_survivorat_s_p5)

                    ; #97786: origin
                    (Bd_survivorat_s_p5)

                    ; #14899: <==negation-removal== 80860 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #19144: <==negation-removal== 97786 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #28683: <==negation-removal== 46987 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #29774: <==negation-removal== 65688 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #57276: <==negation-removal== 62285 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #71035: <==negation-removal== 50488 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #81267: <==negation-removal== 75342 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #85722: <==negation-removal== 27004 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #27004: <==closure== 65688 (pos)
                    (Pa_survivorat_s_p5)

                    ; #46987: <==closure== 50488 (pos)
                    (Pb_survivorat_s_p5)

                    ; #50488: origin
                    (Bb_survivorat_s_p5)

                    ; #62285: origin
                    (Bc_survivorat_s_p5)

                    ; #65688: origin
                    (Ba_survivorat_s_p5)

                    ; #75342: <==closure== 62285 (pos)
                    (Pc_survivorat_s_p5)

                    ; #80860: <==closure== 97786 (pos)
                    (Pd_survivorat_s_p5)

                    ; #97786: origin
                    (Bd_survivorat_s_p5)

                    ; #14899: <==negation-removal== 80860 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #19144: <==negation-removal== 97786 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #28683: <==negation-removal== 46987 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #29774: <==negation-removal== 65688 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #57276: <==negation-removal== 62285 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #71035: <==negation-removal== 50488 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #81267: <==negation-removal== 75342 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #85722: <==negation-removal== 27004 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #27004: <==closure== 65688 (pos)
                    (Pa_survivorat_s_p5)

                    ; #46987: <==closure== 50488 (pos)
                    (Pb_survivorat_s_p5)

                    ; #50488: origin
                    (Bb_survivorat_s_p5)

                    ; #62285: origin
                    (Bc_survivorat_s_p5)

                    ; #65688: origin
                    (Ba_survivorat_s_p5)

                    ; #75342: <==closure== 62285 (pos)
                    (Pc_survivorat_s_p5)

                    ; #80860: <==closure== 97786 (pos)
                    (Pd_survivorat_s_p5)

                    ; #97786: origin
                    (Bd_survivorat_s_p5)

                    ; #14899: <==negation-removal== 80860 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #19144: <==negation-removal== 97786 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #28683: <==negation-removal== 46987 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #29774: <==negation-removal== 65688 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #57276: <==negation-removal== 62285 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #71035: <==negation-removal== 50488 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #81267: <==negation-removal== 75342 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #85722: <==negation-removal== 27004 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (at_d_p5)
                           (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #27004: <==closure== 65688 (pos)
                    (Pa_survivorat_s_p5)

                    ; #46987: <==closure== 50488 (pos)
                    (Pb_survivorat_s_p5)

                    ; #50488: origin
                    (Bb_survivorat_s_p5)

                    ; #62285: origin
                    (Bc_survivorat_s_p5)

                    ; #65688: origin
                    (Ba_survivorat_s_p5)

                    ; #75342: <==closure== 62285 (pos)
                    (Pc_survivorat_s_p5)

                    ; #80860: <==closure== 97786 (pos)
                    (Pd_survivorat_s_p5)

                    ; #97786: origin
                    (Bd_survivorat_s_p5)

                    ; #14899: <==negation-removal== 80860 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #19144: <==negation-removal== 97786 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #28683: <==negation-removal== 46987 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #29774: <==negation-removal== 65688 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #57276: <==negation-removal== 62285 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #71035: <==negation-removal== 50488 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #81267: <==negation-removal== 75342 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #85722: <==negation-removal== 27004 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #16072: <==closure== 86265 (pos)
                    (Pb_survivorat_s_p6)

                    ; #21154: <==closure== 49955 (pos)
                    (Pc_survivorat_s_p6)

                    ; #39908: origin
                    (Ba_survivorat_s_p6)

                    ; #49955: origin
                    (Bc_survivorat_s_p6)

                    ; #74886: <==closure== 88206 (pos)
                    (Pd_survivorat_s_p6)

                    ; #86265: origin
                    (Bb_survivorat_s_p6)

                    ; #87771: <==closure== 39908 (pos)
                    (Pa_survivorat_s_p6)

                    ; #88206: origin
                    (Bd_survivorat_s_p6)

                    ; #21110: <==negation-removal== 21154 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #42272: <==negation-removal== 49955 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #45980: <==negation-removal== 88206 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #55520: <==negation-removal== 16072 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #65986: <==negation-removal== 87771 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #75667: <==negation-removal== 39908 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #76423: <==negation-removal== 74886 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #99513: <==negation-removal== 86265 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #16072: <==closure== 86265 (pos)
                    (Pb_survivorat_s_p6)

                    ; #21154: <==closure== 49955 (pos)
                    (Pc_survivorat_s_p6)

                    ; #39908: origin
                    (Ba_survivorat_s_p6)

                    ; #49955: origin
                    (Bc_survivorat_s_p6)

                    ; #74886: <==closure== 88206 (pos)
                    (Pd_survivorat_s_p6)

                    ; #86265: origin
                    (Bb_survivorat_s_p6)

                    ; #87771: <==closure== 39908 (pos)
                    (Pa_survivorat_s_p6)

                    ; #88206: origin
                    (Bd_survivorat_s_p6)

                    ; #21110: <==negation-removal== 21154 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #42272: <==negation-removal== 49955 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #45980: <==negation-removal== 88206 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #55520: <==negation-removal== 16072 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #65986: <==negation-removal== 87771 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #75667: <==negation-removal== 39908 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #76423: <==negation-removal== 74886 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #99513: <==negation-removal== 86265 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #16072: <==closure== 86265 (pos)
                    (Pb_survivorat_s_p6)

                    ; #21154: <==closure== 49955 (pos)
                    (Pc_survivorat_s_p6)

                    ; #39908: origin
                    (Ba_survivorat_s_p6)

                    ; #49955: origin
                    (Bc_survivorat_s_p6)

                    ; #74886: <==closure== 88206 (pos)
                    (Pd_survivorat_s_p6)

                    ; #86265: origin
                    (Bb_survivorat_s_p6)

                    ; #87771: <==closure== 39908 (pos)
                    (Pa_survivorat_s_p6)

                    ; #88206: origin
                    (Bd_survivorat_s_p6)

                    ; #21110: <==negation-removal== 21154 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #42272: <==negation-removal== 49955 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #45980: <==negation-removal== 88206 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #55520: <==negation-removal== 16072 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #65986: <==negation-removal== 87771 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #75667: <==negation-removal== 39908 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #76423: <==negation-removal== 74886 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #99513: <==negation-removal== 86265 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #16072: <==closure== 86265 (pos)
                    (Pb_survivorat_s_p6)

                    ; #21154: <==closure== 49955 (pos)
                    (Pc_survivorat_s_p6)

                    ; #39908: origin
                    (Ba_survivorat_s_p6)

                    ; #49955: origin
                    (Bc_survivorat_s_p6)

                    ; #74886: <==closure== 88206 (pos)
                    (Pd_survivorat_s_p6)

                    ; #86265: origin
                    (Bb_survivorat_s_p6)

                    ; #87771: <==closure== 39908 (pos)
                    (Pa_survivorat_s_p6)

                    ; #88206: origin
                    (Bd_survivorat_s_p6)

                    ; #21110: <==negation-removal== 21154 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #42272: <==negation-removal== 49955 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #45980: <==negation-removal== 88206 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #55520: <==negation-removal== 16072 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #65986: <==negation-removal== 87771 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #75667: <==negation-removal== 39908 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #76423: <==negation-removal== 74886 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #99513: <==negation-removal== 86265 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #31293: origin
                    (Bd_survivorat_s_p7)

                    ; #44408: <==closure== 80958 (pos)
                    (Pa_survivorat_s_p7)

                    ; #48625: origin
                    (Bb_survivorat_s_p7)

                    ; #54394: <==closure== 31293 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59732: <==closure== 91162 (pos)
                    (Pc_survivorat_s_p7)

                    ; #75216: <==closure== 48625 (pos)
                    (Pb_survivorat_s_p7)

                    ; #80958: origin
                    (Ba_survivorat_s_p7)

                    ; #91162: origin
                    (Bc_survivorat_s_p7)

                    ; #55126: <==negation-removal== 59732 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56763: <==negation-removal== 31293 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #57107: <==negation-removal== 80958 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #61793: <==negation-removal== 44408 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #62601: <==negation-removal== 91162 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #77819: <==negation-removal== 54394 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #81252: <==negation-removal== 48625 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #85688: <==negation-removal== 75216 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #31293: origin
                    (Bd_survivorat_s_p7)

                    ; #44408: <==closure== 80958 (pos)
                    (Pa_survivorat_s_p7)

                    ; #48625: origin
                    (Bb_survivorat_s_p7)

                    ; #54394: <==closure== 31293 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59732: <==closure== 91162 (pos)
                    (Pc_survivorat_s_p7)

                    ; #75216: <==closure== 48625 (pos)
                    (Pb_survivorat_s_p7)

                    ; #80958: origin
                    (Ba_survivorat_s_p7)

                    ; #91162: origin
                    (Bc_survivorat_s_p7)

                    ; #55126: <==negation-removal== 59732 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56763: <==negation-removal== 31293 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #57107: <==negation-removal== 80958 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #61793: <==negation-removal== 44408 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #62601: <==negation-removal== 91162 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #77819: <==negation-removal== 54394 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #81252: <==negation-removal== 48625 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #85688: <==negation-removal== 75216 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #31293: origin
                    (Bd_survivorat_s_p7)

                    ; #44408: <==closure== 80958 (pos)
                    (Pa_survivorat_s_p7)

                    ; #48625: origin
                    (Bb_survivorat_s_p7)

                    ; #54394: <==closure== 31293 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59732: <==closure== 91162 (pos)
                    (Pc_survivorat_s_p7)

                    ; #75216: <==closure== 48625 (pos)
                    (Pb_survivorat_s_p7)

                    ; #80958: origin
                    (Ba_survivorat_s_p7)

                    ; #91162: origin
                    (Bc_survivorat_s_p7)

                    ; #55126: <==negation-removal== 59732 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56763: <==negation-removal== 31293 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #57107: <==negation-removal== 80958 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #61793: <==negation-removal== 44408 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #62601: <==negation-removal== 91162 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #77819: <==negation-removal== 54394 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #81252: <==negation-removal== 48625 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #85688: <==negation-removal== 75216 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #31293: origin
                    (Bd_survivorat_s_p7)

                    ; #44408: <==closure== 80958 (pos)
                    (Pa_survivorat_s_p7)

                    ; #48625: origin
                    (Bb_survivorat_s_p7)

                    ; #54394: <==closure== 31293 (pos)
                    (Pd_survivorat_s_p7)

                    ; #59732: <==closure== 91162 (pos)
                    (Pc_survivorat_s_p7)

                    ; #75216: <==closure== 48625 (pos)
                    (Pb_survivorat_s_p7)

                    ; #80958: origin
                    (Ba_survivorat_s_p7)

                    ; #91162: origin
                    (Bc_survivorat_s_p7)

                    ; #55126: <==negation-removal== 59732 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56763: <==negation-removal== 31293 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #57107: <==negation-removal== 80958 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #61793: <==negation-removal== 44408 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #62601: <==negation-removal== 91162 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #77819: <==negation-removal== 54394 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #81252: <==negation-removal== 48625 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #85688: <==negation-removal== 75216 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #37126: <==closure== 71978 (pos)
                    (Pd_survivorat_s_p8)

                    ; #42712: origin
                    (Ba_survivorat_s_p8)

                    ; #62516: origin
                    (Bc_survivorat_s_p8)

                    ; #65887: <==closure== 85624 (pos)
                    (Pb_survivorat_s_p8)

                    ; #71978: origin
                    (Bd_survivorat_s_p8)

                    ; #85624: origin
                    (Bb_survivorat_s_p8)

                    ; #86002: <==closure== 62516 (pos)
                    (Pc_survivorat_s_p8)

                    ; #88815: <==closure== 42712 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15704: <==negation-removal== 71978 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #19813: <==negation-removal== 65887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #34348: <==negation-removal== 37126 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #65517: <==negation-removal== 42712 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #65587: <==negation-removal== 85624 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #68698: <==negation-removal== 62516 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #72807: <==negation-removal== 88815 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #76957: <==negation-removal== 86002 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #37126: <==closure== 71978 (pos)
                    (Pd_survivorat_s_p8)

                    ; #42712: origin
                    (Ba_survivorat_s_p8)

                    ; #62516: origin
                    (Bc_survivorat_s_p8)

                    ; #65887: <==closure== 85624 (pos)
                    (Pb_survivorat_s_p8)

                    ; #71978: origin
                    (Bd_survivorat_s_p8)

                    ; #85624: origin
                    (Bb_survivorat_s_p8)

                    ; #86002: <==closure== 62516 (pos)
                    (Pc_survivorat_s_p8)

                    ; #88815: <==closure== 42712 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15704: <==negation-removal== 71978 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #19813: <==negation-removal== 65887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #34348: <==negation-removal== 37126 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #65517: <==negation-removal== 42712 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #65587: <==negation-removal== 85624 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #68698: <==negation-removal== 62516 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #72807: <==negation-removal== 88815 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #76957: <==negation-removal== 86002 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #37126: <==closure== 71978 (pos)
                    (Pd_survivorat_s_p8)

                    ; #42712: origin
                    (Ba_survivorat_s_p8)

                    ; #62516: origin
                    (Bc_survivorat_s_p8)

                    ; #65887: <==closure== 85624 (pos)
                    (Pb_survivorat_s_p8)

                    ; #71978: origin
                    (Bd_survivorat_s_p8)

                    ; #85624: origin
                    (Bb_survivorat_s_p8)

                    ; #86002: <==closure== 62516 (pos)
                    (Pc_survivorat_s_p8)

                    ; #88815: <==closure== 42712 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15704: <==negation-removal== 71978 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #19813: <==negation-removal== 65887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #34348: <==negation-removal== 37126 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #65517: <==negation-removal== 42712 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #65587: <==negation-removal== 85624 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #68698: <==negation-removal== 62516 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #72807: <==negation-removal== 88815 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #76957: <==negation-removal== 86002 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (at_d_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #37126: <==closure== 71978 (pos)
                    (Pd_survivorat_s_p8)

                    ; #42712: origin
                    (Ba_survivorat_s_p8)

                    ; #62516: origin
                    (Bc_survivorat_s_p8)

                    ; #65887: <==closure== 85624 (pos)
                    (Pb_survivorat_s_p8)

                    ; #71978: origin
                    (Bd_survivorat_s_p8)

                    ; #85624: origin
                    (Bb_survivorat_s_p8)

                    ; #86002: <==closure== 62516 (pos)
                    (Pc_survivorat_s_p8)

                    ; #88815: <==closure== 42712 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15704: <==negation-removal== 71978 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #19813: <==negation-removal== 65887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #34348: <==negation-removal== 37126 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #65517: <==negation-removal== 42712 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #65587: <==negation-removal== 85624 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #68698: <==negation-removal== 62516 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #72807: <==negation-removal== 88815 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #76957: <==negation-removal== 86002 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #12179: origin
                    (Bd_survivorat_s_p9)

                    ; #34718: origin
                    (Bb_survivorat_s_p9)

                    ; #34796: origin
                    (Bc_survivorat_s_p9)

                    ; #39918: <==closure== 34718 (pos)
                    (Pb_survivorat_s_p9)

                    ; #42297: origin
                    (Ba_survivorat_s_p9)

                    ; #43190: <==closure== 12179 (pos)
                    (Pd_survivorat_s_p9)

                    ; #50807: <==closure== 34796 (pos)
                    (Pc_survivorat_s_p9)

                    ; #92115: <==closure== 42297 (pos)
                    (Pa_survivorat_s_p9)

                    ; #10657: <==negation-removal== 34718 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #21545: <==negation-removal== 43190 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #47134: <==negation-removal== 92115 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #53135: <==negation-removal== 39918 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #63682: <==negation-removal== 34796 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #74880: <==negation-removal== 50807 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82339: <==negation-removal== 12179 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #90271: <==negation-removal== 42297 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #12179: origin
                    (Bd_survivorat_s_p9)

                    ; #34718: origin
                    (Bb_survivorat_s_p9)

                    ; #34796: origin
                    (Bc_survivorat_s_p9)

                    ; #39918: <==closure== 34718 (pos)
                    (Pb_survivorat_s_p9)

                    ; #42297: origin
                    (Ba_survivorat_s_p9)

                    ; #43190: <==closure== 12179 (pos)
                    (Pd_survivorat_s_p9)

                    ; #50807: <==closure== 34796 (pos)
                    (Pc_survivorat_s_p9)

                    ; #92115: <==closure== 42297 (pos)
                    (Pa_survivorat_s_p9)

                    ; #10657: <==negation-removal== 34718 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #21545: <==negation-removal== 43190 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #47134: <==negation-removal== 92115 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #53135: <==negation-removal== 39918 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #63682: <==negation-removal== 34796 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #74880: <==negation-removal== 50807 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82339: <==negation-removal== 12179 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #90271: <==negation-removal== 42297 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #12179: origin
                    (Bd_survivorat_s_p9)

                    ; #34718: origin
                    (Bb_survivorat_s_p9)

                    ; #34796: origin
                    (Bc_survivorat_s_p9)

                    ; #39918: <==closure== 34718 (pos)
                    (Pb_survivorat_s_p9)

                    ; #42297: origin
                    (Ba_survivorat_s_p9)

                    ; #43190: <==closure== 12179 (pos)
                    (Pd_survivorat_s_p9)

                    ; #50807: <==closure== 34796 (pos)
                    (Pc_survivorat_s_p9)

                    ; #92115: <==closure== 42297 (pos)
                    (Pa_survivorat_s_p9)

                    ; #10657: <==negation-removal== 34718 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #21545: <==negation-removal== 43190 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #47134: <==negation-removal== 92115 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #53135: <==negation-removal== 39918 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #63682: <==negation-removal== 34796 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #74880: <==negation-removal== 50807 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82339: <==negation-removal== 12179 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #90271: <==negation-removal== 42297 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #12179: origin
                    (Bd_survivorat_s_p9)

                    ; #34718: origin
                    (Bb_survivorat_s_p9)

                    ; #34796: origin
                    (Bc_survivorat_s_p9)

                    ; #39918: <==closure== 34718 (pos)
                    (Pb_survivorat_s_p9)

                    ; #42297: origin
                    (Ba_survivorat_s_p9)

                    ; #43190: <==closure== 12179 (pos)
                    (Pd_survivorat_s_p9)

                    ; #50807: <==closure== 34796 (pos)
                    (Pc_survivorat_s_p9)

                    ; #92115: <==closure== 42297 (pos)
                    (Pa_survivorat_s_p9)

                    ; #10657: <==negation-removal== 34718 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #21545: <==negation-removal== 43190 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #47134: <==negation-removal== 92115 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #53135: <==negation-removal== 39918 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #63682: <==negation-removal== 34796 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #74880: <==negation-removal== 50807 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82339: <==negation-removal== 12179 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #90271: <==negation-removal== 42297 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #47048: origin
                    (at_a_p1)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #86589: origin
                    (at_a_p10)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #60548: origin
                    (at_a_p11)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #68399: origin
                    (at_a_p12)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #76391: origin
                    (at_a_p3)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #71616: origin
                    (at_a_p4)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #80190: origin
                    (at_a_p5)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #67688: origin
                    (at_a_p6)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #89665: origin
                    (at_a_p8)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #30630: origin
                    (at_a_p9)

                    ; #92072: origin
                    (not_at_a_p10)

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))

                    ; #86589: <==negation-removal== 92072 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #43528: origin
                    (not_at_a_p11)

                    ; #47048: origin
                    (at_a_p1)

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #43528: origin
                    (not_at_a_p11)

                    ; #86589: origin
                    (at_a_p10)

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #43528: origin
                    (not_at_a_p11)

                    ; #60548: origin
                    (at_a_p11)

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #43528: origin
                    (not_at_a_p11)

                    ; #68399: origin
                    (at_a_p12)

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #43528: origin
                    (not_at_a_p11)

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #43528: origin
                    (not_at_a_p11)

                    ; #76391: origin
                    (at_a_p3)

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #43528: origin
                    (not_at_a_p11)

                    ; #71616: origin
                    (at_a_p4)

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #43528: origin
                    (not_at_a_p11)

                    ; #80190: origin
                    (at_a_p5)

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #43528: origin
                    (not_at_a_p11)

                    ; #67688: origin
                    (at_a_p6)

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #43528: origin
                    (not_at_a_p11)

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #43528: origin
                    (not_at_a_p11)

                    ; #89665: origin
                    (at_a_p8)

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #30630: origin
                    (at_a_p9)

                    ; #43528: origin
                    (not_at_a_p11)

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))

                    ; #60548: <==negation-removal== 43528 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #27513: origin
                    (not_at_a_p12)

                    ; #47048: origin
                    (at_a_p1)

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #27513: origin
                    (not_at_a_p12)

                    ; #86589: origin
                    (at_a_p10)

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #27513: origin
                    (not_at_a_p12)

                    ; #60548: origin
                    (at_a_p11)

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #27513: origin
                    (not_at_a_p12)

                    ; #68399: origin
                    (at_a_p12)

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #27513: origin
                    (not_at_a_p12)

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #27513: origin
                    (not_at_a_p12)

                    ; #76391: origin
                    (at_a_p3)

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #27513: origin
                    (not_at_a_p12)

                    ; #71616: origin
                    (at_a_p4)

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #27513: origin
                    (not_at_a_p12)

                    ; #80190: origin
                    (at_a_p5)

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #27513: origin
                    (not_at_a_p12)

                    ; #67688: origin
                    (at_a_p6)

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #27513: origin
                    (not_at_a_p12)

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #27513: origin
                    (not_at_a_p12)

                    ; #89665: origin
                    (at_a_p8)

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #27513: origin
                    (not_at_a_p12)

                    ; #30630: origin
                    (at_a_p9)

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))

                    ; #68399: <==negation-removal== 27513 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #47048: origin
                    (at_a_p1)

                    ; #57460: origin
                    (not_at_a_p1)

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #57460: origin
                    (not_at_a_p1)

                    ; #86589: origin
                    (at_a_p10)

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #57460: origin
                    (not_at_a_p1)

                    ; #60548: origin
                    (at_a_p11)

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #57460: origin
                    (not_at_a_p1)

                    ; #68399: origin
                    (at_a_p12)

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #57460: origin
                    (not_at_a_p1)

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #57460: origin
                    (not_at_a_p1)

                    ; #76391: origin
                    (at_a_p3)

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #57460: origin
                    (not_at_a_p1)

                    ; #71616: origin
                    (at_a_p4)

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #57460: origin
                    (not_at_a_p1)

                    ; #80190: origin
                    (at_a_p5)

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #57460: origin
                    (not_at_a_p1)

                    ; #67688: origin
                    (at_a_p6)

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #57460: origin
                    (not_at_a_p1)

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #57460: origin
                    (not_at_a_p1)

                    ; #89665: origin
                    (at_a_p8)

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #30630: origin
                    (at_a_p9)

                    ; #57460: origin
                    (not_at_a_p1)

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))

                    ; #47048: <==negation-removal== 57460 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #47048: origin
                    (at_a_p1)

                    ; #57162: origin
                    (not_at_a_p2)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #57162: origin
                    (not_at_a_p2)

                    ; #86589: origin
                    (at_a_p10)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #57162: origin
                    (not_at_a_p2)

                    ; #60548: origin
                    (at_a_p11)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #57162: origin
                    (not_at_a_p2)

                    ; #68399: origin
                    (at_a_p12)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #57162: origin
                    (not_at_a_p2)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #57162: origin
                    (not_at_a_p2)

                    ; #76391: origin
                    (at_a_p3)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #57162: origin
                    (not_at_a_p2)

                    ; #71616: origin
                    (at_a_p4)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #57162: origin
                    (not_at_a_p2)

                    ; #80190: origin
                    (at_a_p5)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #57162: origin
                    (not_at_a_p2)

                    ; #67688: origin
                    (at_a_p6)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #57162: origin
                    (not_at_a_p2)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #57162: origin
                    (not_at_a_p2)

                    ; #89665: origin
                    (at_a_p8)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #30630: origin
                    (at_a_p9)

                    ; #57162: origin
                    (not_at_a_p2)

                    ; #24273: <==negation-removal== 57162 (pos)
                    (not (at_a_p2))

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #47048: origin
                    (at_a_p1)

                    ; #79587: origin
                    (not_at_a_p3)

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #79587: origin
                    (not_at_a_p3)

                    ; #86589: origin
                    (at_a_p10)

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #60548: origin
                    (at_a_p11)

                    ; #79587: origin
                    (not_at_a_p3)

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #68399: origin
                    (at_a_p12)

                    ; #79587: origin
                    (not_at_a_p3)

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #79587: origin
                    (not_at_a_p3)

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #76391: origin
                    (at_a_p3)

                    ; #79587: origin
                    (not_at_a_p3)

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #71616: origin
                    (at_a_p4)

                    ; #79587: origin
                    (not_at_a_p3)

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #79587: origin
                    (not_at_a_p3)

                    ; #80190: origin
                    (at_a_p5)

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #67688: origin
                    (at_a_p6)

                    ; #79587: origin
                    (not_at_a_p3)

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #79587: origin
                    (not_at_a_p3)

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #79587: origin
                    (not_at_a_p3)

                    ; #89665: origin
                    (at_a_p8)

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #30630: origin
                    (at_a_p9)

                    ; #79587: origin
                    (not_at_a_p3)

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))

                    ; #76391: <==negation-removal== 79587 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #47048: origin
                    (at_a_p1)

                    ; #63154: origin
                    (not_at_a_p4)

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #63154: origin
                    (not_at_a_p4)

                    ; #86589: origin
                    (at_a_p10)

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #60548: origin
                    (at_a_p11)

                    ; #63154: origin
                    (not_at_a_p4)

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #63154: origin
                    (not_at_a_p4)

                    ; #68399: origin
                    (at_a_p12)

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #63154: origin
                    (not_at_a_p4)

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #63154: origin
                    (not_at_a_p4)

                    ; #76391: origin
                    (at_a_p3)

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #63154: origin
                    (not_at_a_p4)

                    ; #71616: origin
                    (at_a_p4)

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #63154: origin
                    (not_at_a_p4)

                    ; #80190: origin
                    (at_a_p5)

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #63154: origin
                    (not_at_a_p4)

                    ; #67688: origin
                    (at_a_p6)

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #63154: origin
                    (not_at_a_p4)

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #63154: origin
                    (not_at_a_p4)

                    ; #89665: origin
                    (at_a_p8)

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #30630: origin
                    (at_a_p9)

                    ; #63154: origin
                    (not_at_a_p4)

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))

                    ; #71616: <==negation-removal== 63154 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #47048: origin
                    (at_a_p1)

                    ; #65101: origin
                    (not_at_a_p5)

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #65101: origin
                    (not_at_a_p5)

                    ; #86589: origin
                    (at_a_p10)

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5))
        :effect (and
                    ; #60548: origin
                    (at_a_p11)

                    ; #65101: origin
                    (not_at_a_p5)

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #65101: origin
                    (not_at_a_p5)

                    ; #68399: origin
                    (at_a_p12)

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #65101: origin
                    (not_at_a_p5)

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #65101: origin
                    (not_at_a_p5)

                    ; #76391: origin
                    (at_a_p3)

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #65101: origin
                    (not_at_a_p5)

                    ; #71616: origin
                    (at_a_p4)

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #65101: origin
                    (not_at_a_p5)

                    ; #80190: origin
                    (at_a_p5)

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #65101: origin
                    (not_at_a_p5)

                    ; #67688: origin
                    (at_a_p6)

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #65101: origin
                    (not_at_a_p5)

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #65101: origin
                    (not_at_a_p5)

                    ; #89665: origin
                    (at_a_p8)

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #30630: origin
                    (at_a_p9)

                    ; #65101: origin
                    (not_at_a_p5)

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))

                    ; #80190: <==negation-removal== 65101 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #47048: origin
                    (at_a_p1)

                    ; #52681: origin
                    (not_at_a_p6)

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #52681: origin
                    (not_at_a_p6)

                    ; #86589: origin
                    (at_a_p10)

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #52681: origin
                    (not_at_a_p6)

                    ; #60548: origin
                    (at_a_p11)

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #52681: origin
                    (not_at_a_p6)

                    ; #68399: origin
                    (at_a_p12)

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #52681: origin
                    (not_at_a_p6)

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #52681: origin
                    (not_at_a_p6)

                    ; #76391: origin
                    (at_a_p3)

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #52681: origin
                    (not_at_a_p6)

                    ; #71616: origin
                    (at_a_p4)

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #52681: origin
                    (not_at_a_p6)

                    ; #80190: origin
                    (at_a_p5)

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #52681: origin
                    (not_at_a_p6)

                    ; #67688: origin
                    (at_a_p6)

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #52681: origin
                    (not_at_a_p6)

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #52681: origin
                    (not_at_a_p6)

                    ; #89665: origin
                    (at_a_p8)

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #30630: origin
                    (at_a_p9)

                    ; #52681: origin
                    (not_at_a_p6)

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))

                    ; #67688: <==negation-removal== 52681 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #47048: origin
                    (at_a_p1)

                    ; #64889: origin
                    (not_at_a_p7)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #64889: origin
                    (not_at_a_p7)

                    ; #86589: origin
                    (at_a_p10)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #60548: origin
                    (at_a_p11)

                    ; #64889: origin
                    (not_at_a_p7)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #64889: origin
                    (not_at_a_p7)

                    ; #68399: origin
                    (at_a_p12)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #64889: origin
                    (not_at_a_p7)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #64889: origin
                    (not_at_a_p7)

                    ; #76391: origin
                    (at_a_p3)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #64889: origin
                    (not_at_a_p7)

                    ; #71616: origin
                    (at_a_p4)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #64889: origin
                    (not_at_a_p7)

                    ; #80190: origin
                    (at_a_p5)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #64889: origin
                    (not_at_a_p7)

                    ; #67688: origin
                    (at_a_p6)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #64889: origin
                    (not_at_a_p7)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #64889: origin
                    (not_at_a_p7)

                    ; #89665: origin
                    (at_a_p8)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #30630: origin
                    (at_a_p9)

                    ; #64889: origin
                    (not_at_a_p7)

                    ; #13217: <==negation-removal== 64889 (pos)
                    (not (at_a_p7))

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #47048: origin
                    (at_a_p1)

                    ; #79529: origin
                    (not_at_a_p8)

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #79529: origin
                    (not_at_a_p8)

                    ; #86589: origin
                    (at_a_p10)

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #60548: origin
                    (at_a_p11)

                    ; #79529: origin
                    (not_at_a_p8)

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #68399: origin
                    (at_a_p12)

                    ; #79529: origin
                    (not_at_a_p8)

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #79529: origin
                    (not_at_a_p8)

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #76391: origin
                    (at_a_p3)

                    ; #79529: origin
                    (not_at_a_p8)

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #71616: origin
                    (at_a_p4)

                    ; #79529: origin
                    (not_at_a_p8)

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #79529: origin
                    (not_at_a_p8)

                    ; #80190: origin
                    (at_a_p5)

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #67688: origin
                    (at_a_p6)

                    ; #79529: origin
                    (not_at_a_p8)

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #79529: origin
                    (not_at_a_p8)

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #79529: origin
                    (not_at_a_p8)

                    ; #89665: origin
                    (at_a_p8)

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #30630: origin
                    (at_a_p9)

                    ; #79529: origin
                    (not_at_a_p8)

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))

                    ; #89665: <==negation-removal== 79529 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #28838: origin
                    (not_at_a_p9)

                    ; #47048: origin
                    (at_a_p1)

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))

                    ; #57460: <==negation-removal== 47048 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #28838: origin
                    (not_at_a_p9)

                    ; #86589: origin
                    (at_a_p10)

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))

                    ; #92072: <==negation-removal== 86589 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #28838: origin
                    (not_at_a_p9)

                    ; #60548: origin
                    (at_a_p11)

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))

                    ; #43528: <==negation-removal== 60548 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #28838: origin
                    (not_at_a_p9)

                    ; #68399: origin
                    (at_a_p12)

                    ; #27513: <==negation-removal== 68399 (pos)
                    (not (not_at_a_p12))

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #24273: origin
                    (at_a_p2)

                    ; #28838: origin
                    (not_at_a_p9)

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))

                    ; #57162: <==negation-removal== 24273 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #28838: origin
                    (not_at_a_p9)

                    ; #76391: origin
                    (at_a_p3)

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))

                    ; #79587: <==negation-removal== 76391 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #28838: origin
                    (not_at_a_p9)

                    ; #71616: origin
                    (at_a_p4)

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))

                    ; #63154: <==negation-removal== 71616 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #28838: origin
                    (not_at_a_p9)

                    ; #80190: origin
                    (at_a_p5)

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))

                    ; #65101: <==negation-removal== 80190 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #28838: origin
                    (not_at_a_p9)

                    ; #67688: origin
                    (at_a_p6)

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))

                    ; #52681: <==negation-removal== 67688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #13217: origin
                    (at_a_p7)

                    ; #28838: origin
                    (not_at_a_p9)

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))

                    ; #64889: <==negation-removal== 13217 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #28838: origin
                    (not_at_a_p9)

                    ; #89665: origin
                    (at_a_p8)

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))

                    ; #79529: <==negation-removal== 89665 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #28838: origin
                    (not_at_a_p9)

                    ; #30630: origin
                    (at_a_p9)

                    ; #28838: <==negation-removal== 30630 (pos)
                    (not (not_at_a_p9))

                    ; #30630: <==negation-removal== 28838 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #11662: origin
                    (not_at_b_p10)

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #44366: origin
                    (at_b_p10)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #23115: origin
                    (at_b_p11)

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #32138: origin
                    (at_b_p12)

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #27105: origin
                    (at_b_p2)

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #41914: origin
                    (at_b_p3)

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #52549: origin
                    (at_b_p4)

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #59410: origin
                    (at_b_p5)

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #34083: origin
                    (at_b_p6)

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #17073: origin
                    (at_b_p7)

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #83520: origin
                    (at_b_p8)

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #11662: origin
                    (not_at_b_p10)

                    ; #12107: origin
                    (at_b_p9)

                    ; #44366: <==negation-removal== 11662 (pos)
                    (not (at_b_p10))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #35019: origin
                    (not_at_b_p11)

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #35019: origin
                    (not_at_b_p11)

                    ; #44366: origin
                    (at_b_p10)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #23115: origin
                    (at_b_p11)

                    ; #35019: origin
                    (not_at_b_p11)

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #32138: origin
                    (at_b_p12)

                    ; #35019: origin
                    (not_at_b_p11)

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #27105: origin
                    (at_b_p2)

                    ; #35019: origin
                    (not_at_b_p11)

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #35019: origin
                    (not_at_b_p11)

                    ; #41914: origin
                    (at_b_p3)

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #35019: origin
                    (not_at_b_p11)

                    ; #52549: origin
                    (at_b_p4)

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #35019: origin
                    (not_at_b_p11)

                    ; #59410: origin
                    (at_b_p5)

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #34083: origin
                    (at_b_p6)

                    ; #35019: origin
                    (not_at_b_p11)

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #17073: origin
                    (at_b_p7)

                    ; #35019: origin
                    (not_at_b_p11)

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #35019: origin
                    (not_at_b_p11)

                    ; #83520: origin
                    (at_b_p8)

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #35019: origin
                    (not_at_b_p11)

                    ; #23115: <==negation-removal== 35019 (pos)
                    (not (at_b_p11))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #16547: origin
                    (not_at_b_p12)

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #16547: origin
                    (not_at_b_p12)

                    ; #44366: origin
                    (at_b_p10)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #16547: origin
                    (not_at_b_p12)

                    ; #23115: origin
                    (at_b_p11)

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #16547: origin
                    (not_at_b_p12)

                    ; #32138: origin
                    (at_b_p12)

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #16547: origin
                    (not_at_b_p12)

                    ; #27105: origin
                    (at_b_p2)

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #16547: origin
                    (not_at_b_p12)

                    ; #41914: origin
                    (at_b_p3)

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #16547: origin
                    (not_at_b_p12)

                    ; #52549: origin
                    (at_b_p4)

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #16547: origin
                    (not_at_b_p12)

                    ; #59410: origin
                    (at_b_p5)

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #16547: origin
                    (not_at_b_p12)

                    ; #34083: origin
                    (at_b_p6)

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #16547: origin
                    (not_at_b_p12)

                    ; #17073: origin
                    (at_b_p7)

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #16547: origin
                    (not_at_b_p12)

                    ; #83520: origin
                    (at_b_p8)

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #16547: origin
                    (not_at_b_p12)

                    ; #32138: <==negation-removal== 16547 (pos)
                    (not (at_b_p12))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #44366: origin
                    (at_b_p10)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #23115: origin
                    (at_b_p11)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #32138: origin
                    (at_b_p12)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #27105: origin
                    (at_b_p2)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #41914: origin
                    (at_b_p3)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #52549: origin
                    (at_b_p4)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #59410: origin
                    (at_b_p5)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #34083: origin
                    (at_b_p6)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #17073: origin
                    (at_b_p7)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #65749: origin
                    (not_at_b_p1)

                    ; #83520: origin
                    (at_b_p8)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #65749: origin
                    (not_at_b_p1)

                    ; #10520: <==negation-removal== 65749 (pos)
                    (not (at_b_p1))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #44366: origin
                    (at_b_p10)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #23115: origin
                    (at_b_p11)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #32138: origin
                    (at_b_p12)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #27105: origin
                    (at_b_p2)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #41914: origin
                    (at_b_p3)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #52549: origin
                    (at_b_p4)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #59410: origin
                    (at_b_p5)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #34083: origin
                    (at_b_p6)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #17073: origin
                    (at_b_p7)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #83520: origin
                    (at_b_p8)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #88912: origin
                    (not_at_b_p2)

                    ; #27105: <==negation-removal== 88912 (pos)
                    (not (at_b_p2))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #12279: origin
                    (not_at_b_p3)

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #12279: origin
                    (not_at_b_p3)

                    ; #44366: origin
                    (at_b_p10)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #12279: origin
                    (not_at_b_p3)

                    ; #23115: origin
                    (at_b_p11)

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #12279: origin
                    (not_at_b_p3)

                    ; #32138: origin
                    (at_b_p12)

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #12279: origin
                    (not_at_b_p3)

                    ; #27105: origin
                    (at_b_p2)

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #12279: origin
                    (not_at_b_p3)

                    ; #41914: origin
                    (at_b_p3)

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #12279: origin
                    (not_at_b_p3)

                    ; #52549: origin
                    (at_b_p4)

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #12279: origin
                    (not_at_b_p3)

                    ; #59410: origin
                    (at_b_p5)

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #12279: origin
                    (not_at_b_p3)

                    ; #34083: origin
                    (at_b_p6)

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #12279: origin
                    (not_at_b_p3)

                    ; #17073: origin
                    (at_b_p7)

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #12279: origin
                    (not_at_b_p3)

                    ; #83520: origin
                    (at_b_p8)

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #12279: origin
                    (not_at_b_p3)

                    ; #41914: <==negation-removal== 12279 (pos)
                    (not (at_b_p3))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #31198: origin
                    (not_at_b_p4)

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #31198: origin
                    (not_at_b_p4)

                    ; #44366: origin
                    (at_b_p10)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #23115: origin
                    (at_b_p11)

                    ; #31198: origin
                    (not_at_b_p4)

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #31198: origin
                    (not_at_b_p4)

                    ; #32138: origin
                    (at_b_p12)

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #27105: origin
                    (at_b_p2)

                    ; #31198: origin
                    (not_at_b_p4)

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #31198: origin
                    (not_at_b_p4)

                    ; #41914: origin
                    (at_b_p3)

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #31198: origin
                    (not_at_b_p4)

                    ; #52549: origin
                    (at_b_p4)

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #31198: origin
                    (not_at_b_p4)

                    ; #59410: origin
                    (at_b_p5)

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #31198: origin
                    (not_at_b_p4)

                    ; #34083: origin
                    (at_b_p6)

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #17073: origin
                    (at_b_p7)

                    ; #31198: origin
                    (not_at_b_p4)

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #31198: origin
                    (not_at_b_p4)

                    ; #83520: origin
                    (at_b_p8)

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #31198: origin
                    (not_at_b_p4)

                    ; #52549: <==negation-removal== 31198 (pos)
                    (not (at_b_p4))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #13025: origin
                    (not_at_b_p5)

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #13025: origin
                    (not_at_b_p5)

                    ; #44366: origin
                    (at_b_p10)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5))
        :effect (and
                    ; #13025: origin
                    (not_at_b_p5)

                    ; #23115: origin
                    (at_b_p11)

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #13025: origin
                    (not_at_b_p5)

                    ; #32138: origin
                    (at_b_p12)

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #13025: origin
                    (not_at_b_p5)

                    ; #27105: origin
                    (at_b_p2)

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #13025: origin
                    (not_at_b_p5)

                    ; #41914: origin
                    (at_b_p3)

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #13025: origin
                    (not_at_b_p5)

                    ; #52549: origin
                    (at_b_p4)

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #13025: origin
                    (not_at_b_p5)

                    ; #59410: origin
                    (at_b_p5)

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #13025: origin
                    (not_at_b_p5)

                    ; #34083: origin
                    (at_b_p6)

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #13025: origin
                    (not_at_b_p5)

                    ; #17073: origin
                    (at_b_p7)

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #13025: origin
                    (not_at_b_p5)

                    ; #83520: origin
                    (at_b_p8)

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #13025: origin
                    (not_at_b_p5)

                    ; #59410: <==negation-removal== 13025 (pos)
                    (not (at_b_p5))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #44366: origin
                    (at_b_p10)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #23115: origin
                    (at_b_p11)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #32138: origin
                    (at_b_p12)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #27105: origin
                    (at_b_p2)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #41914: origin
                    (at_b_p3)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #52549: origin
                    (at_b_p4)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #59410: origin
                    (at_b_p5)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #34083: origin
                    (at_b_p6)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #17073: origin
                    (at_b_p7)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #81852: origin
                    (not_at_b_p6)

                    ; #83520: origin
                    (at_b_p8)

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #81852: origin
                    (not_at_b_p6)

                    ; #34083: <==negation-removal== 81852 (pos)
                    (not (at_b_p6))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #48955: origin
                    (not_at_b_p7)

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #44366: origin
                    (at_b_p10)

                    ; #48955: origin
                    (not_at_b_p7)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #23115: origin
                    (at_b_p11)

                    ; #48955: origin
                    (not_at_b_p7)

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #32138: origin
                    (at_b_p12)

                    ; #48955: origin
                    (not_at_b_p7)

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #27105: origin
                    (at_b_p2)

                    ; #48955: origin
                    (not_at_b_p7)

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #41914: origin
                    (at_b_p3)

                    ; #48955: origin
                    (not_at_b_p7)

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #48955: origin
                    (not_at_b_p7)

                    ; #52549: origin
                    (at_b_p4)

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #48955: origin
                    (not_at_b_p7)

                    ; #59410: origin
                    (at_b_p5)

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #34083: origin
                    (at_b_p6)

                    ; #48955: origin
                    (not_at_b_p7)

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #17073: origin
                    (at_b_p7)

                    ; #48955: origin
                    (not_at_b_p7)

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #48955: origin
                    (not_at_b_p7)

                    ; #83520: origin
                    (at_b_p8)

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #48955: origin
                    (not_at_b_p7)

                    ; #17073: <==negation-removal== 48955 (pos)
                    (not (at_b_p7))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #44366: origin
                    (at_b_p10)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #23115: origin
                    (at_b_p11)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #32138: origin
                    (at_b_p12)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #27105: origin
                    (at_b_p2)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #41914: origin
                    (at_b_p3)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #52549: origin
                    (at_b_p4)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #59410: origin
                    (at_b_p5)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #34083: origin
                    (at_b_p6)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #17073: origin
                    (at_b_p7)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #61174: origin
                    (not_at_b_p8)

                    ; #83520: origin
                    (at_b_p8)

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #61174: origin
                    (not_at_b_p8)

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))

                    ; #83520: <==negation-removal== 61174 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #10520: origin
                    (at_b_p1)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #65749: <==negation-removal== 10520 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #44366: origin
                    (at_b_p10)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #11662: <==negation-removal== 44366 (pos)
                    (not (not_at_b_p10))

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #23115: origin
                    (at_b_p11)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #35019: <==negation-removal== 23115 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #32138: origin
                    (at_b_p12)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #16547: <==negation-removal== 32138 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #27105: origin
                    (at_b_p2)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #88912: <==negation-removal== 27105 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #41914: origin
                    (at_b_p3)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #12279: <==negation-removal== 41914 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #52549: origin
                    (at_b_p4)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #31198: <==negation-removal== 52549 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #59410: origin
                    (at_b_p5)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #13025: <==negation-removal== 59410 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #34083: origin
                    (at_b_p6)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #81852: <==negation-removal== 34083 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #17073: origin
                    (at_b_p7)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #48955: <==negation-removal== 17073 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #82510: origin
                    (not_at_b_p9)

                    ; #83520: origin
                    (at_b_p8)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #61174: <==negation-removal== 83520 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #12107: origin
                    (at_b_p9)

                    ; #82510: origin
                    (not_at_b_p9)

                    ; #12107: <==negation-removal== 82510 (pos)
                    (not (at_b_p9))

                    ; #82510: <==negation-removal== 12107 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #42242: origin
                    (at_c_p1)

                    ; #53962: origin
                    (not_at_c_p10)

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #29028: origin
                    (at_c_p10)

                    ; #53962: origin
                    (not_at_c_p10)

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #44837: origin
                    (at_c_p11)

                    ; #53962: origin
                    (not_at_c_p10)

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #53962: origin
                    (not_at_c_p10)

                    ; #83740: origin
                    (at_c_p12)

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #53962: origin
                    (not_at_c_p10)

                    ; #81712: origin
                    (at_c_p2)

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #46726: origin
                    (at_c_p3)

                    ; #53962: origin
                    (not_at_c_p10)

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #53962: origin
                    (not_at_c_p10)

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #53962: origin
                    (not_at_c_p10)

                    ; #72665: origin
                    (at_c_p5)

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #53962: origin
                    (not_at_c_p10)

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #28725: origin
                    (at_c_p7)

                    ; #53962: origin
                    (not_at_c_p10)

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #53962: origin
                    (not_at_c_p10)

                    ; #64732: origin
                    (at_c_p8)

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #53962: origin
                    (not_at_c_p10)

                    ; #70508: origin
                    (at_c_p9)

                    ; #29028: <==negation-removal== 53962 (pos)
                    (not (at_c_p10))

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #42242: origin
                    (at_c_p1)

                    ; #46895: origin
                    (not_at_c_p11)

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #29028: origin
                    (at_c_p10)

                    ; #46895: origin
                    (not_at_c_p11)

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #44837: origin
                    (at_c_p11)

                    ; #46895: origin
                    (not_at_c_p11)

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #46895: origin
                    (not_at_c_p11)

                    ; #83740: origin
                    (at_c_p12)

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #46895: origin
                    (not_at_c_p11)

                    ; #81712: origin
                    (at_c_p2)

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #46726: origin
                    (at_c_p3)

                    ; #46895: origin
                    (not_at_c_p11)

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #46895: origin
                    (not_at_c_p11)

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #46895: origin
                    (not_at_c_p11)

                    ; #72665: origin
                    (at_c_p5)

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #46895: origin
                    (not_at_c_p11)

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #28725: origin
                    (at_c_p7)

                    ; #46895: origin
                    (not_at_c_p11)

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #46895: origin
                    (not_at_c_p11)

                    ; #64732: origin
                    (at_c_p8)

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #46895: origin
                    (not_at_c_p11)

                    ; #70508: origin
                    (at_c_p9)

                    ; #44837: <==negation-removal== 46895 (pos)
                    (not (at_c_p11))

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #42242: origin
                    (at_c_p1)

                    ; #54263: origin
                    (not_at_c_p12)

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #29028: origin
                    (at_c_p10)

                    ; #54263: origin
                    (not_at_c_p12)

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #44837: origin
                    (at_c_p11)

                    ; #54263: origin
                    (not_at_c_p12)

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #54263: origin
                    (not_at_c_p12)

                    ; #83740: origin
                    (at_c_p12)

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #54263: origin
                    (not_at_c_p12)

                    ; #81712: origin
                    (at_c_p2)

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #46726: origin
                    (at_c_p3)

                    ; #54263: origin
                    (not_at_c_p12)

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #54263: origin
                    (not_at_c_p12)

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #54263: origin
                    (not_at_c_p12)

                    ; #72665: origin
                    (at_c_p5)

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #54263: origin
                    (not_at_c_p12)

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #28725: origin
                    (at_c_p7)

                    ; #54263: origin
                    (not_at_c_p12)

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #54263: origin
                    (not_at_c_p12)

                    ; #64732: origin
                    (at_c_p8)

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #54263: origin
                    (not_at_c_p12)

                    ; #70508: origin
                    (at_c_p9)

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))

                    ; #83740: <==negation-removal== 54263 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #24914: origin
                    (not_at_c_p1)

                    ; #42242: origin
                    (at_c_p1)

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #24914: origin
                    (not_at_c_p1)

                    ; #29028: origin
                    (at_c_p10)

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #24914: origin
                    (not_at_c_p1)

                    ; #44837: origin
                    (at_c_p11)

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #24914: origin
                    (not_at_c_p1)

                    ; #83740: origin
                    (at_c_p12)

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #24914: origin
                    (not_at_c_p1)

                    ; #81712: origin
                    (at_c_p2)

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #24914: origin
                    (not_at_c_p1)

                    ; #46726: origin
                    (at_c_p3)

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #24914: origin
                    (not_at_c_p1)

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #24914: origin
                    (not_at_c_p1)

                    ; #72665: origin
                    (at_c_p5)

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #24914: origin
                    (not_at_c_p1)

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #24914: origin
                    (not_at_c_p1)

                    ; #28725: origin
                    (at_c_p7)

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #24914: origin
                    (not_at_c_p1)

                    ; #64732: origin
                    (at_c_p8)

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #24914: origin
                    (not_at_c_p1)

                    ; #70508: origin
                    (at_c_p9)

                    ; #42242: <==negation-removal== 24914 (pos)
                    (not (at_c_p1))

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #18457: origin
                    (not_at_c_p2)

                    ; #42242: origin
                    (at_c_p1)

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #18457: origin
                    (not_at_c_p2)

                    ; #29028: origin
                    (at_c_p10)

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #18457: origin
                    (not_at_c_p2)

                    ; #44837: origin
                    (at_c_p11)

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #18457: origin
                    (not_at_c_p2)

                    ; #83740: origin
                    (at_c_p12)

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #18457: origin
                    (not_at_c_p2)

                    ; #81712: origin
                    (at_c_p2)

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #18457: origin
                    (not_at_c_p2)

                    ; #46726: origin
                    (at_c_p3)

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #18457: origin
                    (not_at_c_p2)

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #18457: origin
                    (not_at_c_p2)

                    ; #72665: origin
                    (at_c_p5)

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #18457: origin
                    (not_at_c_p2)

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #18457: origin
                    (not_at_c_p2)

                    ; #28725: origin
                    (at_c_p7)

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #18457: origin
                    (not_at_c_p2)

                    ; #64732: origin
                    (at_c_p8)

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #18457: origin
                    (not_at_c_p2)

                    ; #70508: origin
                    (at_c_p9)

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))

                    ; #81712: <==negation-removal== 18457 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #42242: origin
                    (at_c_p1)

                    ; #50412: origin
                    (not_at_c_p3)

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #29028: origin
                    (at_c_p10)

                    ; #50412: origin
                    (not_at_c_p3)

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #44837: origin
                    (at_c_p11)

                    ; #50412: origin
                    (not_at_c_p3)

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #50412: origin
                    (not_at_c_p3)

                    ; #83740: origin
                    (at_c_p12)

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #50412: origin
                    (not_at_c_p3)

                    ; #81712: origin
                    (at_c_p2)

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #46726: origin
                    (at_c_p3)

                    ; #50412: origin
                    (not_at_c_p3)

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #50412: origin
                    (not_at_c_p3)

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #50412: origin
                    (not_at_c_p3)

                    ; #72665: origin
                    (at_c_p5)

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #50412: origin
                    (not_at_c_p3)

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #28725: origin
                    (at_c_p7)

                    ; #50412: origin
                    (not_at_c_p3)

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #50412: origin
                    (not_at_c_p3)

                    ; #64732: origin
                    (at_c_p8)

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #50412: origin
                    (not_at_c_p3)

                    ; #70508: origin
                    (at_c_p9)

                    ; #46726: <==negation-removal== 50412 (pos)
                    (not (at_c_p3))

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #27785: origin
                    (not_at_c_p4)

                    ; #42242: origin
                    (at_c_p1)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #27785: origin
                    (not_at_c_p4)

                    ; #29028: origin
                    (at_c_p10)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #27785: origin
                    (not_at_c_p4)

                    ; #44837: origin
                    (at_c_p11)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #27785: origin
                    (not_at_c_p4)

                    ; #83740: origin
                    (at_c_p12)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #27785: origin
                    (not_at_c_p4)

                    ; #81712: origin
                    (at_c_p2)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #27785: origin
                    (not_at_c_p4)

                    ; #46726: origin
                    (at_c_p3)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #27785: origin
                    (not_at_c_p4)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #27785: origin
                    (not_at_c_p4)

                    ; #72665: origin
                    (at_c_p5)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #27785: origin
                    (not_at_c_p4)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #27785: origin
                    (not_at_c_p4)

                    ; #28725: origin
                    (at_c_p7)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #27785: origin
                    (not_at_c_p4)

                    ; #64732: origin
                    (at_c_p8)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #27785: origin
                    (not_at_c_p4)

                    ; #70508: origin
                    (at_c_p9)

                    ; #10725: <==negation-removal== 27785 (pos)
                    (not (at_c_p4))

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #42242: origin
                    (at_c_p1)

                    ; #79462: origin
                    (not_at_c_p5)

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #29028: origin
                    (at_c_p10)

                    ; #79462: origin
                    (not_at_c_p5)

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #44837: origin
                    (at_c_p11)

                    ; #79462: origin
                    (not_at_c_p5)

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #79462: origin
                    (not_at_c_p5)

                    ; #83740: origin
                    (at_c_p12)

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #79462: origin
                    (not_at_c_p5)

                    ; #81712: origin
                    (at_c_p2)

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #46726: origin
                    (at_c_p3)

                    ; #79462: origin
                    (not_at_c_p5)

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #79462: origin
                    (not_at_c_p5)

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #72665: origin
                    (at_c_p5)

                    ; #79462: origin
                    (not_at_c_p5)

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #79462: origin
                    (not_at_c_p5)

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #28725: origin
                    (at_c_p7)

                    ; #79462: origin
                    (not_at_c_p5)

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #64732: origin
                    (at_c_p8)

                    ; #79462: origin
                    (not_at_c_p5)

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #70508: origin
                    (at_c_p9)

                    ; #79462: origin
                    (not_at_c_p5)

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))

                    ; #72665: <==negation-removal== 79462 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #42242: origin
                    (at_c_p1)

                    ; #75490: origin
                    (not_at_c_p6)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #29028: origin
                    (at_c_p10)

                    ; #75490: origin
                    (not_at_c_p6)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #44837: origin
                    (at_c_p11)

                    ; #75490: origin
                    (not_at_c_p6)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #75490: origin
                    (not_at_c_p6)

                    ; #83740: origin
                    (at_c_p12)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #75490: origin
                    (not_at_c_p6)

                    ; #81712: origin
                    (at_c_p2)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #46726: origin
                    (at_c_p3)

                    ; #75490: origin
                    (not_at_c_p6)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #75490: origin
                    (not_at_c_p6)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #72665: origin
                    (at_c_p5)

                    ; #75490: origin
                    (not_at_c_p6)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #75490: origin
                    (not_at_c_p6)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #28725: origin
                    (at_c_p7)

                    ; #75490: origin
                    (not_at_c_p6)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #64732: origin
                    (at_c_p8)

                    ; #75490: origin
                    (not_at_c_p6)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #70508: origin
                    (at_c_p9)

                    ; #75490: origin
                    (not_at_c_p6)

                    ; #11887: <==negation-removal== 75490 (pos)
                    (not (at_c_p6))

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #35377: origin
                    (not_at_c_p7)

                    ; #42242: origin
                    (at_c_p1)

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #29028: origin
                    (at_c_p10)

                    ; #35377: origin
                    (not_at_c_p7)

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #35377: origin
                    (not_at_c_p7)

                    ; #44837: origin
                    (at_c_p11)

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #35377: origin
                    (not_at_c_p7)

                    ; #83740: origin
                    (at_c_p12)

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #35377: origin
                    (not_at_c_p7)

                    ; #81712: origin
                    (at_c_p2)

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #35377: origin
                    (not_at_c_p7)

                    ; #46726: origin
                    (at_c_p3)

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #35377: origin
                    (not_at_c_p7)

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #35377: origin
                    (not_at_c_p7)

                    ; #72665: origin
                    (at_c_p5)

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #35377: origin
                    (not_at_c_p7)

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #28725: origin
                    (at_c_p7)

                    ; #35377: origin
                    (not_at_c_p7)

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #35377: origin
                    (not_at_c_p7)

                    ; #64732: origin
                    (at_c_p8)

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #35377: origin
                    (not_at_c_p7)

                    ; #70508: origin
                    (at_c_p9)

                    ; #28725: <==negation-removal== 35377 (pos)
                    (not (at_c_p7))

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #42242: origin
                    (at_c_p1)

                    ; #61289: origin
                    (not_at_c_p8)

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #29028: origin
                    (at_c_p10)

                    ; #61289: origin
                    (not_at_c_p8)

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #44837: origin
                    (at_c_p11)

                    ; #61289: origin
                    (not_at_c_p8)

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #61289: origin
                    (not_at_c_p8)

                    ; #83740: origin
                    (at_c_p12)

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #61289: origin
                    (not_at_c_p8)

                    ; #81712: origin
                    (at_c_p2)

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #46726: origin
                    (at_c_p3)

                    ; #61289: origin
                    (not_at_c_p8)

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #61289: origin
                    (not_at_c_p8)

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #61289: origin
                    (not_at_c_p8)

                    ; #72665: origin
                    (at_c_p5)

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #61289: origin
                    (not_at_c_p8)

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #28725: origin
                    (at_c_p7)

                    ; #61289: origin
                    (not_at_c_p8)

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #61289: origin
                    (not_at_c_p8)

                    ; #64732: origin
                    (at_c_p8)

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #61289: origin
                    (not_at_c_p8)

                    ; #70508: origin
                    (at_c_p9)

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))

                    ; #64732: <==negation-removal== 61289 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #42242: origin
                    (at_c_p1)

                    ; #58355: origin
                    (not_at_c_p9)

                    ; #24914: <==negation-removal== 42242 (pos)
                    (not (not_at_c_p1))

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #29028: origin
                    (at_c_p10)

                    ; #58355: origin
                    (not_at_c_p9)

                    ; #53962: <==negation-removal== 29028 (pos)
                    (not (not_at_c_p10))

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #44837: origin
                    (at_c_p11)

                    ; #58355: origin
                    (not_at_c_p9)

                    ; #46895: <==negation-removal== 44837 (pos)
                    (not (not_at_c_p11))

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #58355: origin
                    (not_at_c_p9)

                    ; #83740: origin
                    (at_c_p12)

                    ; #54263: <==negation-removal== 83740 (pos)
                    (not (not_at_c_p12))

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #58355: origin
                    (not_at_c_p9)

                    ; #81712: origin
                    (at_c_p2)

                    ; #18457: <==negation-removal== 81712 (pos)
                    (not (not_at_c_p2))

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #46726: origin
                    (at_c_p3)

                    ; #58355: origin
                    (not_at_c_p9)

                    ; #50412: <==negation-removal== 46726 (pos)
                    (not (not_at_c_p3))

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #10725: origin
                    (at_c_p4)

                    ; #58355: origin
                    (not_at_c_p9)

                    ; #27785: <==negation-removal== 10725 (pos)
                    (not (not_at_c_p4))

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #58355: origin
                    (not_at_c_p9)

                    ; #72665: origin
                    (at_c_p5)

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))

                    ; #79462: <==negation-removal== 72665 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #11887: origin
                    (at_c_p6)

                    ; #58355: origin
                    (not_at_c_p9)

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))

                    ; #75490: <==negation-removal== 11887 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #28725: origin
                    (at_c_p7)

                    ; #58355: origin
                    (not_at_c_p9)

                    ; #35377: <==negation-removal== 28725 (pos)
                    (not (not_at_c_p7))

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #58355: origin
                    (not_at_c_p9)

                    ; #64732: origin
                    (at_c_p8)

                    ; #61289: <==negation-removal== 64732 (pos)
                    (not (not_at_c_p8))

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #58355: origin
                    (not_at_c_p9)

                    ; #70508: origin
                    (at_c_p9)

                    ; #58355: <==negation-removal== 70508 (pos)
                    (not (not_at_c_p9))

                    ; #70508: <==negation-removal== 58355 (pos)
                    (not (at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (at_d_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #89053: origin
                    (at_d_p1)

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p10_p10
        :precondition (and (at_d_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #41033: origin
                    (at_d_p10)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (at_d_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #19254: origin
                    (not_at_d_p10)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p12
        :precondition (and (at_d_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #32217: origin
                    (at_d_p12)

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p10_p2
        :precondition (and (at_d_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #45723: origin
                    (at_d_p2)

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p10_p3
        :precondition (and (at_d_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #65473: origin
                    (at_d_p3)

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p4
        :precondition (and (at_d_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #30696: origin
                    (at_d_p4)

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p10_p5
        :precondition (and (at_d_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #29969: origin
                    (at_d_p5)

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p6
        :precondition (and (at_d_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #23517: origin
                    (at_d_p6)

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_d_p10))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #88291: origin
                    (at_d_p7)

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #39483: origin
                    (at_d_p8)

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p10_p9
        :precondition (and (at_d_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #19254: origin
                    (not_at_d_p10)

                    ; #93950: origin
                    (at_d_p9)

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))

                    ; #41033: <==negation-removal== 19254 (pos)
                    (not (at_d_p10))))

    (:action move_d_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_d_p11))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #89053: origin
                    (at_d_p1)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p11_p10
        :precondition (and (at_d_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #41033: origin
                    (at_d_p10)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p11_p11
        :precondition (and (at_d_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #15945: origin
                    (at_d_p11)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (at_d_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #32217: origin
                    (at_d_p12)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p11_p2
        :precondition (and (at_d_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #45723: origin
                    (at_d_p2)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p11_p3
        :precondition (and (at_d_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #65473: origin
                    (at_d_p3)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p11_p4
        :precondition (and (at_d_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #30696: origin
                    (at_d_p4)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p11_p5
        :precondition (and (at_d_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #29969: origin
                    (at_d_p5)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p11_p6
        :precondition (and (at_d_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #23517: origin
                    (at_d_p6)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p11_p7
        :precondition (and (at_d_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #88291: origin
                    (at_d_p7)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p11_p8
        :precondition (and (at_d_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #39483: origin
                    (at_d_p8)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p11_p9
        :precondition (and (at_d_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #14238: origin
                    (not_at_d_p11)

                    ; #93950: origin
                    (at_d_p9)

                    ; #15945: <==negation-removal== 14238 (pos)
                    (not (at_d_p11))

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_d_p12))
        :effect (and
                    ; #66842: origin
                    (not_at_d_p12)

                    ; #89053: origin
                    (at_d_p1)

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_d_p12))
        :effect (and
                    ; #41033: origin
                    (at_d_p10)

                    ; #66842: origin
                    (not_at_d_p12)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_d_p12))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #66842: origin
                    (not_at_d_p12)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p12
        :precondition (and (at_d_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #32217: origin
                    (at_d_p12)

                    ; #66842: origin
                    (not_at_d_p12)

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (at_d_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #45723: origin
                    (at_d_p2)

                    ; #66842: origin
                    (not_at_d_p12)

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (at_d_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #65473: origin
                    (at_d_p3)

                    ; #66842: origin
                    (not_at_d_p12)

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_d_p12))
        :effect (and
                    ; #30696: origin
                    (at_d_p4)

                    ; #66842: origin
                    (not_at_d_p12)

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p12_p5
        :precondition (and (at_d_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #29969: origin
                    (at_d_p5)

                    ; #66842: origin
                    (not_at_d_p12)

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_d_p12))
        :effect (and
                    ; #23517: origin
                    (at_d_p6)

                    ; #66842: origin
                    (not_at_d_p12)

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p12_p7
        :precondition (and (at_d_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #66842: origin
                    (not_at_d_p12)

                    ; #88291: origin
                    (at_d_p7)

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p12_p8
        :precondition (and (at_d_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #39483: origin
                    (at_d_p8)

                    ; #66842: origin
                    (not_at_d_p12)

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p12_p9
        :precondition (and (at_d_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #66842: origin
                    (not_at_d_p12)

                    ; #93950: origin
                    (at_d_p9)

                    ; #32217: <==negation-removal== 66842 (pos)
                    (not (at_d_p12))

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1))
        :effect (and
                    ; #62784: origin
                    (not_at_d_p1)

                    ; #89053: origin
                    (at_d_p1)

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_d_p1))
        :effect (and
                    ; #41033: origin
                    (at_d_p10)

                    ; #62784: origin
                    (not_at_d_p1)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_d_p1))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #62784: origin
                    (not_at_d_p1)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_d_p1))
        :effect (and
                    ; #32217: origin
                    (at_d_p12)

                    ; #62784: origin
                    (not_at_d_p1)

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #45723: origin
                    (at_d_p2)

                    ; #62784: origin
                    (not_at_d_p1)

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #62784: origin
                    (not_at_d_p1)

                    ; #65473: origin
                    (at_d_p3)

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1))
        :effect (and
                    ; #30696: origin
                    (at_d_p4)

                    ; #62784: origin
                    (not_at_d_p1)

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1))
        :effect (and
                    ; #29969: origin
                    (at_d_p5)

                    ; #62784: origin
                    (not_at_d_p1)

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1))
        :effect (and
                    ; #23517: origin
                    (at_d_p6)

                    ; #62784: origin
                    (not_at_d_p1)

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #62784: origin
                    (not_at_d_p1)

                    ; #88291: origin
                    (at_d_p7)

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1))
        :effect (and
                    ; #39483: origin
                    (at_d_p8)

                    ; #62784: origin
                    (not_at_d_p1)

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #62784: origin
                    (not_at_d_p1)

                    ; #93950: origin
                    (at_d_p9)

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))

                    ; #89053: <==negation-removal== 62784 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #71362: origin
                    (not_at_d_p2)

                    ; #89053: origin
                    (at_d_p1)

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_d_p2))
        :effect (and
                    ; #41033: origin
                    (at_d_p10)

                    ; #71362: origin
                    (not_at_d_p2)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_d_p2))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #71362: origin
                    (not_at_d_p2)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_d_p2))
        :effect (and
                    ; #32217: origin
                    (at_d_p12)

                    ; #71362: origin
                    (not_at_d_p2)

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #45723: origin
                    (at_d_p2)

                    ; #71362: origin
                    (not_at_d_p2)

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #65473: origin
                    (at_d_p3)

                    ; #71362: origin
                    (not_at_d_p2)

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2))
        :effect (and
                    ; #30696: origin
                    (at_d_p4)

                    ; #71362: origin
                    (not_at_d_p2)

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #29969: origin
                    (at_d_p5)

                    ; #71362: origin
                    (not_at_d_p2)

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (at_d_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #23517: origin
                    (at_d_p6)

                    ; #71362: origin
                    (not_at_d_p2)

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #71362: origin
                    (not_at_d_p2)

                    ; #88291: origin
                    (at_d_p7)

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #39483: origin
                    (at_d_p8)

                    ; #71362: origin
                    (not_at_d_p2)

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #71362: origin
                    (not_at_d_p2)

                    ; #93950: origin
                    (at_d_p9)

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))

                    ; #45723: <==negation-removal== 71362 (pos)
                    (not (at_d_p2))))

    (:action move_d_p3_p1
        :precondition (and (at_d_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #39664: origin
                    (not_at_d_p3)

                    ; #89053: origin
                    (at_d_p1)

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p10
        :precondition (and (at_d_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #39664: origin
                    (not_at_d_p3)

                    ; #41033: origin
                    (at_d_p10)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p11
        :precondition (and (at_d_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #39664: origin
                    (not_at_d_p3)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p12
        :precondition (and (at_d_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #32217: origin
                    (at_d_p12)

                    ; #39664: origin
                    (not_at_d_p3)

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p3_p2
        :precondition (and (at_d_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #39664: origin
                    (not_at_d_p3)

                    ; #45723: origin
                    (at_d_p2)

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #39664: origin
                    (not_at_d_p3)

                    ; #65473: origin
                    (at_d_p3)

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #30696: origin
                    (at_d_p4)

                    ; #39664: origin
                    (not_at_d_p3)

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #29969: origin
                    (at_d_p5)

                    ; #39664: origin
                    (not_at_d_p3)

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p6
        :precondition (and (at_d_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #23517: origin
                    (at_d_p6)

                    ; #39664: origin
                    (not_at_d_p3)

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #39664: origin
                    (not_at_d_p3)

                    ; #88291: origin
                    (at_d_p7)

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (at_d_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #39483: origin
                    (at_d_p8)

                    ; #39664: origin
                    (not_at_d_p3)

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (at_d_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #39664: origin
                    (not_at_d_p3)

                    ; #93950: origin
                    (at_d_p9)

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))

                    ; #65473: <==negation-removal== 39664 (pos)
                    (not (at_d_p3))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #69869: origin
                    (not_at_d_p4)

                    ; #89053: origin
                    (at_d_p1)

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #41033: origin
                    (at_d_p10)

                    ; #69869: origin
                    (not_at_d_p4)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #69869: origin
                    (not_at_d_p4)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #32217: origin
                    (at_d_p12)

                    ; #69869: origin
                    (not_at_d_p4)

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #45723: origin
                    (at_d_p2)

                    ; #69869: origin
                    (not_at_d_p4)

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #65473: origin
                    (at_d_p3)

                    ; #69869: origin
                    (not_at_d_p4)

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #30696: origin
                    (at_d_p4)

                    ; #69869: origin
                    (not_at_d_p4)

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #29969: origin
                    (at_d_p5)

                    ; #69869: origin
                    (not_at_d_p4)

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_d_p4))
        :effect (and
                    ; #23517: origin
                    (at_d_p6)

                    ; #69869: origin
                    (not_at_d_p4)

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #69869: origin
                    (not_at_d_p4)

                    ; #88291: origin
                    (at_d_p7)

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #39483: origin
                    (at_d_p8)

                    ; #69869: origin
                    (not_at_d_p4)

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #69869: origin
                    (not_at_d_p4)

                    ; #93950: origin
                    (at_d_p9)

                    ; #30696: <==negation-removal== 69869 (pos)
                    (not (at_d_p4))

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (at_d_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #32709: origin
                    (not_at_d_p5)

                    ; #89053: origin
                    (at_d_p1)

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p10
        :precondition (and (at_d_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #32709: origin
                    (not_at_d_p5)

                    ; #41033: origin
                    (at_d_p10)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p11
        :precondition (and (at_d_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #32709: origin
                    (not_at_d_p5)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p12
        :precondition (and (at_d_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #32217: origin
                    (at_d_p12)

                    ; #32709: origin
                    (not_at_d_p5)

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p5_p2
        :precondition (and (at_d_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #32709: origin
                    (not_at_d_p5)

                    ; #45723: origin
                    (at_d_p2)

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #32709: origin
                    (not_at_d_p5)

                    ; #65473: origin
                    (at_d_p3)

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (at_d_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #30696: origin
                    (at_d_p4)

                    ; #32709: origin
                    (not_at_d_p5)

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #29969: origin
                    (at_d_p5)

                    ; #32709: origin
                    (not_at_d_p5)

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #23517: origin
                    (at_d_p6)

                    ; #32709: origin
                    (not_at_d_p5)

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (at_d_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #32709: origin
                    (not_at_d_p5)

                    ; #88291: origin
                    (at_d_p7)

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (at_d_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #32709: origin
                    (not_at_d_p5)

                    ; #39483: origin
                    (at_d_p8)

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #32709: origin
                    (not_at_d_p5)

                    ; #93950: origin
                    (at_d_p9)

                    ; #29969: <==negation-removal== 32709 (pos)
                    (not (at_d_p5))

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #57618: origin
                    (not_at_d_p6)

                    ; #89053: origin
                    (at_d_p1)

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p10
        :precondition (and (at_d_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #41033: origin
                    (at_d_p10)

                    ; #57618: origin
                    (not_at_d_p6)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_d_p6))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #57618: origin
                    (not_at_d_p6)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p12
        :precondition (and (at_d_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #32217: origin
                    (at_d_p12)

                    ; #57618: origin
                    (not_at_d_p6)

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #45723: origin
                    (at_d_p2)

                    ; #57618: origin
                    (not_at_d_p6)

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6))
        :effect (and
                    ; #57618: origin
                    (not_at_d_p6)

                    ; #65473: origin
                    (at_d_p3)

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6))
        :effect (and
                    ; #30696: origin
                    (at_d_p4)

                    ; #57618: origin
                    (not_at_d_p6)

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #29969: origin
                    (at_d_p5)

                    ; #57618: origin
                    (not_at_d_p6)

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #23517: origin
                    (at_d_p6)

                    ; #57618: origin
                    (not_at_d_p6)

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #57618: origin
                    (not_at_d_p6)

                    ; #88291: origin
                    (at_d_p7)

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #39483: origin
                    (at_d_p8)

                    ; #57618: origin
                    (not_at_d_p6)

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #57618: origin
                    (not_at_d_p6)

                    ; #93950: origin
                    (at_d_p9)

                    ; #23517: <==negation-removal== 57618 (pos)
                    (not (at_d_p6))

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #48274: origin
                    (not_at_d_p7)

                    ; #89053: origin
                    (at_d_p1)

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p10
        :precondition (and (at_d_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #41033: origin
                    (at_d_p10)

                    ; #48274: origin
                    (not_at_d_p7)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p11
        :precondition (and (at_d_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #48274: origin
                    (not_at_d_p7)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p12
        :precondition (and (at_d_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #32217: origin
                    (at_d_p12)

                    ; #48274: origin
                    (not_at_d_p7)

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #45723: origin
                    (at_d_p2)

                    ; #48274: origin
                    (not_at_d_p7)

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #48274: origin
                    (not_at_d_p7)

                    ; #65473: origin
                    (at_d_p3)

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #30696: origin
                    (at_d_p4)

                    ; #48274: origin
                    (not_at_d_p7)

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #29969: origin
                    (at_d_p5)

                    ; #48274: origin
                    (not_at_d_p7)

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #23517: origin
                    (at_d_p6)

                    ; #48274: origin
                    (not_at_d_p7)

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #48274: origin
                    (not_at_d_p7)

                    ; #88291: origin
                    (at_d_p7)

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #39483: origin
                    (at_d_p8)

                    ; #48274: origin
                    (not_at_d_p7)

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #48274: origin
                    (not_at_d_p7)

                    ; #93950: origin
                    (at_d_p9)

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))

                    ; #88291: <==negation-removal== 48274 (pos)
                    (not (at_d_p7))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #78578: origin
                    (not_at_d_p8)

                    ; #89053: origin
                    (at_d_p1)

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p10
        :precondition (and (at_d_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #41033: origin
                    (at_d_p10)

                    ; #78578: origin
                    (not_at_d_p8)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p11
        :precondition (and (at_d_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #78578: origin
                    (not_at_d_p8)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #32217: origin
                    (at_d_p12)

                    ; #78578: origin
                    (not_at_d_p8)

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #45723: origin
                    (at_d_p2)

                    ; #78578: origin
                    (not_at_d_p8)

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #65473: origin
                    (at_d_p3)

                    ; #78578: origin
                    (not_at_d_p8)

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #30696: origin
                    (at_d_p4)

                    ; #78578: origin
                    (not_at_d_p8)

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #29969: origin
                    (at_d_p5)

                    ; #78578: origin
                    (not_at_d_p8)

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #23517: origin
                    (at_d_p6)

                    ; #78578: origin
                    (not_at_d_p8)

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #78578: origin
                    (not_at_d_p8)

                    ; #88291: origin
                    (at_d_p7)

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8))
        :effect (and
                    ; #39483: origin
                    (at_d_p8)

                    ; #78578: origin
                    (not_at_d_p8)

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #78578: origin
                    (not_at_d_p8)

                    ; #93950: origin
                    (at_d_p9)

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))

                    ; #39483: <==negation-removal== 78578 (pos)
                    (not (at_d_p8))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9))
        :effect (and
                    ; #34462: origin
                    (not_at_d_p9)

                    ; #89053: origin
                    (at_d_p1)

                    ; #62784: <==negation-removal== 89053 (pos)
                    (not (not_at_d_p1))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p10
        :precondition (and (at_d_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #34462: origin
                    (not_at_d_p9)

                    ; #41033: origin
                    (at_d_p10)

                    ; #19254: <==negation-removal== 41033 (pos)
                    (not (not_at_d_p10))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p11
        :precondition (and (at_d_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #15945: origin
                    (at_d_p11)

                    ; #34462: origin
                    (not_at_d_p9)

                    ; #14238: <==negation-removal== 15945 (pos)
                    (not (not_at_d_p11))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p12
        :precondition (and (at_d_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #32217: origin
                    (at_d_p12)

                    ; #34462: origin
                    (not_at_d_p9)

                    ; #66842: <==negation-removal== 32217 (pos)
                    (not (not_at_d_p12))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #34462: origin
                    (not_at_d_p9)

                    ; #45723: origin
                    (at_d_p2)

                    ; #71362: <==negation-removal== 45723 (pos)
                    (not (not_at_d_p2))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9))
        :effect (and
                    ; #34462: origin
                    (not_at_d_p9)

                    ; #65473: origin
                    (at_d_p3)

                    ; #39664: <==negation-removal== 65473 (pos)
                    (not (not_at_d_p3))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #30696: origin
                    (at_d_p4)

                    ; #34462: origin
                    (not_at_d_p9)

                    ; #69869: <==negation-removal== 30696 (pos)
                    (not (not_at_d_p4))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #29969: origin
                    (at_d_p5)

                    ; #34462: origin
                    (not_at_d_p9)

                    ; #32709: <==negation-removal== 29969 (pos)
                    (not (not_at_d_p5))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #23517: origin
                    (at_d_p6)

                    ; #34462: origin
                    (not_at_d_p9)

                    ; #57618: <==negation-removal== 23517 (pos)
                    (not (not_at_d_p6))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #34462: origin
                    (not_at_d_p9)

                    ; #88291: origin
                    (at_d_p7)

                    ; #48274: <==negation-removal== 88291 (pos)
                    (not (not_at_d_p7))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #34462: origin
                    (not_at_d_p9)

                    ; #39483: origin
                    (at_d_p8)

                    ; #78578: <==negation-removal== 39483 (pos)
                    (not (not_at_d_p8))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9))
        :effect (and
                    ; #34462: origin
                    (not_at_d_p9)

                    ; #93950: origin
                    (at_d_p9)

                    ; #34462: <==negation-removal== 93950 (pos)
                    (not (not_at_d_p9))

                    ; #93950: <==negation-removal== 34462 (pos)
                    (not (at_d_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15783: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #21337: <==closure== 76176 (pos)
                    (Pd_checked_p10)

                    ; #30549: <==closure== 38663 (pos)
                    (Pa_checked_p10)

                    ; #37643: <==closure== 69379 (pos)
                    (Pc_checked_p10)

                    ; #38630: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #38663: <==commonly_known== 53446 (pos)
                    (Ba_checked_p10)

                    ; #43572: <==commonly_known== 53446 (pos)
                    (Bb_checked_p10)

                    ; #44966: <==closure== 38630 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #53446: origin
                    (checked_p10)

                    ; #53493: <==closure== 15783 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #59063: <==closure== 43572 (pos)
                    (Pb_checked_p10)

                    ; #69379: <==commonly_known== 53446 (pos)
                    (Bc_checked_p10)

                    ; #76176: <==commonly_known== 53446 (pos)
                    (Bd_checked_p10)

                    ; #13019: <==unclosure== 25567 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #13784: <==negation-removal== 38663 (pos)
                    (not (Pa_not_checked_p10))

                    ; #15765: <==negation-removal== 30549 (pos)
                    (not (Ba_not_checked_p10))

                    ; #22173: <==negation-removal== 37643 (pos)
                    (not (Bc_not_checked_p10))

                    ; #25567: <==uncertain_firing== 15783 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #28065: <==negation-removal== 44966 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #34819: <==negation-removal== 59063 (pos)
                    (not (Bb_not_checked_p10))

                    ; #46390: <==negation-removal== 53493 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #58784: <==negation-removal== 76176 (pos)
                    (not (Pd_not_checked_p10))

                    ; #60822: <==negation-removal== 38630 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #73083: <==unclosure== 84812 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #76160: <==negation-removal== 15783 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #79596: <==negation-removal== 53446 (pos)
                    (not (not_checked_p10))

                    ; #83151: <==negation-removal== 69379 (pos)
                    (not (Pc_not_checked_p10))

                    ; #84812: <==uncertain_firing== 38630 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #85816: <==negation-removal== 21337 (pos)
                    (not (Bd_not_checked_p10))

                    ; #90787: <==negation-removal== 43572 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #16734: <==commonly_known== 71993 (pos)
                    (Ba_checked_p11)

                    ; #26436: <==closure== 43792 (pos)
                    (Pc_checked_p11)

                    ; #33822: <==closure== 66234 (pos)
                    (Pd_checked_p11)

                    ; #35112: <==commonly_known== 71993 (pos)
                    (Bb_checked_p11)

                    ; #43792: <==commonly_known== 71993 (pos)
                    (Bc_checked_p11)

                    ; #45501: <==closure== 67525 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #46358: <==closure== 49098 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #49098: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #51272: <==closure== 16734 (pos)
                    (Pa_checked_p11)

                    ; #66234: <==commonly_known== 71993 (pos)
                    (Bd_checked_p11)

                    ; #67525: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #71993: origin
                    (checked_p11)

                    ; #89874: <==closure== 35112 (pos)
                    (Pb_checked_p11)

                    ; #17334: <==negation-removal== 45501 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #25514: <==negation-removal== 66234 (pos)
                    (not (Pd_not_checked_p11))

                    ; #31563: <==negation-removal== 16734 (pos)
                    (not (Pa_not_checked_p11))

                    ; #33077: <==negation-removal== 35112 (pos)
                    (not (Pb_not_checked_p11))

                    ; #34277: <==negation-removal== 49098 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #36442: <==negation-removal== 51272 (pos)
                    (not (Ba_not_checked_p11))

                    ; #39835: <==negation-removal== 89874 (pos)
                    (not (Bb_not_checked_p11))

                    ; #40631: <==unclosure== 80112 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #47836: <==negation-removal== 26436 (pos)
                    (not (Bc_not_checked_p11))

                    ; #56757: <==negation-removal== 33822 (pos)
                    (not (Bd_not_checked_p11))

                    ; #63864: <==negation-removal== 46358 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #66065: <==uncertain_firing== 49098 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #70880: <==unclosure== 66065 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #76185: <==negation-removal== 67525 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #80112: <==uncertain_firing== 67525 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #82567: <==negation-removal== 43792 (pos)
                    (not (Pc_not_checked_p11))

                    ; #82647: <==negation-removal== 71993 (pos)
                    (not (not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #14367: <==commonly_known== 56356 (pos)
                    (Bc_checked_p12)

                    ; #20850: <==closure== 62371 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #45047: <==closure== 71478 (pos)
                    (Pa_checked_p12)

                    ; #45654: <==closure== 88263 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #47098: <==closure== 66923 (pos)
                    (Pd_checked_p12)

                    ; #49704: <==commonly_known== 56356 (pos)
                    (Bb_checked_p12)

                    ; #56356: origin
                    (checked_p12)

                    ; #62371: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #65893: <==closure== 14367 (pos)
                    (Pc_checked_p12)

                    ; #66923: <==commonly_known== 56356 (pos)
                    (Bd_checked_p12)

                    ; #71478: <==commonly_known== 56356 (pos)
                    (Ba_checked_p12)

                    ; #81918: <==closure== 49704 (pos)
                    (Pb_checked_p12)

                    ; #88263: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #16273: <==negation-removal== 14367 (pos)
                    (not (Pc_not_checked_p12))

                    ; #31031: <==negation-removal== 66923 (pos)
                    (not (Pd_not_checked_p12))

                    ; #34182: <==negation-removal== 45654 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #34226: <==negation-removal== 56356 (pos)
                    (not (not_checked_p12))

                    ; #42400: <==negation-removal== 88263 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #42781: <==negation-removal== 47098 (pos)
                    (not (Bd_not_checked_p12))

                    ; #55572: <==negation-removal== 71478 (pos)
                    (not (Pa_not_checked_p12))

                    ; #56216: <==unclosure== 73356 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #58922: <==negation-removal== 20850 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #69787: <==uncertain_firing== 62371 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #71475: <==negation-removal== 65893 (pos)
                    (not (Bc_not_checked_p12))

                    ; #71601: <==negation-removal== 62371 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #73356: <==uncertain_firing== 88263 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #76813: <==negation-removal== 45047 (pos)
                    (not (Ba_not_checked_p12))

                    ; #76826: <==unclosure== 69787 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #89309: <==negation-removal== 81918 (pos)
                    (not (Bb_not_checked_p12))

                    ; #91964: <==negation-removal== 49704 (pos)
                    (not (Pb_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #20455: <==closure== 71461 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #32209: <==commonly_known== 54440 (pos)
                    (Bb_checked_p1)

                    ; #34630: <==closure== 51531 (pos)
                    (Pc_checked_p1)

                    ; #39640: <==commonly_known== 54440 (pos)
                    (Bd_checked_p1)

                    ; #45981: <==closure== 87056 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #47794: <==closure== 32209 (pos)
                    (Pb_checked_p1)

                    ; #50447: <==closure== 87091 (pos)
                    (Pa_checked_p1)

                    ; #51531: <==commonly_known== 54440 (pos)
                    (Bc_checked_p1)

                    ; #54440: origin
                    (checked_p1)

                    ; #57647: <==closure== 39640 (pos)
                    (Pd_checked_p1)

                    ; #71461: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #87056: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #87091: <==commonly_known== 54440 (pos)
                    (Ba_checked_p1)

                    ; #11113: <==negation-removal== 32209 (pos)
                    (not (Pb_not_checked_p1))

                    ; #17363: <==negation-removal== 50447 (pos)
                    (not (Ba_not_checked_p1))

                    ; #24508: <==negation-removal== 34630 (pos)
                    (not (Bc_not_checked_p1))

                    ; #26802: <==unclosure== 36873 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #26816: <==uncertain_firing== 87056 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #30627: <==negation-removal== 87056 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #32572: <==negation-removal== 39640 (pos)
                    (not (Pd_not_checked_p1))

                    ; #35797: <==negation-removal== 47794 (pos)
                    (not (Bb_not_checked_p1))

                    ; #35857: <==negation-removal== 45981 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #36873: <==uncertain_firing== 71461 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #37645: <==negation-removal== 51531 (pos)
                    (not (Pc_not_checked_p1))

                    ; #53019: <==negation-removal== 20455 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #58283: <==negation-removal== 57647 (pos)
                    (not (Bd_not_checked_p1))

                    ; #78411: <==negation-removal== 87091 (pos)
                    (not (Pa_not_checked_p1))

                    ; #81540: <==unclosure== 26816 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #86713: <==negation-removal== 54440 (pos)
                    (not (not_checked_p1))

                    ; #92211: <==negation-removal== 71461 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15397: <==commonly_known== 89148 (pos)
                    (Bd_checked_p2)

                    ; #15721: <==closure== 25429 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #15842: <==closure== 15397 (pos)
                    (Pd_checked_p2)

                    ; #16280: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #21665: <==closure== 59255 (pos)
                    (Pc_checked_p2)

                    ; #23641: <==closure== 16280 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #25429: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #47334: <==commonly_known== 89148 (pos)
                    (Bb_checked_p2)

                    ; #47406: <==closure== 47334 (pos)
                    (Pb_checked_p2)

                    ; #59255: <==commonly_known== 89148 (pos)
                    (Bc_checked_p2)

                    ; #69798: <==commonly_known== 89148 (pos)
                    (Ba_checked_p2)

                    ; #70938: <==closure== 69798 (pos)
                    (Pa_checked_p2)

                    ; #89148: origin
                    (checked_p2)

                    ; #10209: <==unclosure== 50247 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #24369: <==unclosure== 37121 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #29968: <==negation-removal== 15721 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #30080: <==negation-removal== 70938 (pos)
                    (not (Ba_not_checked_p2))

                    ; #37121: <==uncertain_firing== 25429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #40284: <==negation-removal== 16280 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #42088: <==negation-removal== 47406 (pos)
                    (not (Bb_not_checked_p2))

                    ; #45844: <==negation-removal== 89148 (pos)
                    (not (not_checked_p2))

                    ; #50247: <==uncertain_firing== 16280 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #54353: <==negation-removal== 15842 (pos)
                    (not (Bd_not_checked_p2))

                    ; #69292: <==negation-removal== 23641 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #71243: <==negation-removal== 47334 (pos)
                    (not (Pb_not_checked_p2))

                    ; #74656: <==negation-removal== 21665 (pos)
                    (not (Bc_not_checked_p2))

                    ; #77152: <==negation-removal== 25429 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #78225: <==negation-removal== 69798 (pos)
                    (not (Pa_not_checked_p2))

                    ; #87730: <==negation-removal== 15397 (pos)
                    (not (Pd_not_checked_p2))

                    ; #89670: <==negation-removal== 59255 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14636: <==commonly_known== 64354 (pos)
                    (Ba_checked_p3)

                    ; #15709: <==closure== 45272 (pos)
                    (Pd_checked_p3)

                    ; #24255: <==closure== 14636 (pos)
                    (Pa_checked_p3)

                    ; #27505: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #41513: <==closure== 27505 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #44380: <==closure== 67488 (pos)
                    (Pc_checked_p3)

                    ; #45272: <==commonly_known== 64354 (pos)
                    (Bd_checked_p3)

                    ; #47791: <==commonly_known== 64354 (pos)
                    (Bb_checked_p3)

                    ; #64354: origin
                    (checked_p3)

                    ; #67488: <==commonly_known== 64354 (pos)
                    (Bc_checked_p3)

                    ; #71154: <==closure== 47791 (pos)
                    (Pb_checked_p3)

                    ; #71396: <==closure== 77409 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #77409: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #17084: <==uncertain_firing== 77409 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #27302: <==negation-removal== 45272 (pos)
                    (not (Pd_not_checked_p3))

                    ; #30852: <==negation-removal== 67488 (pos)
                    (not (Pc_not_checked_p3))

                    ; #33778: <==negation-removal== 14636 (pos)
                    (not (Pa_not_checked_p3))

                    ; #36102: <==negation-removal== 47791 (pos)
                    (not (Pb_not_checked_p3))

                    ; #41631: <==negation-removal== 71154 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56020: <==negation-removal== 44380 (pos)
                    (not (Bc_not_checked_p3))

                    ; #59231: <==uncertain_firing== 27505 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #64024: <==negation-removal== 24255 (pos)
                    (not (Ba_not_checked_p3))

                    ; #65409: <==negation-removal== 64354 (pos)
                    (not (not_checked_p3))

                    ; #76644: <==negation-removal== 71396 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #77779: <==negation-removal== 41513 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #78777: <==negation-removal== 27505 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #85471: <==unclosure== 17084 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #86865: <==unclosure== 59231 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #87794: <==negation-removal== 15709 (pos)
                    (not (Bd_not_checked_p3))

                    ; #90821: <==negation-removal== 77409 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10337: <==closure== 81172 (pos)
                    (Pc_checked_p4)

                    ; #23370: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #25316: <==closure== 34679 (pos)
                    (Pa_checked_p4)

                    ; #29345: <==commonly_known== 90963 (pos)
                    (Bd_checked_p4)

                    ; #34679: <==commonly_known== 90963 (pos)
                    (Ba_checked_p4)

                    ; #35714: <==closure== 29345 (pos)
                    (Pd_checked_p4)

                    ; #50525: <==closure== 23370 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #58599: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #70218: <==closure== 58599 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #81172: <==commonly_known== 90963 (pos)
                    (Bc_checked_p4)

                    ; #88453: <==closure== 90222 (pos)
                    (Pb_checked_p4)

                    ; #90222: <==commonly_known== 90963 (pos)
                    (Bb_checked_p4)

                    ; #90963: origin
                    (checked_p4)

                    ; #15553: <==negation-removal== 34679 (pos)
                    (not (Pa_not_checked_p4))

                    ; #16165: <==uncertain_firing== 23370 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #20947: <==negation-removal== 90963 (pos)
                    (not (not_checked_p4))

                    ; #21739: <==negation-removal== 88453 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22588: <==negation-removal== 81172 (pos)
                    (not (Pc_not_checked_p4))

                    ; #30226: <==unclosure== 16165 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #32580: <==negation-removal== 25316 (pos)
                    (not (Ba_not_checked_p4))

                    ; #51665: <==negation-removal== 23370 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #53605: <==negation-removal== 90222 (pos)
                    (not (Pb_not_checked_p4))

                    ; #53719: <==negation-removal== 50525 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #64414: <==unclosure== 65569 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #65569: <==uncertain_firing== 58599 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #73293: <==negation-removal== 29345 (pos)
                    (not (Pd_not_checked_p4))

                    ; #76481: <==negation-removal== 70218 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #77753: <==negation-removal== 10337 (pos)
                    (not (Bc_not_checked_p4))

                    ; #81148: <==negation-removal== 58599 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #89632: <==negation-removal== 35714 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #24002: <==closure== 74844 (pos)
                    (Pa_checked_p5)

                    ; #25213: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #30056: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #37537: <==closure== 25213 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #45248: <==commonly_known== 59503 (pos)
                    (Bc_checked_p5)

                    ; #46295: <==closure== 30056 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #50486: <==closure== 69867 (pos)
                    (Pb_checked_p5)

                    ; #57100: <==commonly_known== 59503 (pos)
                    (Bd_checked_p5)

                    ; #59503: origin
                    (checked_p5)

                    ; #68184: <==closure== 45248 (pos)
                    (Pc_checked_p5)

                    ; #69867: <==commonly_known== 59503 (pos)
                    (Bb_checked_p5)

                    ; #74844: <==commonly_known== 59503 (pos)
                    (Ba_checked_p5)

                    ; #89396: <==closure== 57100 (pos)
                    (Pd_checked_p5)

                    ; #10769: <==uncertain_firing== 30056 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #14873: <==negation-removal== 24002 (pos)
                    (not (Ba_not_checked_p5))

                    ; #15346: <==negation-removal== 69867 (pos)
                    (not (Pb_not_checked_p5))

                    ; #22738: <==negation-removal== 57100 (pos)
                    (not (Pd_not_checked_p5))

                    ; #30404: <==negation-removal== 68184 (pos)
                    (not (Bc_not_checked_p5))

                    ; #40406: <==negation-removal== 74844 (pos)
                    (not (Pa_not_checked_p5))

                    ; #43596: <==negation-removal== 89396 (pos)
                    (not (Bd_not_checked_p5))

                    ; #47475: <==negation-removal== 37537 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #51958: <==negation-removal== 59503 (pos)
                    (not (not_checked_p5))

                    ; #53068: <==negation-removal== 50486 (pos)
                    (not (Bb_not_checked_p5))

                    ; #64647: <==negation-removal== 45248 (pos)
                    (not (Pc_not_checked_p5))

                    ; #68343: <==unclosure== 10769 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #82676: <==unclosure== 82796 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #82796: <==uncertain_firing== 25213 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #83027: <==negation-removal== 25213 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #91426: <==negation-removal== 30056 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #91621: <==negation-removal== 46295 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #21831: <==closure== 38696 (pos)
                    (Pc_checked_p6)

                    ; #22262: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #34918: origin
                    (checked_p6)

                    ; #38696: <==commonly_known== 34918 (pos)
                    (Bc_checked_p6)

                    ; #40009: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #41134: <==commonly_known== 34918 (pos)
                    (Ba_checked_p6)

                    ; #41936: <==closure== 51380 (pos)
                    (Pb_checked_p6)

                    ; #44365: <==closure== 62522 (pos)
                    (Pd_checked_p6)

                    ; #51380: <==commonly_known== 34918 (pos)
                    (Bb_checked_p6)

                    ; #62522: <==commonly_known== 34918 (pos)
                    (Bd_checked_p6)

                    ; #66754: <==closure== 40009 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #81286: <==closure== 41134 (pos)
                    (Pa_checked_p6)

                    ; #81949: <==closure== 22262 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #17774: <==negation-removal== 41936 (pos)
                    (not (Bb_not_checked_p6))

                    ; #33616: <==negation-removal== 41134 (pos)
                    (not (Pa_not_checked_p6))

                    ; #38012: <==negation-removal== 81949 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #38353: <==negation-removal== 51380 (pos)
                    (not (Pb_not_checked_p6))

                    ; #39879: <==uncertain_firing== 40009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #44251: <==negation-removal== 66754 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #45744: <==negation-removal== 81286 (pos)
                    (not (Ba_not_checked_p6))

                    ; #47103: <==unclosure== 39879 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #49256: <==negation-removal== 34918 (pos)
                    (not (not_checked_p6))

                    ; #51738: <==uncertain_firing== 22262 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #53142: <==unclosure== 51738 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #53926: <==negation-removal== 40009 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #60753: <==negation-removal== 44365 (pos)
                    (not (Bd_not_checked_p6))

                    ; #64514: <==negation-removal== 21831 (pos)
                    (not (Bc_not_checked_p6))

                    ; #66235: <==negation-removal== 22262 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #79005: <==negation-removal== 62522 (pos)
                    (not (Pd_not_checked_p6))

                    ; #83649: <==negation-removal== 38696 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #32510: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #35624: <==commonly_known== 82967 (pos)
                    (Ba_checked_p7)

                    ; #36670: <==closure== 77339 (pos)
                    (Pc_checked_p7)

                    ; #40335: <==closure== 32510 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #45700: <==closure== 53935 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #52692: <==commonly_known== 82967 (pos)
                    (Bd_checked_p7)

                    ; #53935: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #61572: <==closure== 35624 (pos)
                    (Pa_checked_p7)

                    ; #64059: <==closure== 80108 (pos)
                    (Pb_checked_p7)

                    ; #77339: <==commonly_known== 82967 (pos)
                    (Bc_checked_p7)

                    ; #80108: <==commonly_known== 82967 (pos)
                    (Bb_checked_p7)

                    ; #82967: origin
                    (checked_p7)

                    ; #86459: <==closure== 52692 (pos)
                    (Pd_checked_p7)

                    ; #14908: <==uncertain_firing== 53935 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #17771: <==negation-removal== 35624 (pos)
                    (not (Pa_not_checked_p7))

                    ; #23495: <==negation-removal== 53935 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #27196: <==negation-removal== 52692 (pos)
                    (not (Pd_not_checked_p7))

                    ; #30714: <==negation-removal== 61572 (pos)
                    (not (Ba_not_checked_p7))

                    ; #33289: <==negation-removal== 82967 (pos)
                    (not (not_checked_p7))

                    ; #37305: <==negation-removal== 36670 (pos)
                    (not (Bc_not_checked_p7))

                    ; #40130: <==negation-removal== 77339 (pos)
                    (not (Pc_not_checked_p7))

                    ; #49567: <==negation-removal== 40335 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #62893: <==unclosure== 97612 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #63426: <==negation-removal== 32510 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #65350: <==negation-removal== 86459 (pos)
                    (not (Bd_not_checked_p7))

                    ; #68892: <==negation-removal== 64059 (pos)
                    (not (Bb_not_checked_p7))

                    ; #70893: <==unclosure== 14908 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #74763: <==negation-removal== 45700 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #89746: <==negation-removal== 80108 (pos)
                    (not (Pb_not_checked_p7))

                    ; #97612: <==uncertain_firing== 32510 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19618: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #19807: <==closure== 53360 (pos)
                    (Pa_checked_p8)

                    ; #26038: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #26988: <==commonly_known== 62840 (pos)
                    (Bc_checked_p8)

                    ; #41138: <==commonly_known== 62840 (pos)
                    (Bb_checked_p8)

                    ; #53360: <==commonly_known== 62840 (pos)
                    (Ba_checked_p8)

                    ; #53499: <==closure== 19618 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #60693: <==closure== 26988 (pos)
                    (Pc_checked_p8)

                    ; #62840: origin
                    (checked_p8)

                    ; #70341: <==closure== 41138 (pos)
                    (Pb_checked_p8)

                    ; #77430: <==commonly_known== 62840 (pos)
                    (Bd_checked_p8)

                    ; #78576: <==closure== 26038 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #83343: <==closure== 77430 (pos)
                    (Pd_checked_p8)

                    ; #14736: <==negation-removal== 26038 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #15048: <==negation-removal== 26988 (pos)
                    (not (Pc_not_checked_p8))

                    ; #15545: <==negation-removal== 78576 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #22164: <==uncertain_firing== 19618 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #23670: <==unclosure== 47348 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #41783: <==negation-removal== 77430 (pos)
                    (not (Pd_not_checked_p8))

                    ; #47021: <==negation-removal== 41138 (pos)
                    (not (Pb_not_checked_p8))

                    ; #47348: <==uncertain_firing== 26038 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #53965: <==negation-removal== 60693 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54293: <==negation-removal== 53499 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #55699: <==negation-removal== 62840 (pos)
                    (not (not_checked_p8))

                    ; #56430: <==negation-removal== 19807 (pos)
                    (not (Ba_not_checked_p8))

                    ; #64935: <==negation-removal== 53360 (pos)
                    (not (Pa_not_checked_p8))

                    ; #67800: <==negation-removal== 70341 (pos)
                    (not (Bb_not_checked_p8))

                    ; #72126: <==negation-removal== 19618 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #81669: <==unclosure== 22164 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #94087: <==negation-removal== 83343 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10041: <==commonly_known== 30762 (pos)
                    (Bc_checked_p9)

                    ; #16304: <==closure== 39461 (pos)
                    (Pa_checked_p9)

                    ; #30762: origin
                    (checked_p9)

                    ; #37781: <==closure== 10041 (pos)
                    (Pc_checked_p9)

                    ; #39461: <==commonly_known== 30762 (pos)
                    (Ba_checked_p9)

                    ; #40653: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #41139: <==closure== 40653 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #44174: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #55824: <==commonly_known== 30762 (pos)
                    (Bd_checked_p9)

                    ; #56569: <==closure== 44174 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #63790: <==closure== 55824 (pos)
                    (Pd_checked_p9)

                    ; #73773: <==closure== 88488 (pos)
                    (Pb_checked_p9)

                    ; #88488: <==commonly_known== 30762 (pos)
                    (Bb_checked_p9)

                    ; #22584: <==uncertain_firing== 44174 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #23883: <==negation-removal== 44174 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #26597: <==uncertain_firing== 40653 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #30617: <==unclosure== 22584 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #30629: <==negation-removal== 73773 (pos)
                    (not (Bb_not_checked_p9))

                    ; #33595: <==negation-removal== 63790 (pos)
                    (not (Bd_not_checked_p9))

                    ; #43090: <==negation-removal== 56569 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #59363: <==unclosure== 26597 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #61812: <==negation-removal== 30762 (pos)
                    (not (not_checked_p9))

                    ; #64664: <==negation-removal== 37781 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68181: <==negation-removal== 10041 (pos)
                    (not (Pc_not_checked_p9))

                    ; #68612: <==negation-removal== 88488 (pos)
                    (not (Pb_not_checked_p9))

                    ; #71694: <==negation-removal== 39461 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73014: <==negation-removal== 55824 (pos)
                    (not (Pd_not_checked_p9))

                    ; #78369: <==negation-removal== 40653 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #78846: <==negation-removal== 16304 (pos)
                    (not (Ba_not_checked_p9))

                    ; #88668: <==negation-removal== 41139 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #21337: <==closure== 76176 (pos)
                    (Pd_checked_p10)

                    ; #24099: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #30549: <==closure== 38663 (pos)
                    (Pa_checked_p10)

                    ; #34170: <==closure== 64346 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #37643: <==closure== 69379 (pos)
                    (Pc_checked_p10)

                    ; #38663: <==commonly_known== 53446 (pos)
                    (Ba_checked_p10)

                    ; #43572: <==commonly_known== 53446 (pos)
                    (Bb_checked_p10)

                    ; #53446: origin
                    (checked_p10)

                    ; #59063: <==closure== 43572 (pos)
                    (Pb_checked_p10)

                    ; #64346: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #69379: <==commonly_known== 53446 (pos)
                    (Bc_checked_p10)

                    ; #76176: <==commonly_known== 53446 (pos)
                    (Bd_checked_p10)

                    ; #87864: <==closure== 24099 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #13784: <==negation-removal== 38663 (pos)
                    (not (Pa_not_checked_p10))

                    ; #15765: <==negation-removal== 30549 (pos)
                    (not (Ba_not_checked_p10))

                    ; #22173: <==negation-removal== 37643 (pos)
                    (not (Bc_not_checked_p10))

                    ; #34819: <==negation-removal== 59063 (pos)
                    (not (Bb_not_checked_p10))

                    ; #45468: <==uncertain_firing== 24099 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #58784: <==negation-removal== 76176 (pos)
                    (not (Pd_not_checked_p10))

                    ; #64104: <==negation-removal== 64346 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #70094: <==unclosure== 78908 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #78552: <==unclosure== 45468 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #78908: <==uncertain_firing== 64346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #79596: <==negation-removal== 53446 (pos)
                    (not (not_checked_p10))

                    ; #80944: <==negation-removal== 24099 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #83151: <==negation-removal== 69379 (pos)
                    (not (Pc_not_checked_p10))

                    ; #85816: <==negation-removal== 21337 (pos)
                    (not (Bd_not_checked_p10))

                    ; #86797: <==negation-removal== 87864 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #90787: <==negation-removal== 43572 (pos)
                    (not (Pb_not_checked_p10))

                    ; #91787: <==negation-removal== 34170 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #16734: <==commonly_known== 71993 (pos)
                    (Ba_checked_p11)

                    ; #26436: <==closure== 43792 (pos)
                    (Pc_checked_p11)

                    ; #33822: <==closure== 66234 (pos)
                    (Pd_checked_p11)

                    ; #35112: <==commonly_known== 71993 (pos)
                    (Bb_checked_p11)

                    ; #39541: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #43792: <==commonly_known== 71993 (pos)
                    (Bc_checked_p11)

                    ; #43935: <==closure== 61420 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #51272: <==closure== 16734 (pos)
                    (Pa_checked_p11)

                    ; #61420: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #64468: <==closure== 39541 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #66234: <==commonly_known== 71993 (pos)
                    (Bd_checked_p11)

                    ; #71993: origin
                    (checked_p11)

                    ; #89874: <==closure== 35112 (pos)
                    (Pb_checked_p11)

                    ; #21271: <==negation-removal== 64468 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #25514: <==negation-removal== 66234 (pos)
                    (not (Pd_not_checked_p11))

                    ; #31563: <==negation-removal== 16734 (pos)
                    (not (Pa_not_checked_p11))

                    ; #33077: <==negation-removal== 35112 (pos)
                    (not (Pb_not_checked_p11))

                    ; #36442: <==negation-removal== 51272 (pos)
                    (not (Ba_not_checked_p11))

                    ; #39835: <==negation-removal== 89874 (pos)
                    (not (Bb_not_checked_p11))

                    ; #43645: <==negation-removal== 43935 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #43897: <==unclosure== 91412 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #47836: <==negation-removal== 26436 (pos)
                    (not (Bc_not_checked_p11))

                    ; #54027: <==unclosure== 54050 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #54050: <==uncertain_firing== 39541 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #55246: <==negation-removal== 39541 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #56757: <==negation-removal== 33822 (pos)
                    (not (Bd_not_checked_p11))

                    ; #81277: <==negation-removal== 61420 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #82567: <==negation-removal== 43792 (pos)
                    (not (Pc_not_checked_p11))

                    ; #82647: <==negation-removal== 71993 (pos)
                    (not (not_checked_p11))

                    ; #91412: <==uncertain_firing== 61420 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12901: <==closure== 15425 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #14367: <==commonly_known== 56356 (pos)
                    (Bc_checked_p12)

                    ; #15425: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #22071: <==closure== 79618 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #45047: <==closure== 71478 (pos)
                    (Pa_checked_p12)

                    ; #47098: <==closure== 66923 (pos)
                    (Pd_checked_p12)

                    ; #49704: <==commonly_known== 56356 (pos)
                    (Bb_checked_p12)

                    ; #56356: origin
                    (checked_p12)

                    ; #65893: <==closure== 14367 (pos)
                    (Pc_checked_p12)

                    ; #66923: <==commonly_known== 56356 (pos)
                    (Bd_checked_p12)

                    ; #71478: <==commonly_known== 56356 (pos)
                    (Ba_checked_p12)

                    ; #79618: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #81918: <==closure== 49704 (pos)
                    (Pb_checked_p12)

                    ; #10568: <==negation-removal== 12901 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #16273: <==negation-removal== 14367 (pos)
                    (not (Pc_not_checked_p12))

                    ; #21674: <==uncertain_firing== 79618 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #31031: <==negation-removal== 66923 (pos)
                    (not (Pd_not_checked_p12))

                    ; #34226: <==negation-removal== 56356 (pos)
                    (not (not_checked_p12))

                    ; #42781: <==negation-removal== 47098 (pos)
                    (not (Bd_not_checked_p12))

                    ; #48332: <==negation-removal== 22071 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #55572: <==negation-removal== 71478 (pos)
                    (not (Pa_not_checked_p12))

                    ; #66016: <==unclosure== 71842 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #71475: <==negation-removal== 65893 (pos)
                    (not (Bc_not_checked_p12))

                    ; #71842: <==uncertain_firing== 15425 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #72132: <==negation-removal== 79618 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #76813: <==negation-removal== 45047 (pos)
                    (not (Ba_not_checked_p12))

                    ; #76844: <==unclosure== 21674 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #89309: <==negation-removal== 81918 (pos)
                    (not (Bb_not_checked_p12))

                    ; #90907: <==negation-removal== 15425 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #91964: <==negation-removal== 49704 (pos)
                    (not (Pb_not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24621: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #27433: <==closure== 44005 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #32209: <==commonly_known== 54440 (pos)
                    (Bb_checked_p1)

                    ; #34630: <==closure== 51531 (pos)
                    (Pc_checked_p1)

                    ; #39640: <==commonly_known== 54440 (pos)
                    (Bd_checked_p1)

                    ; #44005: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #47698: <==closure== 24621 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #47794: <==closure== 32209 (pos)
                    (Pb_checked_p1)

                    ; #50447: <==closure== 87091 (pos)
                    (Pa_checked_p1)

                    ; #51531: <==commonly_known== 54440 (pos)
                    (Bc_checked_p1)

                    ; #54440: origin
                    (checked_p1)

                    ; #57647: <==closure== 39640 (pos)
                    (Pd_checked_p1)

                    ; #87091: <==commonly_known== 54440 (pos)
                    (Ba_checked_p1)

                    ; #11113: <==negation-removal== 32209 (pos)
                    (not (Pb_not_checked_p1))

                    ; #11563: <==negation-removal== 47698 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #12309: <==negation-removal== 27433 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #13745: <==uncertain_firing== 24621 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #17363: <==negation-removal== 50447 (pos)
                    (not (Ba_not_checked_p1))

                    ; #24508: <==negation-removal== 34630 (pos)
                    (not (Bc_not_checked_p1))

                    ; #32572: <==negation-removal== 39640 (pos)
                    (not (Pd_not_checked_p1))

                    ; #35797: <==negation-removal== 47794 (pos)
                    (not (Bb_not_checked_p1))

                    ; #37645: <==negation-removal== 51531 (pos)
                    (not (Pc_not_checked_p1))

                    ; #46374: <==unclosure== 69961 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #47029: <==negation-removal== 44005 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #53182: <==unclosure== 13745 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #58283: <==negation-removal== 57647 (pos)
                    (not (Bd_not_checked_p1))

                    ; #69961: <==uncertain_firing== 44005 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #74884: <==negation-removal== 24621 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #78411: <==negation-removal== 87091 (pos)
                    (not (Pa_not_checked_p1))

                    ; #86713: <==negation-removal== 54440 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11663: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #11713: <==closure== 58117 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #15397: <==commonly_known== 89148 (pos)
                    (Bd_checked_p2)

                    ; #15842: <==closure== 15397 (pos)
                    (Pd_checked_p2)

                    ; #21665: <==closure== 59255 (pos)
                    (Pc_checked_p2)

                    ; #22209: <==closure== 11663 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #47334: <==commonly_known== 89148 (pos)
                    (Bb_checked_p2)

                    ; #47406: <==closure== 47334 (pos)
                    (Pb_checked_p2)

                    ; #58117: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #59255: <==commonly_known== 89148 (pos)
                    (Bc_checked_p2)

                    ; #69798: <==commonly_known== 89148 (pos)
                    (Ba_checked_p2)

                    ; #70938: <==closure== 69798 (pos)
                    (Pa_checked_p2)

                    ; #89148: origin
                    (checked_p2)

                    ; #21604: <==uncertain_firing== 58117 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #30080: <==negation-removal== 70938 (pos)
                    (not (Ba_not_checked_p2))

                    ; #40938: <==unclosure== 21604 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #42088: <==negation-removal== 47406 (pos)
                    (not (Bb_not_checked_p2))

                    ; #45844: <==negation-removal== 89148 (pos)
                    (not (not_checked_p2))

                    ; #54353: <==negation-removal== 15842 (pos)
                    (not (Bd_not_checked_p2))

                    ; #71243: <==negation-removal== 47334 (pos)
                    (not (Pb_not_checked_p2))

                    ; #74656: <==negation-removal== 21665 (pos)
                    (not (Bc_not_checked_p2))

                    ; #75082: <==negation-removal== 22209 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #78225: <==negation-removal== 69798 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82442: <==negation-removal== 11663 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #82808: <==unclosure== 89862 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #83978: <==negation-removal== 58117 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #84323: <==negation-removal== 11713 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #87730: <==negation-removal== 15397 (pos)
                    (not (Pd_not_checked_p2))

                    ; #89670: <==negation-removal== 59255 (pos)
                    (not (Pc_not_checked_p2))

                    ; #89862: <==uncertain_firing== 11663 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14636: <==commonly_known== 64354 (pos)
                    (Ba_checked_p3)

                    ; #15709: <==closure== 45272 (pos)
                    (Pd_checked_p3)

                    ; #24255: <==closure== 14636 (pos)
                    (Pa_checked_p3)

                    ; #30265: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #40801: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #44380: <==closure== 67488 (pos)
                    (Pc_checked_p3)

                    ; #45272: <==commonly_known== 64354 (pos)
                    (Bd_checked_p3)

                    ; #47791: <==commonly_known== 64354 (pos)
                    (Bb_checked_p3)

                    ; #47825: <==closure== 40801 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #62506: <==closure== 30265 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #64354: origin
                    (checked_p3)

                    ; #67488: <==commonly_known== 64354 (pos)
                    (Bc_checked_p3)

                    ; #71154: <==closure== 47791 (pos)
                    (Pb_checked_p3)

                    ; #12405: <==negation-removal== 30265 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #13117: <==unclosure== 84179 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #14945: <==negation-removal== 47825 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #27302: <==negation-removal== 45272 (pos)
                    (not (Pd_not_checked_p3))

                    ; #30772: <==uncertain_firing== 30265 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #30852: <==negation-removal== 67488 (pos)
                    (not (Pc_not_checked_p3))

                    ; #33778: <==negation-removal== 14636 (pos)
                    (not (Pa_not_checked_p3))

                    ; #36102: <==negation-removal== 47791 (pos)
                    (not (Pb_not_checked_p3))

                    ; #36217: <==negation-removal== 62506 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #41631: <==negation-removal== 71154 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56020: <==negation-removal== 44380 (pos)
                    (not (Bc_not_checked_p3))

                    ; #64024: <==negation-removal== 24255 (pos)
                    (not (Ba_not_checked_p3))

                    ; #65409: <==negation-removal== 64354 (pos)
                    (not (not_checked_p3))

                    ; #70615: <==unclosure== 30772 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #73013: <==negation-removal== 40801 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #84179: <==uncertain_firing== 40801 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #87794: <==negation-removal== 15709 (pos)
                    (not (Bd_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10337: <==closure== 81172 (pos)
                    (Pc_checked_p4)

                    ; #18798: <==closure== 20389 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #20389: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #25316: <==closure== 34679 (pos)
                    (Pa_checked_p4)

                    ; #29345: <==commonly_known== 90963 (pos)
                    (Bd_checked_p4)

                    ; #34679: <==commonly_known== 90963 (pos)
                    (Ba_checked_p4)

                    ; #35714: <==closure== 29345 (pos)
                    (Pd_checked_p4)

                    ; #46504: <==closure== 52971 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #52971: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81172: <==commonly_known== 90963 (pos)
                    (Bc_checked_p4)

                    ; #88453: <==closure== 90222 (pos)
                    (Pb_checked_p4)

                    ; #90222: <==commonly_known== 90963 (pos)
                    (Bb_checked_p4)

                    ; #90963: origin
                    (checked_p4)

                    ; #12734: <==negation-removal== 46504 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #15553: <==negation-removal== 34679 (pos)
                    (not (Pa_not_checked_p4))

                    ; #18571: <==unclosure== 47426 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #20947: <==negation-removal== 90963 (pos)
                    (not (not_checked_p4))

                    ; #21739: <==negation-removal== 88453 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22588: <==negation-removal== 81172 (pos)
                    (not (Pc_not_checked_p4))

                    ; #28283: <==unclosure== 55364 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #32580: <==negation-removal== 25316 (pos)
                    (not (Ba_not_checked_p4))

                    ; #46473: <==negation-removal== 52971 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #47426: <==uncertain_firing== 20389 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #53605: <==negation-removal== 90222 (pos)
                    (not (Pb_not_checked_p4))

                    ; #55364: <==uncertain_firing== 52971 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #63820: <==negation-removal== 20389 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #73293: <==negation-removal== 29345 (pos)
                    (not (Pd_not_checked_p4))

                    ; #74445: <==negation-removal== 18798 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #77753: <==negation-removal== 10337 (pos)
                    (not (Bc_not_checked_p4))

                    ; #89632: <==negation-removal== 35714 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #24002: <==closure== 74844 (pos)
                    (Pa_checked_p5)

                    ; #39166: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #45248: <==commonly_known== 59503 (pos)
                    (Bc_checked_p5)

                    ; #50486: <==closure== 69867 (pos)
                    (Pb_checked_p5)

                    ; #56263: <==closure== 39166 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #57100: <==commonly_known== 59503 (pos)
                    (Bd_checked_p5)

                    ; #59503: origin
                    (checked_p5)

                    ; #68184: <==closure== 45248 (pos)
                    (Pc_checked_p5)

                    ; #69867: <==commonly_known== 59503 (pos)
                    (Bb_checked_p5)

                    ; #74844: <==commonly_known== 59503 (pos)
                    (Ba_checked_p5)

                    ; #81008: <==closure== 86013 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #86013: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #89396: <==closure== 57100 (pos)
                    (Pd_checked_p5)

                    ; #14873: <==negation-removal== 24002 (pos)
                    (not (Ba_not_checked_p5))

                    ; #15346: <==negation-removal== 69867 (pos)
                    (not (Pb_not_checked_p5))

                    ; #17788: <==unclosure== 37944 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #21142: <==unclosure== 77278 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #22738: <==negation-removal== 57100 (pos)
                    (not (Pd_not_checked_p5))

                    ; #23443: <==negation-removal== 39166 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #29580: <==negation-removal== 56263 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #30404: <==negation-removal== 68184 (pos)
                    (not (Bc_not_checked_p5))

                    ; #37944: <==uncertain_firing== 86013 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #40406: <==negation-removal== 74844 (pos)
                    (not (Pa_not_checked_p5))

                    ; #43596: <==negation-removal== 89396 (pos)
                    (not (Bd_not_checked_p5))

                    ; #49622: <==negation-removal== 86013 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #51958: <==negation-removal== 59503 (pos)
                    (not (not_checked_p5))

                    ; #53068: <==negation-removal== 50486 (pos)
                    (not (Bb_not_checked_p5))

                    ; #60476: <==negation-removal== 81008 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #64647: <==negation-removal== 45248 (pos)
                    (not (Pc_not_checked_p5))

                    ; #77278: <==uncertain_firing== 39166 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16538: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #21831: <==closure== 38696 (pos)
                    (Pc_checked_p6)

                    ; #22641: <==closure== 16538 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #34918: origin
                    (checked_p6)

                    ; #38696: <==commonly_known== 34918 (pos)
                    (Bc_checked_p6)

                    ; #41134: <==commonly_known== 34918 (pos)
                    (Ba_checked_p6)

                    ; #41936: <==closure== 51380 (pos)
                    (Pb_checked_p6)

                    ; #44365: <==closure== 62522 (pos)
                    (Pd_checked_p6)

                    ; #51380: <==commonly_known== 34918 (pos)
                    (Bb_checked_p6)

                    ; #62522: <==commonly_known== 34918 (pos)
                    (Bd_checked_p6)

                    ; #77482: <==closure== 81613 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #81286: <==closure== 41134 (pos)
                    (Pa_checked_p6)

                    ; #81613: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #17774: <==negation-removal== 41936 (pos)
                    (not (Bb_not_checked_p6))

                    ; #30771: <==uncertain_firing== 16538 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #32848: <==negation-removal== 16538 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #33616: <==negation-removal== 41134 (pos)
                    (not (Pa_not_checked_p6))

                    ; #37424: <==uncertain_firing== 81613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #37483: <==unclosure== 37424 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #38353: <==negation-removal== 51380 (pos)
                    (not (Pb_not_checked_p6))

                    ; #45744: <==negation-removal== 81286 (pos)
                    (not (Ba_not_checked_p6))

                    ; #49256: <==negation-removal== 34918 (pos)
                    (not (not_checked_p6))

                    ; #60753: <==negation-removal== 44365 (pos)
                    (not (Bd_not_checked_p6))

                    ; #64514: <==negation-removal== 21831 (pos)
                    (not (Bc_not_checked_p6))

                    ; #64519: <==negation-removal== 81613 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #69939: <==negation-removal== 77482 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #75748: <==negation-removal== 22641 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #79005: <==negation-removal== 62522 (pos)
                    (not (Pd_not_checked_p6))

                    ; #83649: <==negation-removal== 38696 (pos)
                    (not (Pc_not_checked_p6))

                    ; #87050: <==unclosure== 30771 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14153: <==closure== 21289 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #21289: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #30815: <==closure== 51675 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #35624: <==commonly_known== 82967 (pos)
                    (Ba_checked_p7)

                    ; #36670: <==closure== 77339 (pos)
                    (Pc_checked_p7)

                    ; #51675: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #52692: <==commonly_known== 82967 (pos)
                    (Bd_checked_p7)

                    ; #61572: <==closure== 35624 (pos)
                    (Pa_checked_p7)

                    ; #64059: <==closure== 80108 (pos)
                    (Pb_checked_p7)

                    ; #77339: <==commonly_known== 82967 (pos)
                    (Bc_checked_p7)

                    ; #80108: <==commonly_known== 82967 (pos)
                    (Bb_checked_p7)

                    ; #82967: origin
                    (checked_p7)

                    ; #86459: <==closure== 52692 (pos)
                    (Pd_checked_p7)

                    ; #12345: <==negation-removal== 21289 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #17771: <==negation-removal== 35624 (pos)
                    (not (Pa_not_checked_p7))

                    ; #21762: <==negation-removal== 30815 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #27196: <==negation-removal== 52692 (pos)
                    (not (Pd_not_checked_p7))

                    ; #29697: <==negation-removal== 51675 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #30714: <==negation-removal== 61572 (pos)
                    (not (Ba_not_checked_p7))

                    ; #33289: <==negation-removal== 82967 (pos)
                    (not (not_checked_p7))

                    ; #37305: <==negation-removal== 36670 (pos)
                    (not (Bc_not_checked_p7))

                    ; #39184: <==unclosure== 56055 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #40130: <==negation-removal== 77339 (pos)
                    (not (Pc_not_checked_p7))

                    ; #46775: <==uncertain_firing== 21289 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #56055: <==uncertain_firing== 51675 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #65350: <==negation-removal== 86459 (pos)
                    (not (Bd_not_checked_p7))

                    ; #66488: <==unclosure== 46775 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #68892: <==negation-removal== 64059 (pos)
                    (not (Bb_not_checked_p7))

                    ; #85457: <==negation-removal== 14153 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #89746: <==negation-removal== 80108 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14460: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #19807: <==closure== 53360 (pos)
                    (Pa_checked_p8)

                    ; #21163: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #26988: <==commonly_known== 62840 (pos)
                    (Bc_checked_p8)

                    ; #33624: <==closure== 14460 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #41138: <==commonly_known== 62840 (pos)
                    (Bb_checked_p8)

                    ; #53360: <==commonly_known== 62840 (pos)
                    (Ba_checked_p8)

                    ; #60693: <==closure== 26988 (pos)
                    (Pc_checked_p8)

                    ; #62840: origin
                    (checked_p8)

                    ; #70341: <==closure== 41138 (pos)
                    (Pb_checked_p8)

                    ; #77430: <==commonly_known== 62840 (pos)
                    (Bd_checked_p8)

                    ; #83343: <==closure== 77430 (pos)
                    (Pd_checked_p8)

                    ; #86055: <==closure== 21163 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #15048: <==negation-removal== 26988 (pos)
                    (not (Pc_not_checked_p8))

                    ; #23090: <==unclosure== 69304 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #27736: <==negation-removal== 21163 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #40516: <==unclosure== 78191 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #41783: <==negation-removal== 77430 (pos)
                    (not (Pd_not_checked_p8))

                    ; #43336: <==negation-removal== 33624 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #47021: <==negation-removal== 41138 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53965: <==negation-removal== 60693 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55699: <==negation-removal== 62840 (pos)
                    (not (not_checked_p8))

                    ; #56430: <==negation-removal== 19807 (pos)
                    (not (Ba_not_checked_p8))

                    ; #64935: <==negation-removal== 53360 (pos)
                    (not (Pa_not_checked_p8))

                    ; #67800: <==negation-removal== 70341 (pos)
                    (not (Bb_not_checked_p8))

                    ; #69304: <==uncertain_firing== 14460 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #78191: <==uncertain_firing== 21163 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #80985: <==negation-removal== 86055 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #87349: <==negation-removal== 14460 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #94087: <==negation-removal== 83343 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10041: <==commonly_known== 30762 (pos)
                    (Bc_checked_p9)

                    ; #16304: <==closure== 39461 (pos)
                    (Pa_checked_p9)

                    ; #30762: origin
                    (checked_p9)

                    ; #37781: <==closure== 10041 (pos)
                    (Pc_checked_p9)

                    ; #39461: <==commonly_known== 30762 (pos)
                    (Ba_checked_p9)

                    ; #42817: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #55824: <==commonly_known== 30762 (pos)
                    (Bd_checked_p9)

                    ; #63790: <==closure== 55824 (pos)
                    (Pd_checked_p9)

                    ; #70776: <==closure== 78023 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #73773: <==closure== 88488 (pos)
                    (Pb_checked_p9)

                    ; #74909: <==closure== 42817 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #78023: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #88488: <==commonly_known== 30762 (pos)
                    (Bb_checked_p9)

                    ; #23675: <==negation-removal== 78023 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #30629: <==negation-removal== 73773 (pos)
                    (not (Bb_not_checked_p9))

                    ; #33595: <==negation-removal== 63790 (pos)
                    (not (Bd_not_checked_p9))

                    ; #37230: <==unclosure== 80104 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #54404: <==negation-removal== 42817 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #61711: <==negation-removal== 70776 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #61812: <==negation-removal== 30762 (pos)
                    (not (not_checked_p9))

                    ; #64664: <==negation-removal== 37781 (pos)
                    (not (Bc_not_checked_p9))

                    ; #65609: <==uncertain_firing== 78023 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68084: <==unclosure== 65609 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #68181: <==negation-removal== 10041 (pos)
                    (not (Pc_not_checked_p9))

                    ; #68612: <==negation-removal== 88488 (pos)
                    (not (Pb_not_checked_p9))

                    ; #71694: <==negation-removal== 39461 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73014: <==negation-removal== 55824 (pos)
                    (not (Pd_not_checked_p9))

                    ; #78846: <==negation-removal== 16304 (pos)
                    (not (Ba_not_checked_p9))

                    ; #80104: <==uncertain_firing== 42817 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #88528: <==negation-removal== 74909 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #21337: <==closure== 76176 (pos)
                    (Pd_checked_p10)

                    ; #25694: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #26496: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #30549: <==closure== 38663 (pos)
                    (Pa_checked_p10)

                    ; #37643: <==closure== 69379 (pos)
                    (Pc_checked_p10)

                    ; #38663: <==commonly_known== 53446 (pos)
                    (Ba_checked_p10)

                    ; #43572: <==commonly_known== 53446 (pos)
                    (Bb_checked_p10)

                    ; #53446: origin
                    (checked_p10)

                    ; #59063: <==closure== 43572 (pos)
                    (Pb_checked_p10)

                    ; #69379: <==commonly_known== 53446 (pos)
                    (Bc_checked_p10)

                    ; #76176: <==commonly_known== 53446 (pos)
                    (Bd_checked_p10)

                    ; #78718: <==closure== 26496 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #80962: <==closure== 25694 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #13784: <==negation-removal== 38663 (pos)
                    (not (Pa_not_checked_p10))

                    ; #15765: <==negation-removal== 30549 (pos)
                    (not (Ba_not_checked_p10))

                    ; #19733: <==negation-removal== 25694 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22173: <==negation-removal== 37643 (pos)
                    (not (Bc_not_checked_p10))

                    ; #25644: <==uncertain_firing== 25694 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #28207: <==negation-removal== 80962 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #34819: <==negation-removal== 59063 (pos)
                    (not (Bb_not_checked_p10))

                    ; #54170: <==unclosure== 80833 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #58784: <==negation-removal== 76176 (pos)
                    (not (Pd_not_checked_p10))

                    ; #64763: <==unclosure== 25644 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #68146: <==negation-removal== 26496 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #79596: <==negation-removal== 53446 (pos)
                    (not (not_checked_p10))

                    ; #80833: <==uncertain_firing== 26496 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #83151: <==negation-removal== 69379 (pos)
                    (not (Pc_not_checked_p10))

                    ; #85816: <==negation-removal== 21337 (pos)
                    (not (Bd_not_checked_p10))

                    ; #89487: <==negation-removal== 78718 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #90787: <==negation-removal== 43572 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14111: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #16734: <==commonly_known== 71993 (pos)
                    (Ba_checked_p11)

                    ; #26436: <==closure== 43792 (pos)
                    (Pc_checked_p11)

                    ; #33822: <==closure== 66234 (pos)
                    (Pd_checked_p11)

                    ; #35112: <==commonly_known== 71993 (pos)
                    (Bb_checked_p11)

                    ; #42513: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #43792: <==commonly_known== 71993 (pos)
                    (Bc_checked_p11)

                    ; #47568: <==closure== 42513 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #51272: <==closure== 16734 (pos)
                    (Pa_checked_p11)

                    ; #66234: <==commonly_known== 71993 (pos)
                    (Bd_checked_p11)

                    ; #71993: origin
                    (checked_p11)

                    ; #78511: <==closure== 14111 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #89874: <==closure== 35112 (pos)
                    (Pb_checked_p11)

                    ; #14493: <==negation-removal== 14111 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #25514: <==negation-removal== 66234 (pos)
                    (not (Pd_not_checked_p11))

                    ; #29484: <==uncertain_firing== 42513 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #31563: <==negation-removal== 16734 (pos)
                    (not (Pa_not_checked_p11))

                    ; #33077: <==negation-removal== 35112 (pos)
                    (not (Pb_not_checked_p11))

                    ; #36442: <==negation-removal== 51272 (pos)
                    (not (Ba_not_checked_p11))

                    ; #38679: <==negation-removal== 42513 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #39835: <==negation-removal== 89874 (pos)
                    (not (Bb_not_checked_p11))

                    ; #40736: <==unclosure== 29484 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #47836: <==negation-removal== 26436 (pos)
                    (not (Bc_not_checked_p11))

                    ; #54809: <==unclosure== 89815 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #56757: <==negation-removal== 33822 (pos)
                    (not (Bd_not_checked_p11))

                    ; #70267: <==negation-removal== 78511 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #70694: <==negation-removal== 47568 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #82567: <==negation-removal== 43792 (pos)
                    (not (Pc_not_checked_p11))

                    ; #82647: <==negation-removal== 71993 (pos)
                    (not (not_checked_p11))

                    ; #89815: <==uncertain_firing== 14111 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #14367: <==commonly_known== 56356 (pos)
                    (Bc_checked_p12)

                    ; #44596: <==closure== 57774 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #45047: <==closure== 71478 (pos)
                    (Pa_checked_p12)

                    ; #47098: <==closure== 66923 (pos)
                    (Pd_checked_p12)

                    ; #49704: <==commonly_known== 56356 (pos)
                    (Bb_checked_p12)

                    ; #56356: origin
                    (checked_p12)

                    ; #57774: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #65893: <==closure== 14367 (pos)
                    (Pc_checked_p12)

                    ; #66923: <==commonly_known== 56356 (pos)
                    (Bd_checked_p12)

                    ; #69169: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #71478: <==commonly_known== 56356 (pos)
                    (Ba_checked_p12)

                    ; #81918: <==closure== 49704 (pos)
                    (Pb_checked_p12)

                    ; #87177: <==closure== 69169 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #16273: <==negation-removal== 14367 (pos)
                    (not (Pc_not_checked_p12))

                    ; #26525: <==uncertain_firing== 57774 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #26852: <==negation-removal== 69169 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #31031: <==negation-removal== 66923 (pos)
                    (not (Pd_not_checked_p12))

                    ; #31157: <==uncertain_firing== 69169 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #34226: <==negation-removal== 56356 (pos)
                    (not (not_checked_p12))

                    ; #35996: <==negation-removal== 57774 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #42214: <==unclosure== 31157 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #42781: <==negation-removal== 47098 (pos)
                    (not (Bd_not_checked_p12))

                    ; #52760: <==negation-removal== 44596 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #55572: <==negation-removal== 71478 (pos)
                    (not (Pa_not_checked_p12))

                    ; #60798: <==unclosure== 26525 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #68484: <==negation-removal== 87177 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #71475: <==negation-removal== 65893 (pos)
                    (not (Bc_not_checked_p12))

                    ; #76813: <==negation-removal== 45047 (pos)
                    (not (Ba_not_checked_p12))

                    ; #89309: <==negation-removal== 81918 (pos)
                    (not (Bb_not_checked_p12))

                    ; #91964: <==negation-removal== 49704 (pos)
                    (not (Pb_not_checked_p12))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #32209: <==commonly_known== 54440 (pos)
                    (Bb_checked_p1)

                    ; #34630: <==closure== 51531 (pos)
                    (Pc_checked_p1)

                    ; #39640: <==commonly_known== 54440 (pos)
                    (Bd_checked_p1)

                    ; #47794: <==closure== 32209 (pos)
                    (Pb_checked_p1)

                    ; #50447: <==closure== 87091 (pos)
                    (Pa_checked_p1)

                    ; #51531: <==commonly_known== 54440 (pos)
                    (Bc_checked_p1)

                    ; #54440: origin
                    (checked_p1)

                    ; #57647: <==closure== 39640 (pos)
                    (Pd_checked_p1)

                    ; #71091: <==closure== 82384 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #72935: <==closure== 84110 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #82384: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #84110: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #87091: <==commonly_known== 54440 (pos)
                    (Ba_checked_p1)

                    ; #11113: <==negation-removal== 32209 (pos)
                    (not (Pb_not_checked_p1))

                    ; #17363: <==negation-removal== 50447 (pos)
                    (not (Ba_not_checked_p1))

                    ; #24508: <==negation-removal== 34630 (pos)
                    (not (Bc_not_checked_p1))

                    ; #28339: <==negation-removal== 84110 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #28417: <==unclosure== 94622 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #29026: <==negation-removal== 71091 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #32572: <==negation-removal== 39640 (pos)
                    (not (Pd_not_checked_p1))

                    ; #35797: <==negation-removal== 47794 (pos)
                    (not (Bb_not_checked_p1))

                    ; #37645: <==negation-removal== 51531 (pos)
                    (not (Pc_not_checked_p1))

                    ; #39056: <==negation-removal== 72935 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #47282: <==uncertain_firing== 84110 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #48963: <==negation-removal== 82384 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #51255: <==unclosure== 47282 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #58283: <==negation-removal== 57647 (pos)
                    (not (Bd_not_checked_p1))

                    ; #78411: <==negation-removal== 87091 (pos)
                    (not (Pa_not_checked_p1))

                    ; #86713: <==negation-removal== 54440 (pos)
                    (not (not_checked_p1))

                    ; #94622: <==uncertain_firing== 82384 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15397: <==commonly_known== 89148 (pos)
                    (Bd_checked_p2)

                    ; #15842: <==closure== 15397 (pos)
                    (Pd_checked_p2)

                    ; #21665: <==closure== 59255 (pos)
                    (Pc_checked_p2)

                    ; #47334: <==commonly_known== 89148 (pos)
                    (Bb_checked_p2)

                    ; #47406: <==closure== 47334 (pos)
                    (Pb_checked_p2)

                    ; #53607: <==closure== 76990 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #59096: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #59255: <==commonly_known== 89148 (pos)
                    (Bc_checked_p2)

                    ; #69798: <==commonly_known== 89148 (pos)
                    (Ba_checked_p2)

                    ; #70938: <==closure== 69798 (pos)
                    (Pa_checked_p2)

                    ; #76990: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #81745: <==closure== 59096 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #89148: origin
                    (checked_p2)

                    ; #21819: <==negation-removal== 81745 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #25928: <==unclosure== 50545 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #30080: <==negation-removal== 70938 (pos)
                    (not (Ba_not_checked_p2))

                    ; #42088: <==negation-removal== 47406 (pos)
                    (not (Bb_not_checked_p2))

                    ; #43495: <==uncertain_firing== 76990 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #44420: <==negation-removal== 53607 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #45844: <==negation-removal== 89148 (pos)
                    (not (not_checked_p2))

                    ; #48942: <==unclosure== 43495 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #50545: <==uncertain_firing== 59096 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #54136: <==negation-removal== 59096 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #54353: <==negation-removal== 15842 (pos)
                    (not (Bd_not_checked_p2))

                    ; #71243: <==negation-removal== 47334 (pos)
                    (not (Pb_not_checked_p2))

                    ; #74656: <==negation-removal== 21665 (pos)
                    (not (Bc_not_checked_p2))

                    ; #78225: <==negation-removal== 69798 (pos)
                    (not (Pa_not_checked_p2))

                    ; #80852: <==negation-removal== 76990 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #87730: <==negation-removal== 15397 (pos)
                    (not (Pd_not_checked_p2))

                    ; #89670: <==negation-removal== 59255 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12189: <==closure== 78931 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #14636: <==commonly_known== 64354 (pos)
                    (Ba_checked_p3)

                    ; #15709: <==closure== 45272 (pos)
                    (Pd_checked_p3)

                    ; #18586: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #24255: <==closure== 14636 (pos)
                    (Pa_checked_p3)

                    ; #44380: <==closure== 67488 (pos)
                    (Pc_checked_p3)

                    ; #45272: <==commonly_known== 64354 (pos)
                    (Bd_checked_p3)

                    ; #47791: <==commonly_known== 64354 (pos)
                    (Bb_checked_p3)

                    ; #64354: origin
                    (checked_p3)

                    ; #67488: <==commonly_known== 64354 (pos)
                    (Bc_checked_p3)

                    ; #68609: <==closure== 18586 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #71154: <==closure== 47791 (pos)
                    (Pb_checked_p3)

                    ; #78931: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #11005: <==negation-removal== 68609 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #20792: <==uncertain_firing== 18586 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #25483: <==negation-removal== 12189 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #27302: <==negation-removal== 45272 (pos)
                    (not (Pd_not_checked_p3))

                    ; #30852: <==negation-removal== 67488 (pos)
                    (not (Pc_not_checked_p3))

                    ; #33778: <==negation-removal== 14636 (pos)
                    (not (Pa_not_checked_p3))

                    ; #36102: <==negation-removal== 47791 (pos)
                    (not (Pb_not_checked_p3))

                    ; #41631: <==negation-removal== 71154 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56020: <==negation-removal== 44380 (pos)
                    (not (Bc_not_checked_p3))

                    ; #57920: <==negation-removal== 18586 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #59076: <==uncertain_firing== 78931 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #63288: <==unclosure== 59076 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #64024: <==negation-removal== 24255 (pos)
                    (not (Ba_not_checked_p3))

                    ; #65409: <==negation-removal== 64354 (pos)
                    (not (not_checked_p3))

                    ; #81718: <==negation-removal== 78931 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #87794: <==negation-removal== 15709 (pos)
                    (not (Bd_not_checked_p3))

                    ; #90555: <==unclosure== 20792 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10337: <==closure== 81172 (pos)
                    (Pc_checked_p4)

                    ; #25316: <==closure== 34679 (pos)
                    (Pa_checked_p4)

                    ; #25990: <==closure== 61296 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #29345: <==commonly_known== 90963 (pos)
                    (Bd_checked_p4)

                    ; #34679: <==commonly_known== 90963 (pos)
                    (Ba_checked_p4)

                    ; #35714: <==closure== 29345 (pos)
                    (Pd_checked_p4)

                    ; #53066: <==closure== 91257 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #61296: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #81172: <==commonly_known== 90963 (pos)
                    (Bc_checked_p4)

                    ; #88453: <==closure== 90222 (pos)
                    (Pb_checked_p4)

                    ; #90222: <==commonly_known== 90963 (pos)
                    (Bb_checked_p4)

                    ; #90963: origin
                    (checked_p4)

                    ; #91257: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #15553: <==negation-removal== 34679 (pos)
                    (not (Pa_not_checked_p4))

                    ; #20408: <==uncertain_firing== 61296 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #20947: <==negation-removal== 90963 (pos)
                    (not (not_checked_p4))

                    ; #21739: <==negation-removal== 88453 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22588: <==negation-removal== 81172 (pos)
                    (not (Pc_not_checked_p4))

                    ; #24564: <==negation-removal== 61296 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #32580: <==negation-removal== 25316 (pos)
                    (not (Ba_not_checked_p4))

                    ; #36895: <==negation-removal== 25990 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #40118: <==negation-removal== 91257 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #45298: <==uncertain_firing== 91257 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #53605: <==negation-removal== 90222 (pos)
                    (not (Pb_not_checked_p4))

                    ; #56999: <==unclosure== 45298 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #70304: <==negation-removal== 53066 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #73293: <==negation-removal== 29345 (pos)
                    (not (Pd_not_checked_p4))

                    ; #77753: <==negation-removal== 10337 (pos)
                    (not (Bc_not_checked_p4))

                    ; #87893: <==unclosure== 20408 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #89632: <==negation-removal== 35714 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11541: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #17991: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #24002: <==closure== 74844 (pos)
                    (Pa_checked_p5)

                    ; #25056: <==closure== 17991 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #45248: <==commonly_known== 59503 (pos)
                    (Bc_checked_p5)

                    ; #50486: <==closure== 69867 (pos)
                    (Pb_checked_p5)

                    ; #57100: <==commonly_known== 59503 (pos)
                    (Bd_checked_p5)

                    ; #59503: origin
                    (checked_p5)

                    ; #68184: <==closure== 45248 (pos)
                    (Pc_checked_p5)

                    ; #69867: <==commonly_known== 59503 (pos)
                    (Bb_checked_p5)

                    ; #74844: <==commonly_known== 59503 (pos)
                    (Ba_checked_p5)

                    ; #89396: <==closure== 57100 (pos)
                    (Pd_checked_p5)

                    ; #94807: <==closure== 11541 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #11509: <==uncertain_firing== 17991 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #14873: <==negation-removal== 24002 (pos)
                    (not (Ba_not_checked_p5))

                    ; #15346: <==negation-removal== 69867 (pos)
                    (not (Pb_not_checked_p5))

                    ; #22738: <==negation-removal== 57100 (pos)
                    (not (Pd_not_checked_p5))

                    ; #30404: <==negation-removal== 68184 (pos)
                    (not (Bc_not_checked_p5))

                    ; #32808: <==negation-removal== 17991 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #34635: <==negation-removal== 11541 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #36607: <==uncertain_firing== 11541 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #40406: <==negation-removal== 74844 (pos)
                    (not (Pa_not_checked_p5))

                    ; #43596: <==negation-removal== 89396 (pos)
                    (not (Bd_not_checked_p5))

                    ; #49956: <==unclosure== 11509 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #51591: <==negation-removal== 94807 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #51958: <==negation-removal== 59503 (pos)
                    (not (not_checked_p5))

                    ; #53068: <==negation-removal== 50486 (pos)
                    (not (Bb_not_checked_p5))

                    ; #54055: <==unclosure== 36607 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #64647: <==negation-removal== 45248 (pos)
                    (not (Pc_not_checked_p5))

                    ; #76767: <==negation-removal== 25056 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #21831: <==closure== 38696 (pos)
                    (Pc_checked_p6)

                    ; #24453: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #34918: origin
                    (checked_p6)

                    ; #38696: <==commonly_known== 34918 (pos)
                    (Bc_checked_p6)

                    ; #41134: <==commonly_known== 34918 (pos)
                    (Ba_checked_p6)

                    ; #41936: <==closure== 51380 (pos)
                    (Pb_checked_p6)

                    ; #44365: <==closure== 62522 (pos)
                    (Pd_checked_p6)

                    ; #51380: <==commonly_known== 34918 (pos)
                    (Bb_checked_p6)

                    ; #62522: <==commonly_known== 34918 (pos)
                    (Bd_checked_p6)

                    ; #77190: <==closure== 87064 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #81286: <==closure== 41134 (pos)
                    (Pa_checked_p6)

                    ; #86837: <==closure== 24453 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #87064: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #12662: <==negation-removal== 24453 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #17774: <==negation-removal== 41936 (pos)
                    (not (Bb_not_checked_p6))

                    ; #33616: <==negation-removal== 41134 (pos)
                    (not (Pa_not_checked_p6))

                    ; #38353: <==negation-removal== 51380 (pos)
                    (not (Pb_not_checked_p6))

                    ; #45744: <==negation-removal== 81286 (pos)
                    (not (Ba_not_checked_p6))

                    ; #49256: <==negation-removal== 34918 (pos)
                    (not (not_checked_p6))

                    ; #51837: <==negation-removal== 77190 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #55719: <==uncertain_firing== 87064 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #59665: <==unclosure== 55719 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #60753: <==negation-removal== 44365 (pos)
                    (not (Bd_not_checked_p6))

                    ; #64514: <==negation-removal== 21831 (pos)
                    (not (Bc_not_checked_p6))

                    ; #73970: <==uncertain_firing== 24453 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #76560: <==negation-removal== 87064 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #79005: <==negation-removal== 62522 (pos)
                    (not (Pd_not_checked_p6))

                    ; #83649: <==negation-removal== 38696 (pos)
                    (not (Pc_not_checked_p6))

                    ; #84753: <==unclosure== 73970 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #85395: <==negation-removal== 86837 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #33139: <==closure== 48477 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #35624: <==commonly_known== 82967 (pos)
                    (Ba_checked_p7)

                    ; #36670: <==closure== 77339 (pos)
                    (Pc_checked_p7)

                    ; #48477: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #52692: <==commonly_known== 82967 (pos)
                    (Bd_checked_p7)

                    ; #61572: <==closure== 35624 (pos)
                    (Pa_checked_p7)

                    ; #64059: <==closure== 80108 (pos)
                    (Pb_checked_p7)

                    ; #73617: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #77339: <==commonly_known== 82967 (pos)
                    (Bc_checked_p7)

                    ; #80108: <==commonly_known== 82967 (pos)
                    (Bb_checked_p7)

                    ; #82967: origin
                    (checked_p7)

                    ; #86459: <==closure== 52692 (pos)
                    (Pd_checked_p7)

                    ; #88772: <==closure== 73617 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #12294: <==negation-removal== 73617 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #15273: <==negation-removal== 33139 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #17771: <==negation-removal== 35624 (pos)
                    (not (Pa_not_checked_p7))

                    ; #18404: <==uncertain_firing== 48477 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #27196: <==negation-removal== 52692 (pos)
                    (not (Pd_not_checked_p7))

                    ; #30714: <==negation-removal== 61572 (pos)
                    (not (Ba_not_checked_p7))

                    ; #33289: <==negation-removal== 82967 (pos)
                    (not (not_checked_p7))

                    ; #37305: <==negation-removal== 36670 (pos)
                    (not (Bc_not_checked_p7))

                    ; #40130: <==negation-removal== 77339 (pos)
                    (not (Pc_not_checked_p7))

                    ; #46586: <==unclosure== 18404 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #63876: <==uncertain_firing== 73617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #65350: <==negation-removal== 86459 (pos)
                    (not (Bd_not_checked_p7))

                    ; #68892: <==negation-removal== 64059 (pos)
                    (not (Bb_not_checked_p7))

                    ; #76023: <==unclosure== 63876 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #81150: <==negation-removal== 48477 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #84452: <==negation-removal== 88772 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #89746: <==negation-removal== 80108 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19807: <==closure== 53360 (pos)
                    (Pa_checked_p8)

                    ; #26988: <==commonly_known== 62840 (pos)
                    (Bc_checked_p8)

                    ; #41138: <==commonly_known== 62840 (pos)
                    (Bb_checked_p8)

                    ; #53360: <==commonly_known== 62840 (pos)
                    (Ba_checked_p8)

                    ; #60693: <==closure== 26988 (pos)
                    (Pc_checked_p8)

                    ; #61569: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #62840: origin
                    (checked_p8)

                    ; #66752: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #70341: <==closure== 41138 (pos)
                    (Pb_checked_p8)

                    ; #77430: <==commonly_known== 62840 (pos)
                    (Bd_checked_p8)

                    ; #82377: <==closure== 66752 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #82622: <==closure== 61569 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #83343: <==closure== 77430 (pos)
                    (Pd_checked_p8)

                    ; #10416: <==uncertain_firing== 61569 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #15048: <==negation-removal== 26988 (pos)
                    (not (Pc_not_checked_p8))

                    ; #40950: <==negation-removal== 82622 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #41783: <==negation-removal== 77430 (pos)
                    (not (Pd_not_checked_p8))

                    ; #47021: <==negation-removal== 41138 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53965: <==negation-removal== 60693 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55699: <==negation-removal== 62840 (pos)
                    (not (not_checked_p8))

                    ; #56430: <==negation-removal== 19807 (pos)
                    (not (Ba_not_checked_p8))

                    ; #56607: <==unclosure== 10416 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #64901: <==uncertain_firing== 66752 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #64935: <==negation-removal== 53360 (pos)
                    (not (Pa_not_checked_p8))

                    ; #66751: <==negation-removal== 61569 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #67800: <==negation-removal== 70341 (pos)
                    (not (Bb_not_checked_p8))

                    ; #71815: <==negation-removal== 66752 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #73428: <==unclosure== 64901 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #89443: <==negation-removal== 82377 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #94087: <==negation-removal== 83343 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10041: <==commonly_known== 30762 (pos)
                    (Bc_checked_p9)

                    ; #12132: <==closure== 87473 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #16304: <==closure== 39461 (pos)
                    (Pa_checked_p9)

                    ; #30762: origin
                    (checked_p9)

                    ; #37781: <==closure== 10041 (pos)
                    (Pc_checked_p9)

                    ; #39461: <==commonly_known== 30762 (pos)
                    (Ba_checked_p9)

                    ; #55588: <==closure== 69407 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #55824: <==commonly_known== 30762 (pos)
                    (Bd_checked_p9)

                    ; #63790: <==closure== 55824 (pos)
                    (Pd_checked_p9)

                    ; #69407: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #73773: <==closure== 88488 (pos)
                    (Pb_checked_p9)

                    ; #87473: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #88488: <==commonly_known== 30762 (pos)
                    (Bb_checked_p9)

                    ; #10364: <==uncertain_firing== 69407 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #16934: <==negation-removal== 12132 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #21192: <==unclosure== 35645 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #21514: <==negation-removal== 69407 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #23116: <==negation-removal== 55588 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #30629: <==negation-removal== 73773 (pos)
                    (not (Bb_not_checked_p9))

                    ; #30927: <==negation-removal== 87473 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #33595: <==negation-removal== 63790 (pos)
                    (not (Bd_not_checked_p9))

                    ; #35645: <==uncertain_firing== 87473 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #61812: <==negation-removal== 30762 (pos)
                    (not (not_checked_p9))

                    ; #64664: <==negation-removal== 37781 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68181: <==negation-removal== 10041 (pos)
                    (not (Pc_not_checked_p9))

                    ; #68612: <==negation-removal== 88488 (pos)
                    (not (Pb_not_checked_p9))

                    ; #71694: <==negation-removal== 39461 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73014: <==negation-removal== 55824 (pos)
                    (not (Pd_not_checked_p9))

                    ; #78846: <==negation-removal== 16304 (pos)
                    (not (Ba_not_checked_p9))

                    ; #87628: <==unclosure== 10364 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))))

    (:action observ_d_p10_s
        :precondition (and (at_d_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #19626: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #21337: <==closure== 76176 (pos)
                    (Pd_checked_p10)

                    ; #30549: <==closure== 38663 (pos)
                    (Pa_checked_p10)

                    ; #37643: <==closure== 69379 (pos)
                    (Pc_checked_p10)

                    ; #38663: <==commonly_known== 53446 (pos)
                    (Ba_checked_p10)

                    ; #40373: <==closure== 19626 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #43051: <==closure== 58751 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #43572: <==commonly_known== 53446 (pos)
                    (Bb_checked_p10)

                    ; #53446: origin
                    (checked_p10)

                    ; #58751: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #59063: <==closure== 43572 (pos)
                    (Pb_checked_p10)

                    ; #69379: <==commonly_known== 53446 (pos)
                    (Bc_checked_p10)

                    ; #76176: <==commonly_known== 53446 (pos)
                    (Bd_checked_p10)

                    ; #13784: <==negation-removal== 38663 (pos)
                    (not (Pa_not_checked_p10))

                    ; #15765: <==negation-removal== 30549 (pos)
                    (not (Ba_not_checked_p10))

                    ; #16938: <==unclosure== 63705 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #17333: <==negation-removal== 19626 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #22173: <==negation-removal== 37643 (pos)
                    (not (Bc_not_checked_p10))

                    ; #27746: <==negation-removal== 58751 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #34819: <==negation-removal== 59063 (pos)
                    (not (Bb_not_checked_p10))

                    ; #53234: <==negation-removal== 43051 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #55849: <==unclosure== 88749 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #58784: <==negation-removal== 76176 (pos)
                    (not (Pd_not_checked_p10))

                    ; #63705: <==uncertain_firing== 19626 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #69715: <==negation-removal== 40373 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #79596: <==negation-removal== 53446 (pos)
                    (not (not_checked_p10))

                    ; #83151: <==negation-removal== 69379 (pos)
                    (not (Pc_not_checked_p10))

                    ; #85816: <==negation-removal== 21337 (pos)
                    (not (Bd_not_checked_p10))

                    ; #88749: <==uncertain_firing== 58751 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #90787: <==negation-removal== 43572 (pos)
                    (not (Pb_not_checked_p10))))

    (:action observ_d_p11_s
        :precondition (and (at_d_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #16734: <==commonly_known== 71993 (pos)
                    (Ba_checked_p11)

                    ; #26436: <==closure== 43792 (pos)
                    (Pc_checked_p11)

                    ; #33822: <==closure== 66234 (pos)
                    (Pd_checked_p11)

                    ; #35112: <==commonly_known== 71993 (pos)
                    (Bb_checked_p11)

                    ; #43792: <==commonly_known== 71993 (pos)
                    (Bc_checked_p11)

                    ; #51272: <==closure== 16734 (pos)
                    (Pa_checked_p11)

                    ; #53807: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #56368: <==closure== 53807 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #62883: <==closure== 86093 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #66234: <==commonly_known== 71993 (pos)
                    (Bd_checked_p11)

                    ; #71993: origin
                    (checked_p11)

                    ; #86093: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #89874: <==closure== 35112 (pos)
                    (Pb_checked_p11)

                    ; #25514: <==negation-removal== 66234 (pos)
                    (not (Pd_not_checked_p11))

                    ; #26905: <==negation-removal== 53807 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #31563: <==negation-removal== 16734 (pos)
                    (not (Pa_not_checked_p11))

                    ; #33077: <==negation-removal== 35112 (pos)
                    (not (Pb_not_checked_p11))

                    ; #36442: <==negation-removal== 51272 (pos)
                    (not (Ba_not_checked_p11))

                    ; #36638: <==negation-removal== 62883 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #39835: <==negation-removal== 89874 (pos)
                    (not (Bb_not_checked_p11))

                    ; #45601: <==uncertain_firing== 53807 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #47836: <==negation-removal== 26436 (pos)
                    (not (Bc_not_checked_p11))

                    ; #50506: <==uncertain_firing== 86093 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #56757: <==negation-removal== 33822 (pos)
                    (not (Bd_not_checked_p11))

                    ; #58463: <==unclosure== 45601 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #62838: <==negation-removal== 86093 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #82567: <==negation-removal== 43792 (pos)
                    (not (Pc_not_checked_p11))

                    ; #82647: <==negation-removal== 71993 (pos)
                    (not (not_checked_p11))

                    ; #83008: <==negation-removal== 56368 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #83285: <==unclosure== 50506 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))))

    (:action observ_d_p12_s
        :precondition (and (at_d_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #14367: <==commonly_known== 56356 (pos)
                    (Bc_checked_p12)

                    ; #45047: <==closure== 71478 (pos)
                    (Pa_checked_p12)

                    ; #47098: <==closure== 66923 (pos)
                    (Pd_checked_p12)

                    ; #49704: <==commonly_known== 56356 (pos)
                    (Bb_checked_p12)

                    ; #50589: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #56356: origin
                    (checked_p12)

                    ; #65893: <==closure== 14367 (pos)
                    (Pc_checked_p12)

                    ; #66923: <==commonly_known== 56356 (pos)
                    (Bd_checked_p12)

                    ; #71478: <==commonly_known== 56356 (pos)
                    (Ba_checked_p12)

                    ; #74314: <==closure== 83429 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #77810: <==closure== 50589 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #81918: <==closure== 49704 (pos)
                    (Pb_checked_p12)

                    ; #83429: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #16273: <==negation-removal== 14367 (pos)
                    (not (Pc_not_checked_p12))

                    ; #17008: <==negation-removal== 50589 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #22351: <==negation-removal== 74314 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #25806: <==unclosure== 54736 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #31031: <==negation-removal== 66923 (pos)
                    (not (Pd_not_checked_p12))

                    ; #31075: <==negation-removal== 83429 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #34226: <==negation-removal== 56356 (pos)
                    (not (not_checked_p12))

                    ; #38204: <==negation-removal== 77810 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #42781: <==negation-removal== 47098 (pos)
                    (not (Bd_not_checked_p12))

                    ; #54736: <==uncertain_firing== 50589 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #55572: <==negation-removal== 71478 (pos)
                    (not (Pa_not_checked_p12))

                    ; #64793: <==uncertain_firing== 83429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #71475: <==negation-removal== 65893 (pos)
                    (not (Bc_not_checked_p12))

                    ; #76813: <==negation-removal== 45047 (pos)
                    (not (Ba_not_checked_p12))

                    ; #89299: <==unclosure== 64793 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #89309: <==negation-removal== 81918 (pos)
                    (not (Bb_not_checked_p12))

                    ; #91964: <==negation-removal== 49704 (pos)
                    (not (Pb_not_checked_p12))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12904: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #32209: <==commonly_known== 54440 (pos)
                    (Bb_checked_p1)

                    ; #34630: <==closure== 51531 (pos)
                    (Pc_checked_p1)

                    ; #39640: <==commonly_known== 54440 (pos)
                    (Bd_checked_p1)

                    ; #47794: <==closure== 32209 (pos)
                    (Pb_checked_p1)

                    ; #50447: <==closure== 87091 (pos)
                    (Pa_checked_p1)

                    ; #51531: <==commonly_known== 54440 (pos)
                    (Bc_checked_p1)

                    ; #54440: origin
                    (checked_p1)

                    ; #56911: <==closure== 70456 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #57647: <==closure== 39640 (pos)
                    (Pd_checked_p1)

                    ; #70456: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #75399: <==closure== 12904 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #87091: <==commonly_known== 54440 (pos)
                    (Ba_checked_p1)

                    ; #11113: <==negation-removal== 32209 (pos)
                    (not (Pb_not_checked_p1))

                    ; #17363: <==negation-removal== 50447 (pos)
                    (not (Ba_not_checked_p1))

                    ; #23296: <==negation-removal== 75399 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #24508: <==negation-removal== 34630 (pos)
                    (not (Bc_not_checked_p1))

                    ; #32572: <==negation-removal== 39640 (pos)
                    (not (Pd_not_checked_p1))

                    ; #35797: <==negation-removal== 47794 (pos)
                    (not (Bb_not_checked_p1))

                    ; #36199: <==uncertain_firing== 12904 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #36864: <==unclosure== 40058 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #37645: <==negation-removal== 51531 (pos)
                    (not (Pc_not_checked_p1))

                    ; #40058: <==uncertain_firing== 70456 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #46243: <==negation-removal== 12904 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #58283: <==negation-removal== 57647 (pos)
                    (not (Bd_not_checked_p1))

                    ; #59709: <==negation-removal== 56911 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #60376: <==negation-removal== 70456 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #75913: <==unclosure== 36199 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #78411: <==negation-removal== 87091 (pos)
                    (not (Pa_not_checked_p1))

                    ; #86713: <==negation-removal== 54440 (pos)
                    (not (not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12601: <==closure== 39334 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #15397: <==commonly_known== 89148 (pos)
                    (Bd_checked_p2)

                    ; #15842: <==closure== 15397 (pos)
                    (Pd_checked_p2)

                    ; #21665: <==closure== 59255 (pos)
                    (Pc_checked_p2)

                    ; #24974: <==closure== 81711 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #39334: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #47334: <==commonly_known== 89148 (pos)
                    (Bb_checked_p2)

                    ; #47406: <==closure== 47334 (pos)
                    (Pb_checked_p2)

                    ; #59255: <==commonly_known== 89148 (pos)
                    (Bc_checked_p2)

                    ; #69798: <==commonly_known== 89148 (pos)
                    (Ba_checked_p2)

                    ; #70938: <==closure== 69798 (pos)
                    (Pa_checked_p2)

                    ; #81711: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #89148: origin
                    (checked_p2)

                    ; #15218: <==unclosure== 81663 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #22002: <==negation-removal== 39334 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #30080: <==negation-removal== 70938 (pos)
                    (not (Ba_not_checked_p2))

                    ; #42088: <==negation-removal== 47406 (pos)
                    (not (Bb_not_checked_p2))

                    ; #45844: <==negation-removal== 89148 (pos)
                    (not (not_checked_p2))

                    ; #47871: <==negation-removal== 12601 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #48805: <==negation-removal== 24974 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #54353: <==negation-removal== 15842 (pos)
                    (not (Bd_not_checked_p2))

                    ; #57640: <==uncertain_firing== 81711 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #59401: <==unclosure== 57640 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #66513: <==negation-removal== 81711 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #71243: <==negation-removal== 47334 (pos)
                    (not (Pb_not_checked_p2))

                    ; #74656: <==negation-removal== 21665 (pos)
                    (not (Bc_not_checked_p2))

                    ; #78225: <==negation-removal== 69798 (pos)
                    (not (Pa_not_checked_p2))

                    ; #81663: <==uncertain_firing== 39334 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #87730: <==negation-removal== 15397 (pos)
                    (not (Pd_not_checked_p2))

                    ; #89670: <==negation-removal== 59255 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14636: <==commonly_known== 64354 (pos)
                    (Ba_checked_p3)

                    ; #15709: <==closure== 45272 (pos)
                    (Pd_checked_p3)

                    ; #17023: <==closure== 51055 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #24255: <==closure== 14636 (pos)
                    (Pa_checked_p3)

                    ; #44380: <==closure== 67488 (pos)
                    (Pc_checked_p3)

                    ; #45272: <==commonly_known== 64354 (pos)
                    (Bd_checked_p3)

                    ; #47501: <==closure== 86206 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #47791: <==commonly_known== 64354 (pos)
                    (Bb_checked_p3)

                    ; #51055: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #64354: origin
                    (checked_p3)

                    ; #67488: <==commonly_known== 64354 (pos)
                    (Bc_checked_p3)

                    ; #71154: <==closure== 47791 (pos)
                    (Pb_checked_p3)

                    ; #86206: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12113: <==unclosure== 52368 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #24808: <==negation-removal== 17023 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #27302: <==negation-removal== 45272 (pos)
                    (not (Pd_not_checked_p3))

                    ; #30852: <==negation-removal== 67488 (pos)
                    (not (Pc_not_checked_p3))

                    ; #33778: <==negation-removal== 14636 (pos)
                    (not (Pa_not_checked_p3))

                    ; #36102: <==negation-removal== 47791 (pos)
                    (not (Pb_not_checked_p3))

                    ; #41631: <==negation-removal== 71154 (pos)
                    (not (Bb_not_checked_p3))

                    ; #52368: <==uncertain_firing== 51055 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #56020: <==negation-removal== 44380 (pos)
                    (not (Bc_not_checked_p3))

                    ; #64024: <==negation-removal== 24255 (pos)
                    (not (Ba_not_checked_p3))

                    ; #65409: <==negation-removal== 64354 (pos)
                    (not (not_checked_p3))

                    ; #66022: <==negation-removal== 47501 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #79391: <==unclosure== 86504 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #83578: <==negation-removal== 51055 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #85092: <==negation-removal== 86206 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #86504: <==uncertain_firing== 86206 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #87794: <==negation-removal== 15709 (pos)
                    (not (Bd_not_checked_p3))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10337: <==closure== 81172 (pos)
                    (Pc_checked_p4)

                    ; #16293: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #17322: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #25316: <==closure== 34679 (pos)
                    (Pa_checked_p4)

                    ; #29345: <==commonly_known== 90963 (pos)
                    (Bd_checked_p4)

                    ; #34679: <==commonly_known== 90963 (pos)
                    (Ba_checked_p4)

                    ; #35714: <==closure== 29345 (pos)
                    (Pd_checked_p4)

                    ; #48938: <==closure== 16293 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #67200: <==closure== 17322 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #81172: <==commonly_known== 90963 (pos)
                    (Bc_checked_p4)

                    ; #88453: <==closure== 90222 (pos)
                    (Pb_checked_p4)

                    ; #90222: <==commonly_known== 90963 (pos)
                    (Bb_checked_p4)

                    ; #90963: origin
                    (checked_p4)

                    ; #15553: <==negation-removal== 34679 (pos)
                    (not (Pa_not_checked_p4))

                    ; #20947: <==negation-removal== 90963 (pos)
                    (not (not_checked_p4))

                    ; #21739: <==negation-removal== 88453 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22588: <==negation-removal== 81172 (pos)
                    (not (Pc_not_checked_p4))

                    ; #23427: <==unclosure== 75571 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #24161: <==uncertain_firing== 17322 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #29031: <==unclosure== 24161 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #29496: <==negation-removal== 17322 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #32580: <==negation-removal== 25316 (pos)
                    (not (Ba_not_checked_p4))

                    ; #38963: <==negation-removal== 48938 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #53605: <==negation-removal== 90222 (pos)
                    (not (Pb_not_checked_p4))

                    ; #73293: <==negation-removal== 29345 (pos)
                    (not (Pd_not_checked_p4))

                    ; #75571: <==uncertain_firing== 16293 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #77753: <==negation-removal== 10337 (pos)
                    (not (Bc_not_checked_p4))

                    ; #78926: <==negation-removal== 67200 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #80139: <==negation-removal== 16293 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #89632: <==negation-removal== 35714 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #24002: <==closure== 74844 (pos)
                    (Pa_checked_p5)

                    ; #30879: <==closure== 48850 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #45248: <==commonly_known== 59503 (pos)
                    (Bc_checked_p5)

                    ; #48850: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #50119: <==closure== 59648 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #50486: <==closure== 69867 (pos)
                    (Pb_checked_p5)

                    ; #57100: <==commonly_known== 59503 (pos)
                    (Bd_checked_p5)

                    ; #59503: origin
                    (checked_p5)

                    ; #59648: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #68184: <==closure== 45248 (pos)
                    (Pc_checked_p5)

                    ; #69867: <==commonly_known== 59503 (pos)
                    (Bb_checked_p5)

                    ; #74844: <==commonly_known== 59503 (pos)
                    (Ba_checked_p5)

                    ; #89396: <==closure== 57100 (pos)
                    (Pd_checked_p5)

                    ; #13964: <==negation-removal== 59648 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #14873: <==negation-removal== 24002 (pos)
                    (not (Ba_not_checked_p5))

                    ; #15346: <==negation-removal== 69867 (pos)
                    (not (Pb_not_checked_p5))

                    ; #22738: <==negation-removal== 57100 (pos)
                    (not (Pd_not_checked_p5))

                    ; #27345: <==uncertain_firing== 59648 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #30404: <==negation-removal== 68184 (pos)
                    (not (Bc_not_checked_p5))

                    ; #31508: <==unclosure== 27345 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #37264: <==negation-removal== 30879 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #40406: <==negation-removal== 74844 (pos)
                    (not (Pa_not_checked_p5))

                    ; #43596: <==negation-removal== 89396 (pos)
                    (not (Bd_not_checked_p5))

                    ; #50114: <==negation-removal== 50119 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #51958: <==negation-removal== 59503 (pos)
                    (not (not_checked_p5))

                    ; #53068: <==negation-removal== 50486 (pos)
                    (not (Bb_not_checked_p5))

                    ; #64647: <==negation-removal== 45248 (pos)
                    (not (Pc_not_checked_p5))

                    ; #66582: <==uncertain_firing== 48850 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #73421: <==unclosure== 66582 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #88993: <==negation-removal== 48850 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16549: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #21254: <==closure== 16549 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #21831: <==closure== 38696 (pos)
                    (Pc_checked_p6)

                    ; #34918: origin
                    (checked_p6)

                    ; #38696: <==commonly_known== 34918 (pos)
                    (Bc_checked_p6)

                    ; #41134: <==commonly_known== 34918 (pos)
                    (Ba_checked_p6)

                    ; #41936: <==closure== 51380 (pos)
                    (Pb_checked_p6)

                    ; #44365: <==closure== 62522 (pos)
                    (Pd_checked_p6)

                    ; #51380: <==commonly_known== 34918 (pos)
                    (Bb_checked_p6)

                    ; #62522: <==commonly_known== 34918 (pos)
                    (Bd_checked_p6)

                    ; #69528: <==closure== 83821 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #81286: <==closure== 41134 (pos)
                    (Pa_checked_p6)

                    ; #83821: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #11258: <==unclosure== 56902 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #15112: <==negation-removal== 83821 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #17774: <==negation-removal== 41936 (pos)
                    (not (Bb_not_checked_p6))

                    ; #33616: <==negation-removal== 41134 (pos)
                    (not (Pa_not_checked_p6))

                    ; #38353: <==negation-removal== 51380 (pos)
                    (not (Pb_not_checked_p6))

                    ; #43651: <==uncertain_firing== 16549 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #45744: <==negation-removal== 81286 (pos)
                    (not (Ba_not_checked_p6))

                    ; #49256: <==negation-removal== 34918 (pos)
                    (not (not_checked_p6))

                    ; #52698: <==negation-removal== 21254 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #56902: <==uncertain_firing== 83821 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #60753: <==negation-removal== 44365 (pos)
                    (not (Bd_not_checked_p6))

                    ; #64378: <==negation-removal== 69528 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #64514: <==negation-removal== 21831 (pos)
                    (not (Bc_not_checked_p6))

                    ; #73913: <==negation-removal== 16549 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #79005: <==negation-removal== 62522 (pos)
                    (not (Pd_not_checked_p6))

                    ; #81109: <==unclosure== 43651 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #83649: <==negation-removal== 38696 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #35094: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #35624: <==commonly_known== 82967 (pos)
                    (Ba_checked_p7)

                    ; #36670: <==closure== 77339 (pos)
                    (Pc_checked_p7)

                    ; #43615: <==closure== 35094 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #52692: <==commonly_known== 82967 (pos)
                    (Bd_checked_p7)

                    ; #61572: <==closure== 35624 (pos)
                    (Pa_checked_p7)

                    ; #64059: <==closure== 80108 (pos)
                    (Pb_checked_p7)

                    ; #75372: <==closure== 96256 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #77339: <==commonly_known== 82967 (pos)
                    (Bc_checked_p7)

                    ; #80108: <==commonly_known== 82967 (pos)
                    (Bb_checked_p7)

                    ; #82967: origin
                    (checked_p7)

                    ; #86459: <==closure== 52692 (pos)
                    (Pd_checked_p7)

                    ; #96256: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #17771: <==negation-removal== 35624 (pos)
                    (not (Pa_not_checked_p7))

                    ; #19951: <==uncertain_firing== 96256 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #25491: <==negation-removal== 43615 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #27196: <==negation-removal== 52692 (pos)
                    (not (Pd_not_checked_p7))

                    ; #30714: <==negation-removal== 61572 (pos)
                    (not (Ba_not_checked_p7))

                    ; #33289: <==negation-removal== 82967 (pos)
                    (not (not_checked_p7))

                    ; #37305: <==negation-removal== 36670 (pos)
                    (not (Bc_not_checked_p7))

                    ; #40017: <==uncertain_firing== 35094 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #40130: <==negation-removal== 77339 (pos)
                    (not (Pc_not_checked_p7))

                    ; #57992: <==negation-removal== 35094 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #59901: <==unclosure== 19951 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #65350: <==negation-removal== 86459 (pos)
                    (not (Bd_not_checked_p7))

                    ; #68892: <==negation-removal== 64059 (pos)
                    (not (Bb_not_checked_p7))

                    ; #86510: <==negation-removal== 75372 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #88304: <==unclosure== 40017 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #89746: <==negation-removal== 80108 (pos)
                    (not (Pb_not_checked_p7))

                    ; #91469: <==negation-removal== 96256 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17624: <==closure== 91406 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #19807: <==closure== 53360 (pos)
                    (Pa_checked_p8)

                    ; #24036: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #26988: <==commonly_known== 62840 (pos)
                    (Bc_checked_p8)

                    ; #41084: <==closure== 24036 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #41138: <==commonly_known== 62840 (pos)
                    (Bb_checked_p8)

                    ; #53360: <==commonly_known== 62840 (pos)
                    (Ba_checked_p8)

                    ; #60693: <==closure== 26988 (pos)
                    (Pc_checked_p8)

                    ; #62840: origin
                    (checked_p8)

                    ; #70341: <==closure== 41138 (pos)
                    (Pb_checked_p8)

                    ; #77430: <==commonly_known== 62840 (pos)
                    (Bd_checked_p8)

                    ; #83343: <==closure== 77430 (pos)
                    (Pd_checked_p8)

                    ; #91406: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #15048: <==negation-removal== 26988 (pos)
                    (not (Pc_not_checked_p8))

                    ; #41783: <==negation-removal== 77430 (pos)
                    (not (Pd_not_checked_p8))

                    ; #47021: <==negation-removal== 41138 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53965: <==negation-removal== 60693 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55699: <==negation-removal== 62840 (pos)
                    (not (not_checked_p8))

                    ; #55723: <==unclosure== 74805 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #56430: <==negation-removal== 19807 (pos)
                    (not (Ba_not_checked_p8))

                    ; #64935: <==negation-removal== 53360 (pos)
                    (not (Pa_not_checked_p8))

                    ; #65575: <==negation-removal== 91406 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #67800: <==negation-removal== 70341 (pos)
                    (not (Bb_not_checked_p8))

                    ; #71504: <==negation-removal== 24036 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #72697: <==negation-removal== 17624 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #74805: <==uncertain_firing== 91406 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #79709: <==unclosure== 80563 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #80563: <==uncertain_firing== 24036 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #86836: <==negation-removal== 41084 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #94087: <==negation-removal== 83343 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10041: <==commonly_known== 30762 (pos)
                    (Bc_checked_p9)

                    ; #10277: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #11320: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #16304: <==closure== 39461 (pos)
                    (Pa_checked_p9)

                    ; #30762: origin
                    (checked_p9)

                    ; #37781: <==closure== 10041 (pos)
                    (Pc_checked_p9)

                    ; #39461: <==commonly_known== 30762 (pos)
                    (Ba_checked_p9)

                    ; #54964: <==closure== 10277 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #55824: <==commonly_known== 30762 (pos)
                    (Bd_checked_p9)

                    ; #63790: <==closure== 55824 (pos)
                    (Pd_checked_p9)

                    ; #70515: <==closure== 11320 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #73773: <==closure== 88488 (pos)
                    (Pb_checked_p9)

                    ; #88488: <==commonly_known== 30762 (pos)
                    (Bb_checked_p9)

                    ; #12473: <==unclosure== 42779 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #24151: <==negation-removal== 70515 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #30629: <==negation-removal== 73773 (pos)
                    (not (Bb_not_checked_p9))

                    ; #33595: <==negation-removal== 63790 (pos)
                    (not (Bd_not_checked_p9))

                    ; #36975: <==negation-removal== 54964 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #38423: <==negation-removal== 10277 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #39711: <==negation-removal== 11320 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #42779: <==uncertain_firing== 11320 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #53978: <==unclosure== 63063 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #61812: <==negation-removal== 30762 (pos)
                    (not (not_checked_p9))

                    ; #63063: <==uncertain_firing== 10277 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #64664: <==negation-removal== 37781 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68181: <==negation-removal== 10041 (pos)
                    (not (Pc_not_checked_p9))

                    ; #68612: <==negation-removal== 88488 (pos)
                    (not (Pb_not_checked_p9))

                    ; #71694: <==negation-removal== 39461 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73014: <==negation-removal== 55824 (pos)
                    (not (Pd_not_checked_p9))

                    ; #78846: <==negation-removal== 16304 (pos)
                    (not (Ba_not_checked_p9))))

)