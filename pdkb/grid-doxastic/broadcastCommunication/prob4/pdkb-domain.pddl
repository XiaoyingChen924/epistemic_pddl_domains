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
        (not_leader_a)
        (not_leader_b)
        (not_leader_c)
        (not_leader_d)
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
        (leader_a)
        (leader_b)
        (leader_c)
        (leader_d)
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

    (:action badcomm_p10_a_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #64661: origin
                    (Ba_not_survivorat_s_p10)

                    ; #78394: <==closure== 64661 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #58635: <==negation-removal== 64661 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #98358: <==negation-removal== 78394 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_a_b_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #34728: origin
                    (Bb_not_survivorat_s_p10)

                    ; #82563: <==closure== 34728 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #52683: <==negation-removal== 34728 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #75067: <==negation-removal== 82563 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_a_c_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #30545: <==closure== 88984 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #88984: origin
                    (Bc_not_survivorat_s_p10)

                    ; #90462: <==negation-removal== 30545 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #91002: <==negation-removal== 88984 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_a_d_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_d)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #53293: origin
                    (Bd_not_survivorat_s_p10)

                    ; #77084: <==closure== 53293 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #64408: <==negation-removal== 53293 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #68282: <==negation-removal== 77084 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_a)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #64661: origin
                    (Ba_not_survivorat_s_p10)

                    ; #78394: <==closure== 64661 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #58635: <==negation-removal== 64661 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #98358: <==negation-removal== 78394 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #34728: origin
                    (Bb_not_survivorat_s_p10)

                    ; #82563: <==closure== 34728 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #52683: <==negation-removal== 34728 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #75067: <==negation-removal== 82563 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_c)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #30545: <==closure== 88984 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #88984: origin
                    (Bc_not_survivorat_s_p10)

                    ; #90462: <==negation-removal== 30545 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #91002: <==negation-removal== 88984 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_b_d_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_d)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #53293: origin
                    (Bd_not_survivorat_s_p10)

                    ; #77084: <==closure== 53293 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #64408: <==negation-removal== 53293 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #68282: <==negation-removal== 77084 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_c_a_s
        :precondition (and (at_c_p10)
                           (leader_a)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #64661: origin
                    (Ba_not_survivorat_s_p10)

                    ; #78394: <==closure== 64661 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #58635: <==negation-removal== 64661 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #98358: <==negation-removal== 78394 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_c_b_s
        :precondition (and (at_c_p10)
                           (leader_b)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #34728: origin
                    (Bb_not_survivorat_s_p10)

                    ; #82563: <==closure== 34728 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #52683: <==negation-removal== 34728 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #75067: <==negation-removal== 82563 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_c_c_s
        :precondition (and (at_c_p10)
                           (leader_c)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #30545: <==closure== 88984 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #88984: origin
                    (Bc_not_survivorat_s_p10)

                    ; #90462: <==negation-removal== 30545 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #91002: <==negation-removal== 88984 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_c_d_s
        :precondition (and (leader_d)
                           (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #53293: origin
                    (Bd_not_survivorat_s_p10)

                    ; #77084: <==closure== 53293 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #64408: <==negation-removal== 53293 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #68282: <==negation-removal== 77084 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #64661: origin
                    (Ba_not_survivorat_s_p10)

                    ; #78394: <==closure== 64661 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #58635: <==negation-removal== 64661 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #98358: <==negation-removal== 78394 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_d_b_s
        :precondition (and (leader_b)
                           (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #34728: origin
                    (Bb_not_survivorat_s_p10)

                    ; #82563: <==closure== 34728 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #52683: <==negation-removal== 34728 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #75067: <==negation-removal== 82563 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_d_c_s
        :precondition (and (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_c)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #30545: <==closure== 88984 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #88984: origin
                    (Bc_not_survivorat_s_p10)

                    ; #90462: <==negation-removal== 30545 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #91002: <==negation-removal== 88984 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_d_d_s
        :precondition (and (leader_d)
                           (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #53293: origin
                    (Bd_not_survivorat_s_p10)

                    ; #77084: <==closure== 53293 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #64408: <==negation-removal== 53293 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #68282: <==negation-removal== 77084 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #10634: origin
                    (Ba_not_survivorat_s_p11)

                    ; #74735: <==closure== 10634 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #77776: <==negation-removal== 10634 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #78641: <==negation-removal== 74735 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #42304: <==closure== 48014 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #48014: origin
                    (Bb_not_survivorat_s_p11)

                    ; #64300: <==negation-removal== 48014 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #72631: <==negation-removal== 42304 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #11648: <==closure== 63493 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #63493: origin
                    (Bc_not_survivorat_s_p11)

                    ; #14628: <==negation-removal== 11648 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #24344: <==negation-removal== 63493 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_a_d_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_d))
        :effect (and
                    ; #40728: <==closure== 67516 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #67516: origin
                    (Bd_not_survivorat_s_p11)

                    ; #52167: <==negation-removal== 40728 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #67218: <==negation-removal== 67516 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p11_b_a_s
        :precondition (and (Pb_survivorat_s_p11)
                           (leader_a)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #10634: origin
                    (Ba_not_survivorat_s_p11)

                    ; #74735: <==closure== 10634 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #77776: <==negation-removal== 10634 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #78641: <==negation-removal== 74735 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_b_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (leader_b)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #42304: <==closure== 48014 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #48014: origin
                    (Bb_not_survivorat_s_p11)

                    ; #64300: <==negation-removal== 48014 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #72631: <==negation-removal== 42304 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_b_c_s
        :precondition (and (Pb_survivorat_s_p11)
                           (leader_c)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #11648: <==closure== 63493 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #63493: origin
                    (Bc_not_survivorat_s_p11)

                    ; #14628: <==negation-removal== 11648 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #24344: <==negation-removal== 63493 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_b_d_s
        :precondition (and (leader_d)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #40728: <==closure== 67516 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #67516: origin
                    (Bd_not_survivorat_s_p11)

                    ; #52167: <==negation-removal== 40728 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #67218: <==negation-removal== 67516 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p11_c_a_s
        :precondition (and (leader_a)
                           (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #10634: origin
                    (Ba_not_survivorat_s_p11)

                    ; #74735: <==closure== 10634 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #77776: <==negation-removal== 10634 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #78641: <==negation-removal== 74735 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_c_b_s
        :precondition (and (at_c_p11)
                           (leader_b)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #42304: <==closure== 48014 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #48014: origin
                    (Bb_not_survivorat_s_p11)

                    ; #64300: <==negation-removal== 48014 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #72631: <==negation-removal== 42304 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_c_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (leader_c)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #11648: <==closure== 63493 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #63493: origin
                    (Bc_not_survivorat_s_p11)

                    ; #14628: <==negation-removal== 11648 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #24344: <==negation-removal== 63493 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_c_d_s
        :precondition (and (at_c_p11)
                           (leader_d)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #40728: <==closure== 67516 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #67516: origin
                    (Bd_not_survivorat_s_p11)

                    ; #52167: <==negation-removal== 40728 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #67218: <==negation-removal== 67516 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p11_d_a_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (leader_a)
                           (at_d_p11))
        :effect (and
                    ; #10634: origin
                    (Ba_not_survivorat_s_p11)

                    ; #74735: <==closure== 10634 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #77776: <==negation-removal== 10634 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #78641: <==negation-removal== 74735 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_d_b_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (leader_b)
                           (at_d_p11))
        :effect (and
                    ; #42304: <==closure== 48014 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #48014: origin
                    (Bb_not_survivorat_s_p11)

                    ; #64300: <==negation-removal== 48014 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #72631: <==negation-removal== 42304 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_d_c_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (leader_c)
                           (at_d_p11))
        :effect (and
                    ; #11648: <==closure== 63493 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #63493: origin
                    (Bc_not_survivorat_s_p11)

                    ; #14628: <==negation-removal== 11648 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #24344: <==negation-removal== 63493 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_d_d_s
        :precondition (and (leader_d)
                           (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #40728: <==closure== 67516 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #67516: origin
                    (Bd_not_survivorat_s_p11)

                    ; #52167: <==negation-removal== 40728 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #67218: <==negation-removal== 67516 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_a))
        :effect (and
                    ; #28585: origin
                    (Ba_not_survivorat_s_p12)

                    ; #51480: <==closure== 28585 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #41378: <==negation-removal== 51480 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #54839: <==negation-removal== 28585 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_b))
        :effect (and
                    ; #25881: <==closure== 74700 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #74700: origin
                    (Bb_not_survivorat_s_p12)

                    ; #71043: <==negation-removal== 25881 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #75153: <==negation-removal== 74700 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_c))
        :effect (and
                    ; #57276: origin
                    (Bc_not_survivorat_s_p12)

                    ; #73334: <==closure== 57276 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #11555: <==negation-removal== 73334 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #81441: <==negation-removal== 57276 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_a_d_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_d)
                           (at_a_p12))
        :effect (and
                    ; #18659: <==closure== 79227 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #79227: origin
                    (Bd_not_survivorat_s_p12)

                    ; #11508: <==negation-removal== 18659 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #56461: <==negation-removal== 79227 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_b_a_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #28585: origin
                    (Ba_not_survivorat_s_p12)

                    ; #51480: <==closure== 28585 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #41378: <==negation-removal== 51480 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #54839: <==negation-removal== 28585 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_b_b_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #25881: <==closure== 74700 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #74700: origin
                    (Bb_not_survivorat_s_p12)

                    ; #71043: <==negation-removal== 25881 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #75153: <==negation-removal== 74700 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_b_c_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #57276: origin
                    (Bc_not_survivorat_s_p12)

                    ; #73334: <==closure== 57276 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #11555: <==negation-removal== 73334 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #81441: <==negation-removal== 57276 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_b_d_s
        :precondition (and (at_b_p12)
                           (leader_d)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #18659: <==closure== 79227 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #79227: origin
                    (Bd_not_survivorat_s_p12)

                    ; #11508: <==negation-removal== 18659 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #56461: <==negation-removal== 79227 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_c_a_s
        :precondition (and (at_c_p12)
                           (leader_a)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #28585: origin
                    (Ba_not_survivorat_s_p12)

                    ; #51480: <==closure== 28585 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #41378: <==negation-removal== 51480 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #54839: <==negation-removal== 28585 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_c_b_s
        :precondition (and (leader_b)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #25881: <==closure== 74700 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #74700: origin
                    (Bb_not_survivorat_s_p12)

                    ; #71043: <==negation-removal== 25881 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #75153: <==negation-removal== 74700 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_c_c_s
        :precondition (and (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (leader_c)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #57276: origin
                    (Bc_not_survivorat_s_p12)

                    ; #73334: <==closure== 57276 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #11555: <==negation-removal== 73334 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #81441: <==negation-removal== 57276 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_c_d_s
        :precondition (and (leader_d)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #18659: <==closure== 79227 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #79227: origin
                    (Bd_not_survivorat_s_p12)

                    ; #11508: <==negation-removal== 18659 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #56461: <==negation-removal== 79227 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_d_a_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (leader_a)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #28585: origin
                    (Ba_not_survivorat_s_p12)

                    ; #51480: <==closure== 28585 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #41378: <==negation-removal== 51480 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #54839: <==negation-removal== 28585 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_d_b_s
        :precondition (and (Bd_survivorat_s_p12)
                           (leader_b)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #25881: <==closure== 74700 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #74700: origin
                    (Bb_not_survivorat_s_p12)

                    ; #71043: <==negation-removal== 25881 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #75153: <==negation-removal== 74700 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_d_c_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (leader_c)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #57276: origin
                    (Bc_not_survivorat_s_p12)

                    ; #73334: <==closure== 57276 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #11555: <==negation-removal== 73334 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #81441: <==negation-removal== 57276 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_d_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (leader_d)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #18659: <==closure== 79227 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #79227: origin
                    (Bd_not_survivorat_s_p12)

                    ; #11508: <==negation-removal== 18659 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #56461: <==negation-removal== 79227 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p1_a_a_s
        :precondition (and (at_a_p1)
                           (leader_a)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #36139: <==closure== 89567 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #89567: origin
                    (Ba_not_survivorat_s_p1)

                    ; #17239: <==negation-removal== 89567 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86064: <==negation-removal== 36139 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #34724: origin
                    (Bb_not_survivorat_s_p1)

                    ; #72539: <==closure== 34724 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #70461: <==negation-removal== 34724 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #91522: <==negation-removal== 72539 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (leader_c)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #41175: origin
                    (Bc_not_survivorat_s_p1)

                    ; #89507: <==closure== 41175 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #20768: <==negation-removal== 41175 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #34629: <==negation-removal== 89507 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_a_d_s
        :precondition (and (at_a_p1)
                           (leader_d)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #42887: <==closure== 47673 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #47673: origin
                    (Bd_not_survivorat_s_p1)

                    ; #37931: <==negation-removal== 42887 (pos)
                    (not (Bd_survivorat_s_p1))

                    ; #55993: <==negation-removal== 47673 (pos)
                    (not (Pd_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a)
                           (at_b_p1))
        :effect (and
                    ; #36139: <==closure== 89567 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #89567: origin
                    (Ba_not_survivorat_s_p1)

                    ; #17239: <==negation-removal== 89567 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86064: <==negation-removal== 36139 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (leader_b)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #34724: origin
                    (Bb_not_survivorat_s_p1)

                    ; #72539: <==closure== 34724 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #70461: <==negation-removal== 34724 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #91522: <==negation-removal== 72539 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c)
                           (at_b_p1))
        :effect (and
                    ; #41175: origin
                    (Bc_not_survivorat_s_p1)

                    ; #89507: <==closure== 41175 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #20768: <==negation-removal== 41175 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #34629: <==negation-removal== 89507 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_b_d_s
        :precondition (and (Pb_survivorat_s_p1)
                           (leader_d)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #42887: <==closure== 47673 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #47673: origin
                    (Bd_not_survivorat_s_p1)

                    ; #37931: <==negation-removal== 42887 (pos)
                    (not (Bd_survivorat_s_p1))

                    ; #55993: <==negation-removal== 47673 (pos)
                    (not (Pd_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_a)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #36139: <==closure== 89567 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #89567: origin
                    (Ba_not_survivorat_s_p1)

                    ; #17239: <==negation-removal== 89567 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86064: <==negation-removal== 36139 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_b)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #34724: origin
                    (Bb_not_survivorat_s_p1)

                    ; #72539: <==closure== 34724 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #70461: <==negation-removal== 34724 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #91522: <==negation-removal== 72539 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_c)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #41175: origin
                    (Bc_not_survivorat_s_p1)

                    ; #89507: <==closure== 41175 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #20768: <==negation-removal== 41175 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #34629: <==negation-removal== 89507 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_c_d_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_d)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #42887: <==closure== 47673 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #47673: origin
                    (Bd_not_survivorat_s_p1)

                    ; #37931: <==negation-removal== 42887 (pos)
                    (not (Bd_survivorat_s_p1))

                    ; #55993: <==negation-removal== 47673 (pos)
                    (not (Pd_survivorat_s_p1))))

    (:action badcomm_p1_d_a_s
        :precondition (and (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (leader_a)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #36139: <==closure== 89567 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #89567: origin
                    (Ba_not_survivorat_s_p1)

                    ; #17239: <==negation-removal== 89567 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86064: <==negation-removal== 36139 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_d_b_s
        :precondition (and (Bd_survivorat_s_p1)
                           (leader_b)
                           (at_d_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #34724: origin
                    (Bb_not_survivorat_s_p1)

                    ; #72539: <==closure== 34724 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #70461: <==negation-removal== 34724 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #91522: <==negation-removal== 72539 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_d_c_s
        :precondition (and (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (leader_c)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #41175: origin
                    (Bc_not_survivorat_s_p1)

                    ; #89507: <==closure== 41175 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #20768: <==negation-removal== 41175 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #34629: <==negation-removal== 89507 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_d_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (leader_d)
                           (at_d_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #42887: <==closure== 47673 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #47673: origin
                    (Bd_not_survivorat_s_p1)

                    ; #37931: <==negation-removal== 42887 (pos)
                    (not (Bd_survivorat_s_p1))

                    ; #55993: <==negation-removal== 47673 (pos)
                    (not (Pd_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_a)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #30555: origin
                    (Ba_not_survivorat_s_p2)

                    ; #53294: <==closure== 30555 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #37820: <==negation-removal== 53294 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #67832: <==negation-removal== 30555 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_b))
        :effect (and
                    ; #45515: <==closure== 70620 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #70620: origin
                    (Bb_not_survivorat_s_p2)

                    ; #35465: <==negation-removal== 70620 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #50696: <==negation-removal== 45515 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_c)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #12781: origin
                    (Bc_not_survivorat_s_p2)

                    ; #76693: <==closure== 12781 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #44712: <==negation-removal== 12781 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #54241: <==negation-removal== 76693 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_a_d_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_d)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #84453: <==closure== 87407 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #87407: origin
                    (Bd_not_survivorat_s_p2)

                    ; #52524: <==negation-removal== 84453 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #55327: <==negation-removal== 87407 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #30555: origin
                    (Ba_not_survivorat_s_p2)

                    ; #53294: <==closure== 30555 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #37820: <==negation-removal== 53294 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #67832: <==negation-removal== 30555 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #45515: <==closure== 70620 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #70620: origin
                    (Bb_not_survivorat_s_p2)

                    ; #35465: <==negation-removal== 70620 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #50696: <==negation-removal== 45515 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #12781: origin
                    (Bc_not_survivorat_s_p2)

                    ; #76693: <==closure== 12781 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #44712: <==negation-removal== 12781 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #54241: <==negation-removal== 76693 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_b_d_s
        :precondition (and (Pb_survivorat_s_p2)
                           (leader_d)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #84453: <==closure== 87407 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #87407: origin
                    (Bd_not_survivorat_s_p2)

                    ; #52524: <==negation-removal== 84453 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #55327: <==negation-removal== 87407 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (leader_a)
                           (at_c_p2))
        :effect (and
                    ; #30555: origin
                    (Ba_not_survivorat_s_p2)

                    ; #53294: <==closure== 30555 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #37820: <==negation-removal== 53294 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #67832: <==negation-removal== 30555 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (leader_b)
                           (at_c_p2))
        :effect (and
                    ; #45515: <==closure== 70620 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #70620: origin
                    (Bb_not_survivorat_s_p2)

                    ; #35465: <==negation-removal== 70620 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #50696: <==negation-removal== 45515 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (leader_c)
                           (at_c_p2))
        :effect (and
                    ; #12781: origin
                    (Bc_not_survivorat_s_p2)

                    ; #76693: <==closure== 12781 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #44712: <==negation-removal== 12781 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #54241: <==negation-removal== 76693 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_c_d_s
        :precondition (and (leader_d)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #84453: <==closure== 87407 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #87407: origin
                    (Bd_not_survivorat_s_p2)

                    ; #52524: <==negation-removal== 84453 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #55327: <==negation-removal== 87407 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_d_a_s
        :precondition (and (leader_a)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #30555: origin
                    (Ba_not_survivorat_s_p2)

                    ; #53294: <==closure== 30555 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #37820: <==negation-removal== 53294 (pos)
                    (not (Ba_survivorat_s_p2))

                    ; #67832: <==negation-removal== 30555 (pos)
                    (not (Pa_survivorat_s_p2))))

    (:action badcomm_p2_d_b_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #45515: <==closure== 70620 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #70620: origin
                    (Bb_not_survivorat_s_p2)

                    ; #35465: <==negation-removal== 70620 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #50696: <==negation-removal== 45515 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_d_c_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (leader_c)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #12781: origin
                    (Bc_not_survivorat_s_p2)

                    ; #76693: <==closure== 12781 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #44712: <==negation-removal== 12781 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #54241: <==negation-removal== 76693 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_d_d_s
        :precondition (and (leader_d)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #84453: <==closure== 87407 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #87407: origin
                    (Bd_not_survivorat_s_p2)

                    ; #52524: <==negation-removal== 84453 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #55327: <==negation-removal== 87407 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (leader_a)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #13333: <==closure== 76270 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #76270: origin
                    (Ba_not_survivorat_s_p3)

                    ; #29113: <==negation-removal== 76270 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #58025: <==negation-removal== 13333 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #21131: origin
                    (Bb_not_survivorat_s_p3)

                    ; #43264: <==closure== 21131 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #12840: <==negation-removal== 21131 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #69863: <==negation-removal== 43264 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #40375: <==closure== 85165 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #85165: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16495: <==negation-removal== 40375 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #53353: <==negation-removal== 85165 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_a_d_s
        :precondition (and (Pa_survivorat_s_p3)
                           (leader_d)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #90572: origin
                    (Bd_not_survivorat_s_p3)

                    ; #91470: <==closure== 90572 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #62921: <==negation-removal== 91470 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #79812: <==negation-removal== 90572 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #13333: <==closure== 76270 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #76270: origin
                    (Ba_not_survivorat_s_p3)

                    ; #29113: <==negation-removal== 76270 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #58025: <==negation-removal== 13333 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #21131: origin
                    (Bb_not_survivorat_s_p3)

                    ; #43264: <==closure== 21131 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #12840: <==negation-removal== 21131 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #69863: <==negation-removal== 43264 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (leader_c)
                           (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #40375: <==closure== 85165 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #85165: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16495: <==negation-removal== 40375 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #53353: <==negation-removal== 85165 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_b_d_s
        :precondition (and (leader_d)
                           (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #90572: origin
                    (Bd_not_survivorat_s_p3)

                    ; #91470: <==closure== 90572 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #62921: <==negation-removal== 91470 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #79812: <==negation-removal== 90572 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #13333: <==closure== 76270 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #76270: origin
                    (Ba_not_survivorat_s_p3)

                    ; #29113: <==negation-removal== 76270 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #58025: <==negation-removal== 13333 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #21131: origin
                    (Bb_not_survivorat_s_p3)

                    ; #43264: <==closure== 21131 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #12840: <==negation-removal== 21131 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #69863: <==negation-removal== 43264 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #40375: <==closure== 85165 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #85165: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16495: <==negation-removal== 40375 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #53353: <==negation-removal== 85165 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_c_d_s
        :precondition (and (Bc_survivorat_s_p3)
                           (leader_d)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #90572: origin
                    (Bd_not_survivorat_s_p3)

                    ; #91470: <==closure== 90572 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #62921: <==negation-removal== 91470 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #79812: <==negation-removal== 90572 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_d_a_s
        :precondition (and (Bd_survivorat_s_p3)
                           (leader_a)
                           (Pd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #13333: <==closure== 76270 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #76270: origin
                    (Ba_not_survivorat_s_p3)

                    ; #29113: <==negation-removal== 76270 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #58025: <==negation-removal== 13333 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_d_b_s
        :precondition (and (Bd_survivorat_s_p3)
                           (leader_b)
                           (Pd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #21131: origin
                    (Bb_not_survivorat_s_p3)

                    ; #43264: <==closure== 21131 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #12840: <==negation-removal== 21131 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #69863: <==negation-removal== 43264 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_d_c_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (leader_c)
                           (at_d_p3))
        :effect (and
                    ; #40375: <==closure== 85165 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #85165: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16495: <==negation-removal== 40375 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #53353: <==negation-removal== 85165 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_d_d_s
        :precondition (and (leader_d)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #90572: origin
                    (Bd_not_survivorat_s_p3)

                    ; #91470: <==closure== 90572 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #62921: <==negation-removal== 91470 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #79812: <==negation-removal== 90572 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_a)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #41795: <==closure== 72870 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #72870: origin
                    (Ba_not_survivorat_s_p4)

                    ; #13140: <==negation-removal== 72870 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #88587: <==negation-removal== 41795 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_b)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #39637: origin
                    (Bb_not_survivorat_s_p4)

                    ; #66765: <==closure== 39637 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #69521: <==negation-removal== 66765 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #74832: <==negation-removal== 39637 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #79362: <==closure== 81716 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #81716: origin
                    (Bc_not_survivorat_s_p4)

                    ; #17099: <==negation-removal== 79362 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #90370: <==negation-removal== 81716 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_a_d_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_d)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #26049: origin
                    (Bd_not_survivorat_s_p4)

                    ; #50623: <==closure== 26049 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #41241: <==negation-removal== 50623 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #97796: <==negation-removal== 26049 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #41795: <==closure== 72870 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #72870: origin
                    (Ba_not_survivorat_s_p4)

                    ; #13140: <==negation-removal== 72870 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #88587: <==negation-removal== 41795 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b))
        :effect (and
                    ; #39637: origin
                    (Bb_not_survivorat_s_p4)

                    ; #66765: <==closure== 39637 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #69521: <==negation-removal== 66765 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #74832: <==negation-removal== 39637 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4))
        :effect (and
                    ; #79362: <==closure== 81716 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #81716: origin
                    (Bc_not_survivorat_s_p4)

                    ; #17099: <==negation-removal== 79362 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #90370: <==negation-removal== 81716 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_d_s
        :precondition (and (leader_d)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #26049: origin
                    (Bd_not_survivorat_s_p4)

                    ; #50623: <==closure== 26049 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #41241: <==negation-removal== 50623 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #97796: <==negation-removal== 26049 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_a)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #41795: <==closure== 72870 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #72870: origin
                    (Ba_not_survivorat_s_p4)

                    ; #13140: <==negation-removal== 72870 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #88587: <==negation-removal== 41795 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #39637: origin
                    (Bb_not_survivorat_s_p4)

                    ; #66765: <==closure== 39637 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #69521: <==negation-removal== 66765 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #74832: <==negation-removal== 39637 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #79362: <==closure== 81716 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #81716: origin
                    (Bc_not_survivorat_s_p4)

                    ; #17099: <==negation-removal== 79362 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #90370: <==negation-removal== 81716 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_d_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_d)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #26049: origin
                    (Bd_not_survivorat_s_p4)

                    ; #50623: <==closure== 26049 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #41241: <==negation-removal== 50623 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #97796: <==negation-removal== 26049 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_d_a_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #41795: <==closure== 72870 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #72870: origin
                    (Ba_not_survivorat_s_p4)

                    ; #13140: <==negation-removal== 72870 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #88587: <==negation-removal== 41795 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_d_b_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #39637: origin
                    (Bb_not_survivorat_s_p4)

                    ; #66765: <==closure== 39637 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #69521: <==negation-removal== 66765 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #74832: <==negation-removal== 39637 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_d_c_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #79362: <==closure== 81716 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #81716: origin
                    (Bc_not_survivorat_s_p4)

                    ; #17099: <==negation-removal== 79362 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #90370: <==negation-removal== 81716 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_d_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (leader_d))
        :effect (and
                    ; #26049: origin
                    (Bd_not_survivorat_s_p4)

                    ; #50623: <==closure== 26049 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #41241: <==negation-removal== 50623 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #97796: <==negation-removal== 26049 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #27641: <==closure== 88033 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #88033: origin
                    (Ba_not_survivorat_s_p5)

                    ; #41456: <==negation-removal== 27641 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #87765: <==negation-removal== 88033 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #12943: <==closure== 43025 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #43025: origin
                    (Bb_not_survivorat_s_p5)

                    ; #29953: <==negation-removal== 43025 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #39941: <==negation-removal== 12943 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #60147: origin
                    (Bc_not_survivorat_s_p5)

                    ; #89594: <==closure== 60147 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #38534: <==negation-removal== 60147 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #88001: <==negation-removal== 89594 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_a_d_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #42231: origin
                    (Bd_not_survivorat_s_p5)

                    ; #77593: <==closure== 42231 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #64858: <==negation-removal== 77593 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #81808: <==negation-removal== 42231 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (leader_a)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #27641: <==closure== 88033 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #88033: origin
                    (Ba_not_survivorat_s_p5)

                    ; #41456: <==negation-removal== 27641 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #87765: <==negation-removal== 88033 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #12943: <==closure== 43025 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #43025: origin
                    (Bb_not_survivorat_s_p5)

                    ; #29953: <==negation-removal== 43025 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #39941: <==negation-removal== 12943 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (leader_c)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #60147: origin
                    (Bc_not_survivorat_s_p5)

                    ; #89594: <==closure== 60147 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #38534: <==negation-removal== 60147 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #88001: <==negation-removal== 89594 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_b_d_s
        :precondition (and (leader_d)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #42231: origin
                    (Bd_not_survivorat_s_p5)

                    ; #77593: <==closure== 42231 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #64858: <==negation-removal== 77593 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #81808: <==negation-removal== 42231 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #27641: <==closure== 88033 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #88033: origin
                    (Ba_not_survivorat_s_p5)

                    ; #41456: <==negation-removal== 27641 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #87765: <==negation-removal== 88033 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #12943: <==closure== 43025 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #43025: origin
                    (Bb_not_survivorat_s_p5)

                    ; #29953: <==negation-removal== 43025 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #39941: <==negation-removal== 12943 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #60147: origin
                    (Bc_not_survivorat_s_p5)

                    ; #89594: <==closure== 60147 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #38534: <==negation-removal== 60147 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #88001: <==negation-removal== 89594 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_c_d_s
        :precondition (and (leader_d)
                           (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #42231: origin
                    (Bd_not_survivorat_s_p5)

                    ; #77593: <==closure== 42231 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #64858: <==negation-removal== 77593 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #81808: <==negation-removal== 42231 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p5_d_a_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (leader_a)
                           (at_d_p5))
        :effect (and
                    ; #27641: <==closure== 88033 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #88033: origin
                    (Ba_not_survivorat_s_p5)

                    ; #41456: <==negation-removal== 27641 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #87765: <==negation-removal== 88033 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_d_b_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_b))
        :effect (and
                    ; #12943: <==closure== 43025 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #43025: origin
                    (Bb_not_survivorat_s_p5)

                    ; #29953: <==negation-removal== 43025 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #39941: <==negation-removal== 12943 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_d_c_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (leader_c)
                           (at_d_p5))
        :effect (and
                    ; #60147: origin
                    (Bc_not_survivorat_s_p5)

                    ; #89594: <==closure== 60147 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #38534: <==negation-removal== 60147 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #88001: <==negation-removal== 89594 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_d_d_s
        :precondition (and (leader_d)
                           (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #42231: origin
                    (Bd_not_survivorat_s_p5)

                    ; #77593: <==closure== 42231 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #64858: <==negation-removal== 77593 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #81808: <==negation-removal== 42231 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #29598: origin
                    (Ba_not_survivorat_s_p6)

                    ; #76550: <==closure== 29598 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #17259: <==negation-removal== 29598 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #56513: <==negation-removal== 76550 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #22642: <==closure== 91501 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #91501: origin
                    (Bb_not_survivorat_s_p6)

                    ; #40217: <==negation-removal== 22642 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #62922: <==negation-removal== 91501 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_c)
                           (at_a_p6))
        :effect (and
                    ; #25986: origin
                    (Bc_not_survivorat_s_p6)

                    ; #48344: <==closure== 25986 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #65174: <==negation-removal== 48344 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #91083: <==negation-removal== 25986 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_a_d_s
        :precondition (and (leader_d)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #20441: origin
                    (Bd_not_survivorat_s_p6)

                    ; #43815: <==closure== 20441 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #30865: <==negation-removal== 43815 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #69023: <==negation-removal== 20441 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6))
        :effect (and
                    ; #29598: origin
                    (Ba_not_survivorat_s_p6)

                    ; #76550: <==closure== 29598 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #17259: <==negation-removal== 29598 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #56513: <==negation-removal== 76550 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_b))
        :effect (and
                    ; #22642: <==closure== 91501 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #91501: origin
                    (Bb_not_survivorat_s_p6)

                    ; #40217: <==negation-removal== 22642 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #62922: <==negation-removal== 91501 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c)
                           (at_b_p6))
        :effect (and
                    ; #25986: origin
                    (Bc_not_survivorat_s_p6)

                    ; #48344: <==closure== 25986 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #65174: <==negation-removal== 48344 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #91083: <==negation-removal== 25986 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_d_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_d))
        :effect (and
                    ; #20441: origin
                    (Bd_not_survivorat_s_p6)

                    ; #43815: <==closure== 20441 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #30865: <==negation-removal== 43815 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #69023: <==negation-removal== 20441 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_a)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #29598: origin
                    (Ba_not_survivorat_s_p6)

                    ; #76550: <==closure== 29598 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #17259: <==negation-removal== 29598 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #56513: <==negation-removal== 76550 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #22642: <==closure== 91501 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #91501: origin
                    (Bb_not_survivorat_s_p6)

                    ; #40217: <==negation-removal== 22642 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #62922: <==negation-removal== 91501 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_c)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #25986: origin
                    (Bc_not_survivorat_s_p6)

                    ; #48344: <==closure== 25986 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #65174: <==negation-removal== 48344 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #91083: <==negation-removal== 25986 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_d_s
        :precondition (and (leader_d)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #20441: origin
                    (Bd_not_survivorat_s_p6)

                    ; #43815: <==closure== 20441 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #30865: <==negation-removal== 43815 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #69023: <==negation-removal== 20441 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p6_d_a_s
        :precondition (and (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_a)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #29598: origin
                    (Ba_not_survivorat_s_p6)

                    ; #76550: <==closure== 29598 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #17259: <==negation-removal== 29598 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #56513: <==negation-removal== 76550 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_d_b_s
        :precondition (and (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #22642: <==closure== 91501 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #91501: origin
                    (Bb_not_survivorat_s_p6)

                    ; #40217: <==negation-removal== 22642 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #62922: <==negation-removal== 91501 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_d_c_s
        :precondition (and (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_c)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #25986: origin
                    (Bc_not_survivorat_s_p6)

                    ; #48344: <==closure== 25986 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #65174: <==negation-removal== 48344 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #91083: <==negation-removal== 25986 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_d_d_s
        :precondition (and (at_d_p6)
                           (leader_d)
                           (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #20441: origin
                    (Bd_not_survivorat_s_p6)

                    ; #43815: <==closure== 20441 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #30865: <==negation-removal== 43815 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #69023: <==negation-removal== 20441 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #37996: <==closure== 50526 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #50526: origin
                    (Ba_not_survivorat_s_p7)

                    ; #23422: <==negation-removal== 37996 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #46733: <==negation-removal== 50526 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #43143: <==closure== 64438 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #64438: origin
                    (Bb_not_survivorat_s_p7)

                    ; #77669: <==negation-removal== 64438 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #78187: <==negation-removal== 43143 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #14565: origin
                    (Bc_not_survivorat_s_p7)

                    ; #29060: <==closure== 14565 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #26550: <==negation-removal== 14565 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #50541: <==negation-removal== 29060 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_a_d_s
        :precondition (and (leader_d)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #23183: <==closure== 41057 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #41057: origin
                    (Bd_not_survivorat_s_p7)

                    ; #74126: <==negation-removal== 23183 (pos)
                    (not (Bd_survivorat_s_p7))

                    ; #82696: <==negation-removal== 41057 (pos)
                    (not (Pd_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (at_b_p7)
                           (leader_a)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #37996: <==closure== 50526 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #50526: origin
                    (Ba_not_survivorat_s_p7)

                    ; #23422: <==negation-removal== 37996 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #46733: <==negation-removal== 50526 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #43143: <==closure== 64438 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #64438: origin
                    (Bb_not_survivorat_s_p7)

                    ; #77669: <==negation-removal== 64438 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #78187: <==negation-removal== 43143 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (leader_c)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #14565: origin
                    (Bc_not_survivorat_s_p7)

                    ; #29060: <==closure== 14565 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #26550: <==negation-removal== 14565 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #50541: <==negation-removal== 29060 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_b_d_s
        :precondition (and (leader_d)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #23183: <==closure== 41057 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #41057: origin
                    (Bd_not_survivorat_s_p7)

                    ; #74126: <==negation-removal== 23183 (pos)
                    (not (Bd_survivorat_s_p7))

                    ; #82696: <==negation-removal== 41057 (pos)
                    (not (Pd_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #37996: <==closure== 50526 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #50526: origin
                    (Ba_not_survivorat_s_p7)

                    ; #23422: <==negation-removal== 37996 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #46733: <==negation-removal== 50526 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (leader_b)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #43143: <==closure== 64438 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #64438: origin
                    (Bb_not_survivorat_s_p7)

                    ; #77669: <==negation-removal== 64438 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #78187: <==negation-removal== 43143 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (leader_c)
                           (at_c_p7))
        :effect (and
                    ; #14565: origin
                    (Bc_not_survivorat_s_p7)

                    ; #29060: <==closure== 14565 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #26550: <==negation-removal== 14565 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #50541: <==negation-removal== 29060 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_c_d_s
        :precondition (and (Pc_survivorat_s_p7)
                           (leader_d)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #23183: <==closure== 41057 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #41057: origin
                    (Bd_not_survivorat_s_p7)

                    ; #74126: <==negation-removal== 23183 (pos)
                    (not (Bd_survivorat_s_p7))

                    ; #82696: <==negation-removal== 41057 (pos)
                    (not (Pd_survivorat_s_p7))))

    (:action badcomm_p7_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #37996: <==closure== 50526 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #50526: origin
                    (Ba_not_survivorat_s_p7)

                    ; #23422: <==negation-removal== 37996 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #46733: <==negation-removal== 50526 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_d_b_s
        :precondition (and (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7)
                           (leader_b))
        :effect (and
                    ; #43143: <==closure== 64438 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #64438: origin
                    (Bb_not_survivorat_s_p7)

                    ; #77669: <==negation-removal== 64438 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #78187: <==negation-removal== 43143 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_d_c_s
        :precondition (and (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7)
                           (leader_c))
        :effect (and
                    ; #14565: origin
                    (Bc_not_survivorat_s_p7)

                    ; #29060: <==closure== 14565 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #26550: <==negation-removal== 14565 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #50541: <==negation-removal== 29060 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_d_d_s
        :precondition (and (leader_d)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #23183: <==closure== 41057 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #41057: origin
                    (Bd_not_survivorat_s_p7)

                    ; #74126: <==negation-removal== 23183 (pos)
                    (not (Bd_survivorat_s_p7))

                    ; #82696: <==negation-removal== 41057 (pos)
                    (not (Pd_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (leader_a)
                           (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #24636: origin
                    (Ba_not_survivorat_s_p8)

                    ; #38564: <==closure== 24636 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #31840: <==negation-removal== 24636 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #88401: <==negation-removal== 38564 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (leader_b)
                           (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #10829: <==closure== 42426 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #42426: origin
                    (Bb_not_survivorat_s_p8)

                    ; #30007: <==negation-removal== 42426 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #83186: <==negation-removal== 10829 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (leader_c)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #65360: <==closure== 69131 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #69131: origin
                    (Bc_not_survivorat_s_p8)

                    ; #20450: <==negation-removal== 69131 (pos)
                    (not (Pc_survivorat_s_p8))

                    ; #80472: <==negation-removal== 65360 (pos)
                    (not (Bc_survivorat_s_p8))))

    (:action badcomm_p8_a_d_s
        :precondition (and (leader_d)
                           (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #28906: origin
                    (Bd_not_survivorat_s_p8)

                    ; #44159: <==closure== 28906 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #14835: <==negation-removal== 44159 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #77246: <==negation-removal== 28906 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_a)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #24636: origin
                    (Ba_not_survivorat_s_p8)

                    ; #38564: <==closure== 24636 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #31840: <==negation-removal== 24636 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #88401: <==negation-removal== 38564 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #10829: <==closure== 42426 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #42426: origin
                    (Bb_not_survivorat_s_p8)

                    ; #30007: <==negation-removal== 42426 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #83186: <==negation-removal== 10829 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_c)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #65360: <==closure== 69131 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #69131: origin
                    (Bc_not_survivorat_s_p8)

                    ; #20450: <==negation-removal== 69131 (pos)
                    (not (Pc_survivorat_s_p8))

                    ; #80472: <==negation-removal== 65360 (pos)
                    (not (Bc_survivorat_s_p8))))

    (:action badcomm_p8_b_d_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_d)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #28906: origin
                    (Bd_not_survivorat_s_p8)

                    ; #44159: <==closure== 28906 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #14835: <==negation-removal== 44159 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #77246: <==negation-removal== 28906 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (leader_a)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #24636: origin
                    (Ba_not_survivorat_s_p8)

                    ; #38564: <==closure== 24636 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #31840: <==negation-removal== 24636 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #88401: <==negation-removal== 38564 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (leader_b)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #10829: <==closure== 42426 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #42426: origin
                    (Bb_not_survivorat_s_p8)

                    ; #30007: <==negation-removal== 42426 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #83186: <==negation-removal== 10829 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_c)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #65360: <==closure== 69131 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #69131: origin
                    (Bc_not_survivorat_s_p8)

                    ; #20450: <==negation-removal== 69131 (pos)
                    (not (Pc_survivorat_s_p8))

                    ; #80472: <==negation-removal== 65360 (pos)
                    (not (Bc_survivorat_s_p8))))

    (:action badcomm_p8_c_d_s
        :precondition (and (leader_d)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #28906: origin
                    (Bd_not_survivorat_s_p8)

                    ; #44159: <==closure== 28906 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #14835: <==negation-removal== 44159 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #77246: <==negation-removal== 28906 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_d_a_s
        :precondition (and (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (leader_a)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #24636: origin
                    (Ba_not_survivorat_s_p8)

                    ; #38564: <==closure== 24636 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #31840: <==negation-removal== 24636 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #88401: <==negation-removal== 38564 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_d_b_s
        :precondition (and (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #10829: <==closure== 42426 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #42426: origin
                    (Bb_not_survivorat_s_p8)

                    ; #30007: <==negation-removal== 42426 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #83186: <==negation-removal== 10829 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_d_c_s
        :precondition (and (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #65360: <==closure== 69131 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #69131: origin
                    (Bc_not_survivorat_s_p8)

                    ; #20450: <==negation-removal== 69131 (pos)
                    (not (Pc_survivorat_s_p8))

                    ; #80472: <==negation-removal== 65360 (pos)
                    (not (Bc_survivorat_s_p8))))

    (:action badcomm_p8_d_d_s
        :precondition (and (Pd_survivorat_s_p8)
                           (leader_d)
                           (at_d_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #28906: origin
                    (Bd_not_survivorat_s_p8)

                    ; #44159: <==closure== 28906 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #14835: <==negation-removal== 44159 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #77246: <==negation-removal== 28906 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_a)
                           (at_a_p9))
        :effect (and
                    ; #64227: origin
                    (Ba_not_survivorat_s_p9)

                    ; #98830: <==closure== 64227 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #45390: <==negation-removal== 98830 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #80306: <==negation-removal== 64227 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (Ba_survivorat_s_p9)
                           (leader_b)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #61816: origin
                    (Bb_not_survivorat_s_p9)

                    ; #72923: <==closure== 61816 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #22629: <==negation-removal== 61816 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #80684: <==negation-removal== 72923 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #11924: <==closure== 46497 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #46497: origin
                    (Bc_not_survivorat_s_p9)

                    ; #21721: <==negation-removal== 46497 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #70360: <==negation-removal== 11924 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_a_d_s
        :precondition (and (Ba_survivorat_s_p9)
                           (leader_d)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #19078: origin
                    (Bd_not_survivorat_s_p9)

                    ; #32780: <==closure== 19078 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #37800: <==negation-removal== 32780 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #42325: <==negation-removal== 19078 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #64227: origin
                    (Ba_not_survivorat_s_p9)

                    ; #98830: <==closure== 64227 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #45390: <==negation-removal== 98830 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #80306: <==negation-removal== 64227 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_b)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #61816: origin
                    (Bb_not_survivorat_s_p9)

                    ; #72923: <==closure== 61816 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #22629: <==negation-removal== 61816 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #80684: <==negation-removal== 72923 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #11924: <==closure== 46497 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #46497: origin
                    (Bc_not_survivorat_s_p9)

                    ; #21721: <==negation-removal== 46497 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #70360: <==negation-removal== 11924 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_d_s
        :precondition (and (leader_d)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #19078: origin
                    (Bd_not_survivorat_s_p9)

                    ; #32780: <==closure== 19078 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #37800: <==negation-removal== 32780 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #42325: <==negation-removal== 19078 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #64227: origin
                    (Ba_not_survivorat_s_p9)

                    ; #98830: <==closure== 64227 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #45390: <==negation-removal== 98830 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #80306: <==negation-removal== 64227 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #61816: origin
                    (Bb_not_survivorat_s_p9)

                    ; #72923: <==closure== 61816 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #22629: <==negation-removal== 61816 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #80684: <==negation-removal== 72923 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #11924: <==closure== 46497 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #46497: origin
                    (Bc_not_survivorat_s_p9)

                    ; #21721: <==negation-removal== 46497 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #70360: <==negation-removal== 11924 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_d_s
        :precondition (and (at_c_p9)
                           (leader_d)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #19078: origin
                    (Bd_not_survivorat_s_p9)

                    ; #32780: <==closure== 19078 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #37800: <==negation-removal== 32780 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #42325: <==negation-removal== 19078 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action badcomm_p9_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (at_d_p9))
        :effect (and
                    ; #64227: origin
                    (Ba_not_survivorat_s_p9)

                    ; #98830: <==closure== 64227 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #45390: <==negation-removal== 98830 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #80306: <==negation-removal== 64227 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_d_b_s
        :precondition (and (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (at_d_p9)
                           (leader_b))
        :effect (and
                    ; #61816: origin
                    (Bb_not_survivorat_s_p9)

                    ; #72923: <==closure== 61816 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #22629: <==negation-removal== 61816 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #80684: <==negation-removal== 72923 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_d_c_s
        :precondition (and (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (leader_c)
                           (at_d_p9))
        :effect (and
                    ; #11924: <==closure== 46497 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #46497: origin
                    (Bc_not_survivorat_s_p9)

                    ; #21721: <==negation-removal== 46497 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #70360: <==negation-removal== 11924 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_d_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (leader_d)
                           (Bd_survivorat_s_p9)
                           (at_d_p9))
        :effect (and
                    ; #19078: origin
                    (Bd_not_survivorat_s_p9)

                    ; #32780: <==closure== 19078 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #37800: <==negation-removal== 32780 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #42325: <==negation-removal== 19078 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action comm_p10_a_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #58635: <==closure== 98358 (pos)
                    (Pa_survivorat_s_p10)

                    ; #98358: origin
                    (Ba_survivorat_s_p10)

                    ; #64661: <==negation-removal== 58635 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #78394: <==negation-removal== 98358 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #52683: <==closure== 75067 (pos)
                    (Pb_survivorat_s_p10)

                    ; #75067: origin
                    (Bb_survivorat_s_p10)

                    ; #34728: <==negation-removal== 52683 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #82563: <==negation-removal== 75067 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #90462: origin
                    (Bc_survivorat_s_p10)

                    ; #91002: <==closure== 90462 (pos)
                    (Pc_survivorat_s_p10)

                    ; #30545: <==negation-removal== 90462 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #88984: <==negation-removal== 91002 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_a_d_s
        :precondition (and (Pa_survivorat_s_p10)
                           (leader_d)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #64408: <==closure== 68282 (pos)
                    (Pd_survivorat_s_p10)

                    ; #68282: origin
                    (Bd_survivorat_s_p10)

                    ; #53293: <==negation-removal== 64408 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #77084: <==negation-removal== 68282 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_a)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #58635: <==closure== 98358 (pos)
                    (Pa_survivorat_s_p10)

                    ; #98358: origin
                    (Ba_survivorat_s_p10)

                    ; #64661: <==negation-removal== 58635 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #78394: <==negation-removal== 98358 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #52683: <==closure== 75067 (pos)
                    (Pb_survivorat_s_p10)

                    ; #75067: origin
                    (Bb_survivorat_s_p10)

                    ; #34728: <==negation-removal== 52683 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #82563: <==negation-removal== 75067 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_c)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #90462: origin
                    (Bc_survivorat_s_p10)

                    ; #91002: <==closure== 90462 (pos)
                    (Pc_survivorat_s_p10)

                    ; #30545: <==negation-removal== 90462 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #88984: <==negation-removal== 91002 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_d_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_d)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #64408: <==closure== 68282 (pos)
                    (Pd_survivorat_s_p10)

                    ; #68282: origin
                    (Bd_survivorat_s_p10)

                    ; #53293: <==negation-removal== 64408 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #77084: <==negation-removal== 68282 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (at_c_p10)
                           (leader_a)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #58635: <==closure== 98358 (pos)
                    (Pa_survivorat_s_p10)

                    ; #98358: origin
                    (Ba_survivorat_s_p10)

                    ; #64661: <==negation-removal== 58635 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #78394: <==negation-removal== 98358 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (at_c_p10)
                           (leader_b)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #52683: <==closure== 75067 (pos)
                    (Pb_survivorat_s_p10)

                    ; #75067: origin
                    (Bb_survivorat_s_p10)

                    ; #34728: <==negation-removal== 52683 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #82563: <==negation-removal== 75067 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (at_c_p10)
                           (leader_c)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #90462: origin
                    (Bc_survivorat_s_p10)

                    ; #91002: <==closure== 90462 (pos)
                    (Pc_survivorat_s_p10)

                    ; #30545: <==negation-removal== 90462 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #88984: <==negation-removal== 91002 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_d_s
        :precondition (and (leader_d)
                           (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #64408: <==closure== 68282 (pos)
                    (Pd_survivorat_s_p10)

                    ; #68282: origin
                    (Bd_survivorat_s_p10)

                    ; #53293: <==negation-removal== 64408 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #77084: <==negation-removal== 68282 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #58635: <==closure== 98358 (pos)
                    (Pa_survivorat_s_p10)

                    ; #98358: origin
                    (Ba_survivorat_s_p10)

                    ; #64661: <==negation-removal== 58635 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #78394: <==negation-removal== 98358 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_d_b_s
        :precondition (and (leader_b)
                           (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #52683: <==closure== 75067 (pos)
                    (Pb_survivorat_s_p10)

                    ; #75067: origin
                    (Bb_survivorat_s_p10)

                    ; #34728: <==negation-removal== 52683 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #82563: <==negation-removal== 75067 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_d_c_s
        :precondition (and (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_c)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #90462: origin
                    (Bc_survivorat_s_p10)

                    ; #91002: <==closure== 90462 (pos)
                    (Pc_survivorat_s_p10)

                    ; #30545: <==negation-removal== 90462 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #88984: <==negation-removal== 91002 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_d_d_s
        :precondition (and (leader_d)
                           (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #64408: <==closure== 68282 (pos)
                    (Pd_survivorat_s_p10)

                    ; #68282: origin
                    (Bd_survivorat_s_p10)

                    ; #53293: <==negation-removal== 64408 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #77084: <==negation-removal== 68282 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #77776: <==closure== 78641 (pos)
                    (Pa_survivorat_s_p11)

                    ; #78641: origin
                    (Ba_survivorat_s_p11)

                    ; #10634: <==negation-removal== 77776 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #74735: <==negation-removal== 78641 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #64300: <==closure== 72631 (pos)
                    (Pb_survivorat_s_p11)

                    ; #72631: origin
                    (Bb_survivorat_s_p11)

                    ; #42304: <==negation-removal== 72631 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #48014: <==negation-removal== 64300 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #14628: origin
                    (Bc_survivorat_s_p11)

                    ; #24344: <==closure== 14628 (pos)
                    (Pc_survivorat_s_p11)

                    ; #11648: <==negation-removal== 14628 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #63493: <==negation-removal== 24344 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_a_d_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_d))
        :effect (and
                    ; #52167: origin
                    (Bd_survivorat_s_p11)

                    ; #67218: <==closure== 52167 (pos)
                    (Pd_survivorat_s_p11)

                    ; #40728: <==negation-removal== 52167 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #67516: <==negation-removal== 67218 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (Pb_survivorat_s_p11)
                           (leader_a)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #77776: <==closure== 78641 (pos)
                    (Pa_survivorat_s_p11)

                    ; #78641: origin
                    (Ba_survivorat_s_p11)

                    ; #10634: <==negation-removal== 77776 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #74735: <==negation-removal== 78641 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (leader_b)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #64300: <==closure== 72631 (pos)
                    (Pb_survivorat_s_p11)

                    ; #72631: origin
                    (Bb_survivorat_s_p11)

                    ; #42304: <==negation-removal== 72631 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #48014: <==negation-removal== 64300 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (Pb_survivorat_s_p11)
                           (leader_c)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #14628: origin
                    (Bc_survivorat_s_p11)

                    ; #24344: <==closure== 14628 (pos)
                    (Pc_survivorat_s_p11)

                    ; #11648: <==negation-removal== 14628 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #63493: <==negation-removal== 24344 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_b_d_s
        :precondition (and (leader_d)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #52167: origin
                    (Bd_survivorat_s_p11)

                    ; #67218: <==closure== 52167 (pos)
                    (Pd_survivorat_s_p11)

                    ; #40728: <==negation-removal== 52167 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #67516: <==negation-removal== 67218 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (leader_a)
                           (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #77776: <==closure== 78641 (pos)
                    (Pa_survivorat_s_p11)

                    ; #78641: origin
                    (Ba_survivorat_s_p11)

                    ; #10634: <==negation-removal== 77776 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #74735: <==negation-removal== 78641 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (at_c_p11)
                           (leader_b)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #64300: <==closure== 72631 (pos)
                    (Pb_survivorat_s_p11)

                    ; #72631: origin
                    (Bb_survivorat_s_p11)

                    ; #42304: <==negation-removal== 72631 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #48014: <==negation-removal== 64300 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (leader_c)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #14628: origin
                    (Bc_survivorat_s_p11)

                    ; #24344: <==closure== 14628 (pos)
                    (Pc_survivorat_s_p11)

                    ; #11648: <==negation-removal== 14628 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #63493: <==negation-removal== 24344 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_c_d_s
        :precondition (and (at_c_p11)
                           (leader_d)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #52167: origin
                    (Bd_survivorat_s_p11)

                    ; #67218: <==closure== 52167 (pos)
                    (Pd_survivorat_s_p11)

                    ; #40728: <==negation-removal== 52167 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #67516: <==negation-removal== 67218 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_d_a_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (leader_a)
                           (at_d_p11))
        :effect (and
                    ; #77776: <==closure== 78641 (pos)
                    (Pa_survivorat_s_p11)

                    ; #78641: origin
                    (Ba_survivorat_s_p11)

                    ; #10634: <==negation-removal== 77776 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #74735: <==negation-removal== 78641 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_d_b_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (leader_b)
                           (at_d_p11))
        :effect (and
                    ; #64300: <==closure== 72631 (pos)
                    (Pb_survivorat_s_p11)

                    ; #72631: origin
                    (Bb_survivorat_s_p11)

                    ; #42304: <==negation-removal== 72631 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #48014: <==negation-removal== 64300 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_d_c_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (leader_c)
                           (at_d_p11))
        :effect (and
                    ; #14628: origin
                    (Bc_survivorat_s_p11)

                    ; #24344: <==closure== 14628 (pos)
                    (Pc_survivorat_s_p11)

                    ; #11648: <==negation-removal== 14628 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #63493: <==negation-removal== 24344 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_d_d_s
        :precondition (and (leader_d)
                           (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #52167: origin
                    (Bd_survivorat_s_p11)

                    ; #67218: <==closure== 52167 (pos)
                    (Pd_survivorat_s_p11)

                    ; #40728: <==negation-removal== 52167 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #67516: <==negation-removal== 67218 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_a))
        :effect (and
                    ; #41378: origin
                    (Ba_survivorat_s_p12)

                    ; #54839: <==closure== 41378 (pos)
                    (Pa_survivorat_s_p12)

                    ; #28585: <==negation-removal== 54839 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #51480: <==negation-removal== 41378 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_b))
        :effect (and
                    ; #71043: origin
                    (Bb_survivorat_s_p12)

                    ; #75153: <==closure== 71043 (pos)
                    (Pb_survivorat_s_p12)

                    ; #25881: <==negation-removal== 71043 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #74700: <==negation-removal== 75153 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_c))
        :effect (and
                    ; #11555: origin
                    (Bc_survivorat_s_p12)

                    ; #81441: <==closure== 11555 (pos)
                    (Pc_survivorat_s_p12)

                    ; #57276: <==negation-removal== 81441 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #73334: <==negation-removal== 11555 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_a_d_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_d)
                           (at_a_p12))
        :effect (and
                    ; #11508: origin
                    (Bd_survivorat_s_p12)

                    ; #56461: <==closure== 11508 (pos)
                    (Pd_survivorat_s_p12)

                    ; #18659: <==negation-removal== 11508 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #79227: <==negation-removal== 56461 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #41378: origin
                    (Ba_survivorat_s_p12)

                    ; #54839: <==closure== 41378 (pos)
                    (Pa_survivorat_s_p12)

                    ; #28585: <==negation-removal== 54839 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #51480: <==negation-removal== 41378 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #71043: origin
                    (Bb_survivorat_s_p12)

                    ; #75153: <==closure== 71043 (pos)
                    (Pb_survivorat_s_p12)

                    ; #25881: <==negation-removal== 71043 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #74700: <==negation-removal== 75153 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #11555: origin
                    (Bc_survivorat_s_p12)

                    ; #81441: <==closure== 11555 (pos)
                    (Pc_survivorat_s_p12)

                    ; #57276: <==negation-removal== 81441 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #73334: <==negation-removal== 11555 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_d_s
        :precondition (and (at_b_p12)
                           (leader_d)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #11508: origin
                    (Bd_survivorat_s_p12)

                    ; #56461: <==closure== 11508 (pos)
                    (Pd_survivorat_s_p12)

                    ; #18659: <==negation-removal== 11508 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #79227: <==negation-removal== 56461 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (at_c_p12)
                           (leader_a)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #41378: origin
                    (Ba_survivorat_s_p12)

                    ; #54839: <==closure== 41378 (pos)
                    (Pa_survivorat_s_p12)

                    ; #28585: <==negation-removal== 54839 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #51480: <==negation-removal== 41378 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (leader_b)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #71043: origin
                    (Bb_survivorat_s_p12)

                    ; #75153: <==closure== 71043 (pos)
                    (Pb_survivorat_s_p12)

                    ; #25881: <==negation-removal== 71043 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #74700: <==negation-removal== 75153 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (leader_c)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #11555: origin
                    (Bc_survivorat_s_p12)

                    ; #81441: <==closure== 11555 (pos)
                    (Pc_survivorat_s_p12)

                    ; #57276: <==negation-removal== 81441 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #73334: <==negation-removal== 11555 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_d_s
        :precondition (and (leader_d)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #11508: origin
                    (Bd_survivorat_s_p12)

                    ; #56461: <==closure== 11508 (pos)
                    (Pd_survivorat_s_p12)

                    ; #18659: <==negation-removal== 11508 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #79227: <==negation-removal== 56461 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_d_a_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (leader_a)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #41378: origin
                    (Ba_survivorat_s_p12)

                    ; #54839: <==closure== 41378 (pos)
                    (Pa_survivorat_s_p12)

                    ; #28585: <==negation-removal== 54839 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #51480: <==negation-removal== 41378 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_d_b_s
        :precondition (and (Bd_survivorat_s_p12)
                           (leader_b)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #71043: origin
                    (Bb_survivorat_s_p12)

                    ; #75153: <==closure== 71043 (pos)
                    (Pb_survivorat_s_p12)

                    ; #25881: <==negation-removal== 71043 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #74700: <==negation-removal== 75153 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_d_c_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (leader_c)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #11555: origin
                    (Bc_survivorat_s_p12)

                    ; #81441: <==closure== 11555 (pos)
                    (Pc_survivorat_s_p12)

                    ; #57276: <==negation-removal== 81441 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #73334: <==negation-removal== 11555 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_d_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (leader_d)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #11508: origin
                    (Bd_survivorat_s_p12)

                    ; #56461: <==closure== 11508 (pos)
                    (Pd_survivorat_s_p12)

                    ; #18659: <==negation-removal== 11508 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #79227: <==negation-removal== 56461 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (at_a_p1)
                           (leader_a)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #17239: <==closure== 86064 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86064: origin
                    (Ba_survivorat_s_p1)

                    ; #36139: <==negation-removal== 86064 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #89567: <==negation-removal== 17239 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #70461: <==closure== 91522 (pos)
                    (Pb_survivorat_s_p1)

                    ; #91522: origin
                    (Bb_survivorat_s_p1)

                    ; #34724: <==negation-removal== 70461 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #72539: <==negation-removal== 91522 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (leader_c)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #20768: <==closure== 34629 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34629: origin
                    (Bc_survivorat_s_p1)

                    ; #41175: <==negation-removal== 20768 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89507: <==negation-removal== 34629 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_a_d_s
        :precondition (and (at_a_p1)
                           (leader_d)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #37931: origin
                    (Bd_survivorat_s_p1)

                    ; #55993: <==closure== 37931 (pos)
                    (Pd_survivorat_s_p1)

                    ; #42887: <==negation-removal== 37931 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #47673: <==negation-removal== 55993 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a)
                           (at_b_p1))
        :effect (and
                    ; #17239: <==closure== 86064 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86064: origin
                    (Ba_survivorat_s_p1)

                    ; #36139: <==negation-removal== 86064 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #89567: <==negation-removal== 17239 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (leader_b)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #70461: <==closure== 91522 (pos)
                    (Pb_survivorat_s_p1)

                    ; #91522: origin
                    (Bb_survivorat_s_p1)

                    ; #34724: <==negation-removal== 70461 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #72539: <==negation-removal== 91522 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c)
                           (at_b_p1))
        :effect (and
                    ; #20768: <==closure== 34629 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34629: origin
                    (Bc_survivorat_s_p1)

                    ; #41175: <==negation-removal== 20768 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89507: <==negation-removal== 34629 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_d_s
        :precondition (and (Pb_survivorat_s_p1)
                           (leader_d)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #37931: origin
                    (Bd_survivorat_s_p1)

                    ; #55993: <==closure== 37931 (pos)
                    (Pd_survivorat_s_p1)

                    ; #42887: <==negation-removal== 37931 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #47673: <==negation-removal== 55993 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_a)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #17239: <==closure== 86064 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86064: origin
                    (Ba_survivorat_s_p1)

                    ; #36139: <==negation-removal== 86064 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #89567: <==negation-removal== 17239 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_b)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #70461: <==closure== 91522 (pos)
                    (Pb_survivorat_s_p1)

                    ; #91522: origin
                    (Bb_survivorat_s_p1)

                    ; #34724: <==negation-removal== 70461 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #72539: <==negation-removal== 91522 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_c)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #20768: <==closure== 34629 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34629: origin
                    (Bc_survivorat_s_p1)

                    ; #41175: <==negation-removal== 20768 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89507: <==negation-removal== 34629 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_d_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_d)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #37931: origin
                    (Bd_survivorat_s_p1)

                    ; #55993: <==closure== 37931 (pos)
                    (Pd_survivorat_s_p1)

                    ; #42887: <==negation-removal== 37931 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #47673: <==negation-removal== 55993 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_d_a_s
        :precondition (and (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (leader_a)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #17239: <==closure== 86064 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86064: origin
                    (Ba_survivorat_s_p1)

                    ; #36139: <==negation-removal== 86064 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #89567: <==negation-removal== 17239 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_d_b_s
        :precondition (and (Bd_survivorat_s_p1)
                           (leader_b)
                           (at_d_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #70461: <==closure== 91522 (pos)
                    (Pb_survivorat_s_p1)

                    ; #91522: origin
                    (Bb_survivorat_s_p1)

                    ; #34724: <==negation-removal== 70461 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #72539: <==negation-removal== 91522 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_d_c_s
        :precondition (and (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (leader_c)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #20768: <==closure== 34629 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34629: origin
                    (Bc_survivorat_s_p1)

                    ; #41175: <==negation-removal== 20768 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #89507: <==negation-removal== 34629 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_d_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (leader_d)
                           (at_d_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #37931: origin
                    (Bd_survivorat_s_p1)

                    ; #55993: <==closure== 37931 (pos)
                    (Pd_survivorat_s_p1)

                    ; #42887: <==negation-removal== 37931 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #47673: <==negation-removal== 55993 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_a)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #37820: origin
                    (Ba_survivorat_s_p2)

                    ; #67832: <==closure== 37820 (pos)
                    (Pa_survivorat_s_p2)

                    ; #30555: <==negation-removal== 67832 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #53294: <==negation-removal== 37820 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_b))
        :effect (and
                    ; #35465: <==closure== 50696 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50696: origin
                    (Bb_survivorat_s_p2)

                    ; #45515: <==negation-removal== 50696 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70620: <==negation-removal== 35465 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_c)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #44712: <==closure== 54241 (pos)
                    (Pc_survivorat_s_p2)

                    ; #54241: origin
                    (Bc_survivorat_s_p2)

                    ; #12781: <==negation-removal== 44712 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #76693: <==negation-removal== 54241 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_a_d_s
        :precondition (and (Ba_survivorat_s_p2)
                           (leader_d)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #52524: origin
                    (Bd_survivorat_s_p2)

                    ; #55327: <==closure== 52524 (pos)
                    (Pd_survivorat_s_p2)

                    ; #84453: <==negation-removal== 52524 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #87407: <==negation-removal== 55327 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #37820: origin
                    (Ba_survivorat_s_p2)

                    ; #67832: <==closure== 37820 (pos)
                    (Pa_survivorat_s_p2)

                    ; #30555: <==negation-removal== 67832 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #53294: <==negation-removal== 37820 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #35465: <==closure== 50696 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50696: origin
                    (Bb_survivorat_s_p2)

                    ; #45515: <==negation-removal== 50696 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70620: <==negation-removal== 35465 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #44712: <==closure== 54241 (pos)
                    (Pc_survivorat_s_p2)

                    ; #54241: origin
                    (Bc_survivorat_s_p2)

                    ; #12781: <==negation-removal== 44712 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #76693: <==negation-removal== 54241 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_d_s
        :precondition (and (Pb_survivorat_s_p2)
                           (leader_d)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #52524: origin
                    (Bd_survivorat_s_p2)

                    ; #55327: <==closure== 52524 (pos)
                    (Pd_survivorat_s_p2)

                    ; #84453: <==negation-removal== 52524 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #87407: <==negation-removal== 55327 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (leader_a)
                           (at_c_p2))
        :effect (and
                    ; #37820: origin
                    (Ba_survivorat_s_p2)

                    ; #67832: <==closure== 37820 (pos)
                    (Pa_survivorat_s_p2)

                    ; #30555: <==negation-removal== 67832 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #53294: <==negation-removal== 37820 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (leader_b)
                           (at_c_p2))
        :effect (and
                    ; #35465: <==closure== 50696 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50696: origin
                    (Bb_survivorat_s_p2)

                    ; #45515: <==negation-removal== 50696 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70620: <==negation-removal== 35465 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (leader_c)
                           (at_c_p2))
        :effect (and
                    ; #44712: <==closure== 54241 (pos)
                    (Pc_survivorat_s_p2)

                    ; #54241: origin
                    (Bc_survivorat_s_p2)

                    ; #12781: <==negation-removal== 44712 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #76693: <==negation-removal== 54241 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_d_s
        :precondition (and (leader_d)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #52524: origin
                    (Bd_survivorat_s_p2)

                    ; #55327: <==closure== 52524 (pos)
                    (Pd_survivorat_s_p2)

                    ; #84453: <==negation-removal== 52524 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #87407: <==negation-removal== 55327 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_d_a_s
        :precondition (and (leader_a)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #37820: origin
                    (Ba_survivorat_s_p2)

                    ; #67832: <==closure== 37820 (pos)
                    (Pa_survivorat_s_p2)

                    ; #30555: <==negation-removal== 67832 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #53294: <==negation-removal== 37820 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_d_b_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #35465: <==closure== 50696 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50696: origin
                    (Bb_survivorat_s_p2)

                    ; #45515: <==negation-removal== 50696 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70620: <==negation-removal== 35465 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_d_c_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (leader_c)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #44712: <==closure== 54241 (pos)
                    (Pc_survivorat_s_p2)

                    ; #54241: origin
                    (Bc_survivorat_s_p2)

                    ; #12781: <==negation-removal== 44712 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #76693: <==negation-removal== 54241 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_d_d_s
        :precondition (and (leader_d)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #52524: origin
                    (Bd_survivorat_s_p2)

                    ; #55327: <==closure== 52524 (pos)
                    (Pd_survivorat_s_p2)

                    ; #84453: <==negation-removal== 52524 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #87407: <==negation-removal== 55327 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (leader_a)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #29113: <==closure== 58025 (pos)
                    (Pa_survivorat_s_p3)

                    ; #58025: origin
                    (Ba_survivorat_s_p3)

                    ; #13333: <==negation-removal== 58025 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #76270: <==negation-removal== 29113 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #12840: <==closure== 69863 (pos)
                    (Pb_survivorat_s_p3)

                    ; #69863: origin
                    (Bb_survivorat_s_p3)

                    ; #21131: <==negation-removal== 12840 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #43264: <==negation-removal== 69863 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #16495: origin
                    (Bc_survivorat_s_p3)

                    ; #53353: <==closure== 16495 (pos)
                    (Pc_survivorat_s_p3)

                    ; #40375: <==negation-removal== 16495 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #85165: <==negation-removal== 53353 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_a_d_s
        :precondition (and (Pa_survivorat_s_p3)
                           (leader_d)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #62921: origin
                    (Bd_survivorat_s_p3)

                    ; #79812: <==closure== 62921 (pos)
                    (Pd_survivorat_s_p3)

                    ; #90572: <==negation-removal== 79812 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #91470: <==negation-removal== 62921 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #29113: <==closure== 58025 (pos)
                    (Pa_survivorat_s_p3)

                    ; #58025: origin
                    (Ba_survivorat_s_p3)

                    ; #13333: <==negation-removal== 58025 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #76270: <==negation-removal== 29113 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #12840: <==closure== 69863 (pos)
                    (Pb_survivorat_s_p3)

                    ; #69863: origin
                    (Bb_survivorat_s_p3)

                    ; #21131: <==negation-removal== 12840 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #43264: <==negation-removal== 69863 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (leader_c)
                           (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #16495: origin
                    (Bc_survivorat_s_p3)

                    ; #53353: <==closure== 16495 (pos)
                    (Pc_survivorat_s_p3)

                    ; #40375: <==negation-removal== 16495 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #85165: <==negation-removal== 53353 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_d_s
        :precondition (and (leader_d)
                           (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #62921: origin
                    (Bd_survivorat_s_p3)

                    ; #79812: <==closure== 62921 (pos)
                    (Pd_survivorat_s_p3)

                    ; #90572: <==negation-removal== 79812 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #91470: <==negation-removal== 62921 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #29113: <==closure== 58025 (pos)
                    (Pa_survivorat_s_p3)

                    ; #58025: origin
                    (Ba_survivorat_s_p3)

                    ; #13333: <==negation-removal== 58025 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #76270: <==negation-removal== 29113 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #12840: <==closure== 69863 (pos)
                    (Pb_survivorat_s_p3)

                    ; #69863: origin
                    (Bb_survivorat_s_p3)

                    ; #21131: <==negation-removal== 12840 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #43264: <==negation-removal== 69863 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #16495: origin
                    (Bc_survivorat_s_p3)

                    ; #53353: <==closure== 16495 (pos)
                    (Pc_survivorat_s_p3)

                    ; #40375: <==negation-removal== 16495 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #85165: <==negation-removal== 53353 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_d_s
        :precondition (and (Bc_survivorat_s_p3)
                           (leader_d)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #62921: origin
                    (Bd_survivorat_s_p3)

                    ; #79812: <==closure== 62921 (pos)
                    (Pd_survivorat_s_p3)

                    ; #90572: <==negation-removal== 79812 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #91470: <==negation-removal== 62921 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_d_a_s
        :precondition (and (Bd_survivorat_s_p3)
                           (leader_a)
                           (Pd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #29113: <==closure== 58025 (pos)
                    (Pa_survivorat_s_p3)

                    ; #58025: origin
                    (Ba_survivorat_s_p3)

                    ; #13333: <==negation-removal== 58025 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #76270: <==negation-removal== 29113 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_d_b_s
        :precondition (and (Bd_survivorat_s_p3)
                           (leader_b)
                           (Pd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #12840: <==closure== 69863 (pos)
                    (Pb_survivorat_s_p3)

                    ; #69863: origin
                    (Bb_survivorat_s_p3)

                    ; #21131: <==negation-removal== 12840 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #43264: <==negation-removal== 69863 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_d_c_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (leader_c)
                           (at_d_p3))
        :effect (and
                    ; #16495: origin
                    (Bc_survivorat_s_p3)

                    ; #53353: <==closure== 16495 (pos)
                    (Pc_survivorat_s_p3)

                    ; #40375: <==negation-removal== 16495 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #85165: <==negation-removal== 53353 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_d_d_s
        :precondition (and (leader_d)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #62921: origin
                    (Bd_survivorat_s_p3)

                    ; #79812: <==closure== 62921 (pos)
                    (Pd_survivorat_s_p3)

                    ; #90572: <==negation-removal== 79812 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #91470: <==negation-removal== 62921 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_a)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #13140: <==closure== 88587 (pos)
                    (Pa_survivorat_s_p4)

                    ; #88587: origin
                    (Ba_survivorat_s_p4)

                    ; #41795: <==negation-removal== 88587 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #72870: <==negation-removal== 13140 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_b)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #69521: origin
                    (Bb_survivorat_s_p4)

                    ; #74832: <==closure== 69521 (pos)
                    (Pb_survivorat_s_p4)

                    ; #39637: <==negation-removal== 74832 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66765: <==negation-removal== 69521 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (leader_c)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #17099: origin
                    (Bc_survivorat_s_p4)

                    ; #90370: <==closure== 17099 (pos)
                    (Pc_survivorat_s_p4)

                    ; #79362: <==negation-removal== 17099 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #81716: <==negation-removal== 90370 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_a_d_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_d)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #41241: origin
                    (Bd_survivorat_s_p4)

                    ; #97796: <==closure== 41241 (pos)
                    (Pd_survivorat_s_p4)

                    ; #26049: <==negation-removal== 97796 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #50623: <==negation-removal== 41241 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #13140: <==closure== 88587 (pos)
                    (Pa_survivorat_s_p4)

                    ; #88587: origin
                    (Ba_survivorat_s_p4)

                    ; #41795: <==negation-removal== 88587 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #72870: <==negation-removal== 13140 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b))
        :effect (and
                    ; #69521: origin
                    (Bb_survivorat_s_p4)

                    ; #74832: <==closure== 69521 (pos)
                    (Pb_survivorat_s_p4)

                    ; #39637: <==negation-removal== 74832 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66765: <==negation-removal== 69521 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4))
        :effect (and
                    ; #17099: origin
                    (Bc_survivorat_s_p4)

                    ; #90370: <==closure== 17099 (pos)
                    (Pc_survivorat_s_p4)

                    ; #79362: <==negation-removal== 17099 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #81716: <==negation-removal== 90370 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_d_s
        :precondition (and (leader_d)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #41241: origin
                    (Bd_survivorat_s_p4)

                    ; #97796: <==closure== 41241 (pos)
                    (Pd_survivorat_s_p4)

                    ; #26049: <==negation-removal== 97796 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #50623: <==negation-removal== 41241 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_a)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #13140: <==closure== 88587 (pos)
                    (Pa_survivorat_s_p4)

                    ; #88587: origin
                    (Ba_survivorat_s_p4)

                    ; #41795: <==negation-removal== 88587 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #72870: <==negation-removal== 13140 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #69521: origin
                    (Bb_survivorat_s_p4)

                    ; #74832: <==closure== 69521 (pos)
                    (Pb_survivorat_s_p4)

                    ; #39637: <==negation-removal== 74832 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66765: <==negation-removal== 69521 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #17099: origin
                    (Bc_survivorat_s_p4)

                    ; #90370: <==closure== 17099 (pos)
                    (Pc_survivorat_s_p4)

                    ; #79362: <==negation-removal== 17099 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #81716: <==negation-removal== 90370 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_d_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_d)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #41241: origin
                    (Bd_survivorat_s_p4)

                    ; #97796: <==closure== 41241 (pos)
                    (Pd_survivorat_s_p4)

                    ; #26049: <==negation-removal== 97796 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #50623: <==negation-removal== 41241 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_d_a_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #13140: <==closure== 88587 (pos)
                    (Pa_survivorat_s_p4)

                    ; #88587: origin
                    (Ba_survivorat_s_p4)

                    ; #41795: <==negation-removal== 88587 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #72870: <==negation-removal== 13140 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_d_b_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #69521: origin
                    (Bb_survivorat_s_p4)

                    ; #74832: <==closure== 69521 (pos)
                    (Pb_survivorat_s_p4)

                    ; #39637: <==negation-removal== 74832 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66765: <==negation-removal== 69521 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_d_c_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #17099: origin
                    (Bc_survivorat_s_p4)

                    ; #90370: <==closure== 17099 (pos)
                    (Pc_survivorat_s_p4)

                    ; #79362: <==negation-removal== 17099 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #81716: <==negation-removal== 90370 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_d_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (leader_d))
        :effect (and
                    ; #41241: origin
                    (Bd_survivorat_s_p4)

                    ; #97796: <==closure== 41241 (pos)
                    (Pd_survivorat_s_p4)

                    ; #26049: <==negation-removal== 97796 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #50623: <==negation-removal== 41241 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #41456: origin
                    (Ba_survivorat_s_p5)

                    ; #87765: <==closure== 41456 (pos)
                    (Pa_survivorat_s_p5)

                    ; #27641: <==negation-removal== 41456 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88033: <==negation-removal== 87765 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #29953: <==closure== 39941 (pos)
                    (Pb_survivorat_s_p5)

                    ; #39941: origin
                    (Bb_survivorat_s_p5)

                    ; #12943: <==negation-removal== 39941 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #43025: <==negation-removal== 29953 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #38534: <==closure== 88001 (pos)
                    (Pc_survivorat_s_p5)

                    ; #88001: origin
                    (Bc_survivorat_s_p5)

                    ; #60147: <==negation-removal== 38534 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #89594: <==negation-removal== 88001 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_a_d_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #64858: origin
                    (Bd_survivorat_s_p5)

                    ; #81808: <==closure== 64858 (pos)
                    (Pd_survivorat_s_p5)

                    ; #42231: <==negation-removal== 81808 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #77593: <==negation-removal== 64858 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (leader_a)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #41456: origin
                    (Ba_survivorat_s_p5)

                    ; #87765: <==closure== 41456 (pos)
                    (Pa_survivorat_s_p5)

                    ; #27641: <==negation-removal== 41456 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88033: <==negation-removal== 87765 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #29953: <==closure== 39941 (pos)
                    (Pb_survivorat_s_p5)

                    ; #39941: origin
                    (Bb_survivorat_s_p5)

                    ; #12943: <==negation-removal== 39941 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #43025: <==negation-removal== 29953 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (leader_c)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #38534: <==closure== 88001 (pos)
                    (Pc_survivorat_s_p5)

                    ; #88001: origin
                    (Bc_survivorat_s_p5)

                    ; #60147: <==negation-removal== 38534 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #89594: <==negation-removal== 88001 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_d_s
        :precondition (and (leader_d)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #64858: origin
                    (Bd_survivorat_s_p5)

                    ; #81808: <==closure== 64858 (pos)
                    (Pd_survivorat_s_p5)

                    ; #42231: <==negation-removal== 81808 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #77593: <==negation-removal== 64858 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #41456: origin
                    (Ba_survivorat_s_p5)

                    ; #87765: <==closure== 41456 (pos)
                    (Pa_survivorat_s_p5)

                    ; #27641: <==negation-removal== 41456 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88033: <==negation-removal== 87765 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #29953: <==closure== 39941 (pos)
                    (Pb_survivorat_s_p5)

                    ; #39941: origin
                    (Bb_survivorat_s_p5)

                    ; #12943: <==negation-removal== 39941 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #43025: <==negation-removal== 29953 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #38534: <==closure== 88001 (pos)
                    (Pc_survivorat_s_p5)

                    ; #88001: origin
                    (Bc_survivorat_s_p5)

                    ; #60147: <==negation-removal== 38534 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #89594: <==negation-removal== 88001 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_d_s
        :precondition (and (leader_d)
                           (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #64858: origin
                    (Bd_survivorat_s_p5)

                    ; #81808: <==closure== 64858 (pos)
                    (Pd_survivorat_s_p5)

                    ; #42231: <==negation-removal== 81808 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #77593: <==negation-removal== 64858 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p5_d_a_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (leader_a)
                           (at_d_p5))
        :effect (and
                    ; #41456: origin
                    (Ba_survivorat_s_p5)

                    ; #87765: <==closure== 41456 (pos)
                    (Pa_survivorat_s_p5)

                    ; #27641: <==negation-removal== 41456 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88033: <==negation-removal== 87765 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_d_b_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_b))
        :effect (and
                    ; #29953: <==closure== 39941 (pos)
                    (Pb_survivorat_s_p5)

                    ; #39941: origin
                    (Bb_survivorat_s_p5)

                    ; #12943: <==negation-removal== 39941 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #43025: <==negation-removal== 29953 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_d_c_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (leader_c)
                           (at_d_p5))
        :effect (and
                    ; #38534: <==closure== 88001 (pos)
                    (Pc_survivorat_s_p5)

                    ; #88001: origin
                    (Bc_survivorat_s_p5)

                    ; #60147: <==negation-removal== 38534 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #89594: <==negation-removal== 88001 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_d_d_s
        :precondition (and (leader_d)
                           (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #64858: origin
                    (Bd_survivorat_s_p5)

                    ; #81808: <==closure== 64858 (pos)
                    (Pd_survivorat_s_p5)

                    ; #42231: <==negation-removal== 81808 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #77593: <==negation-removal== 64858 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #17259: <==closure== 56513 (pos)
                    (Pa_survivorat_s_p6)

                    ; #56513: origin
                    (Ba_survivorat_s_p6)

                    ; #29598: <==negation-removal== 17259 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #76550: <==negation-removal== 56513 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #40217: origin
                    (Bb_survivorat_s_p6)

                    ; #62922: <==closure== 40217 (pos)
                    (Pb_survivorat_s_p6)

                    ; #22642: <==negation-removal== 40217 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #91501: <==negation-removal== 62922 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_c)
                           (at_a_p6))
        :effect (and
                    ; #65174: origin
                    (Bc_survivorat_s_p6)

                    ; #91083: <==closure== 65174 (pos)
                    (Pc_survivorat_s_p6)

                    ; #25986: <==negation-removal== 91083 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48344: <==negation-removal== 65174 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_a_d_s
        :precondition (and (leader_d)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #30865: origin
                    (Bd_survivorat_s_p6)

                    ; #69023: <==closure== 30865 (pos)
                    (Pd_survivorat_s_p6)

                    ; #20441: <==negation-removal== 69023 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #43815: <==negation-removal== 30865 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6))
        :effect (and
                    ; #17259: <==closure== 56513 (pos)
                    (Pa_survivorat_s_p6)

                    ; #56513: origin
                    (Ba_survivorat_s_p6)

                    ; #29598: <==negation-removal== 17259 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #76550: <==negation-removal== 56513 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_b))
        :effect (and
                    ; #40217: origin
                    (Bb_survivorat_s_p6)

                    ; #62922: <==closure== 40217 (pos)
                    (Pb_survivorat_s_p6)

                    ; #22642: <==negation-removal== 40217 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #91501: <==negation-removal== 62922 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c)
                           (at_b_p6))
        :effect (and
                    ; #65174: origin
                    (Bc_survivorat_s_p6)

                    ; #91083: <==closure== 65174 (pos)
                    (Pc_survivorat_s_p6)

                    ; #25986: <==negation-removal== 91083 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48344: <==negation-removal== 65174 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_d_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_d))
        :effect (and
                    ; #30865: origin
                    (Bd_survivorat_s_p6)

                    ; #69023: <==closure== 30865 (pos)
                    (Pd_survivorat_s_p6)

                    ; #20441: <==negation-removal== 69023 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #43815: <==negation-removal== 30865 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_a)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #17259: <==closure== 56513 (pos)
                    (Pa_survivorat_s_p6)

                    ; #56513: origin
                    (Ba_survivorat_s_p6)

                    ; #29598: <==negation-removal== 17259 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #76550: <==negation-removal== 56513 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #40217: origin
                    (Bb_survivorat_s_p6)

                    ; #62922: <==closure== 40217 (pos)
                    (Pb_survivorat_s_p6)

                    ; #22642: <==negation-removal== 40217 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #91501: <==negation-removal== 62922 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_c)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #65174: origin
                    (Bc_survivorat_s_p6)

                    ; #91083: <==closure== 65174 (pos)
                    (Pc_survivorat_s_p6)

                    ; #25986: <==negation-removal== 91083 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48344: <==negation-removal== 65174 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_d_s
        :precondition (and (leader_d)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #30865: origin
                    (Bd_survivorat_s_p6)

                    ; #69023: <==closure== 30865 (pos)
                    (Pd_survivorat_s_p6)

                    ; #20441: <==negation-removal== 69023 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #43815: <==negation-removal== 30865 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_d_a_s
        :precondition (and (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_a)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #17259: <==closure== 56513 (pos)
                    (Pa_survivorat_s_p6)

                    ; #56513: origin
                    (Ba_survivorat_s_p6)

                    ; #29598: <==negation-removal== 17259 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #76550: <==negation-removal== 56513 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_d_b_s
        :precondition (and (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #40217: origin
                    (Bb_survivorat_s_p6)

                    ; #62922: <==closure== 40217 (pos)
                    (Pb_survivorat_s_p6)

                    ; #22642: <==negation-removal== 40217 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #91501: <==negation-removal== 62922 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_d_c_s
        :precondition (and (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (leader_c)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #65174: origin
                    (Bc_survivorat_s_p6)

                    ; #91083: <==closure== 65174 (pos)
                    (Pc_survivorat_s_p6)

                    ; #25986: <==negation-removal== 91083 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48344: <==negation-removal== 65174 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_d_d_s
        :precondition (and (at_d_p6)
                           (leader_d)
                           (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #30865: origin
                    (Bd_survivorat_s_p6)

                    ; #69023: <==closure== 30865 (pos)
                    (Pd_survivorat_s_p6)

                    ; #20441: <==negation-removal== 69023 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #43815: <==negation-removal== 30865 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #23422: origin
                    (Ba_survivorat_s_p7)

                    ; #46733: <==closure== 23422 (pos)
                    (Pa_survivorat_s_p7)

                    ; #37996: <==negation-removal== 23422 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #50526: <==negation-removal== 46733 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #77669: <==closure== 78187 (pos)
                    (Pb_survivorat_s_p7)

                    ; #78187: origin
                    (Bb_survivorat_s_p7)

                    ; #43143: <==negation-removal== 78187 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #64438: <==negation-removal== 77669 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #26550: <==closure== 50541 (pos)
                    (Pc_survivorat_s_p7)

                    ; #50541: origin
                    (Bc_survivorat_s_p7)

                    ; #14565: <==negation-removal== 26550 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #29060: <==negation-removal== 50541 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_a_d_s
        :precondition (and (leader_d)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #74126: origin
                    (Bd_survivorat_s_p7)

                    ; #82696: <==closure== 74126 (pos)
                    (Pd_survivorat_s_p7)

                    ; #23183: <==negation-removal== 74126 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #41057: <==negation-removal== 82696 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (at_b_p7)
                           (leader_a)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #23422: origin
                    (Ba_survivorat_s_p7)

                    ; #46733: <==closure== 23422 (pos)
                    (Pa_survivorat_s_p7)

                    ; #37996: <==negation-removal== 23422 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #50526: <==negation-removal== 46733 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #77669: <==closure== 78187 (pos)
                    (Pb_survivorat_s_p7)

                    ; #78187: origin
                    (Bb_survivorat_s_p7)

                    ; #43143: <==negation-removal== 78187 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #64438: <==negation-removal== 77669 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (leader_c)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #26550: <==closure== 50541 (pos)
                    (Pc_survivorat_s_p7)

                    ; #50541: origin
                    (Bc_survivorat_s_p7)

                    ; #14565: <==negation-removal== 26550 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #29060: <==negation-removal== 50541 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_d_s
        :precondition (and (leader_d)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #74126: origin
                    (Bd_survivorat_s_p7)

                    ; #82696: <==closure== 74126 (pos)
                    (Pd_survivorat_s_p7)

                    ; #23183: <==negation-removal== 74126 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #41057: <==negation-removal== 82696 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #23422: origin
                    (Ba_survivorat_s_p7)

                    ; #46733: <==closure== 23422 (pos)
                    (Pa_survivorat_s_p7)

                    ; #37996: <==negation-removal== 23422 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #50526: <==negation-removal== 46733 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (leader_b)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #77669: <==closure== 78187 (pos)
                    (Pb_survivorat_s_p7)

                    ; #78187: origin
                    (Bb_survivorat_s_p7)

                    ; #43143: <==negation-removal== 78187 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #64438: <==negation-removal== 77669 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (leader_c)
                           (at_c_p7))
        :effect (and
                    ; #26550: <==closure== 50541 (pos)
                    (Pc_survivorat_s_p7)

                    ; #50541: origin
                    (Bc_survivorat_s_p7)

                    ; #14565: <==negation-removal== 26550 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #29060: <==negation-removal== 50541 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_d_s
        :precondition (and (Pc_survivorat_s_p7)
                           (leader_d)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #74126: origin
                    (Bd_survivorat_s_p7)

                    ; #82696: <==closure== 74126 (pos)
                    (Pd_survivorat_s_p7)

                    ; #23183: <==negation-removal== 74126 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #41057: <==negation-removal== 82696 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #23422: origin
                    (Ba_survivorat_s_p7)

                    ; #46733: <==closure== 23422 (pos)
                    (Pa_survivorat_s_p7)

                    ; #37996: <==negation-removal== 23422 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #50526: <==negation-removal== 46733 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_d_b_s
        :precondition (and (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7)
                           (leader_b))
        :effect (and
                    ; #77669: <==closure== 78187 (pos)
                    (Pb_survivorat_s_p7)

                    ; #78187: origin
                    (Bb_survivorat_s_p7)

                    ; #43143: <==negation-removal== 78187 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #64438: <==negation-removal== 77669 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_d_c_s
        :precondition (and (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7)
                           (leader_c))
        :effect (and
                    ; #26550: <==closure== 50541 (pos)
                    (Pc_survivorat_s_p7)

                    ; #50541: origin
                    (Bc_survivorat_s_p7)

                    ; #14565: <==negation-removal== 26550 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #29060: <==negation-removal== 50541 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_d_d_s
        :precondition (and (leader_d)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #74126: origin
                    (Bd_survivorat_s_p7)

                    ; #82696: <==closure== 74126 (pos)
                    (Pd_survivorat_s_p7)

                    ; #23183: <==negation-removal== 74126 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #41057: <==negation-removal== 82696 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (leader_a)
                           (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #31840: <==closure== 88401 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88401: origin
                    (Ba_survivorat_s_p8)

                    ; #24636: <==negation-removal== 31840 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #38564: <==negation-removal== 88401 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (leader_b)
                           (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #30007: <==closure== 83186 (pos)
                    (Pb_survivorat_s_p8)

                    ; #83186: origin
                    (Bb_survivorat_s_p8)

                    ; #10829: <==negation-removal== 83186 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42426: <==negation-removal== 30007 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (leader_c)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #20450: <==closure== 80472 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80472: origin
                    (Bc_survivorat_s_p8)

                    ; #65360: <==negation-removal== 80472 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #69131: <==negation-removal== 20450 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_a_d_s
        :precondition (and (leader_d)
                           (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #14835: origin
                    (Bd_survivorat_s_p8)

                    ; #77246: <==closure== 14835 (pos)
                    (Pd_survivorat_s_p8)

                    ; #28906: <==negation-removal== 77246 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #44159: <==negation-removal== 14835 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_a)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #31840: <==closure== 88401 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88401: origin
                    (Ba_survivorat_s_p8)

                    ; #24636: <==negation-removal== 31840 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #38564: <==negation-removal== 88401 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #30007: <==closure== 83186 (pos)
                    (Pb_survivorat_s_p8)

                    ; #83186: origin
                    (Bb_survivorat_s_p8)

                    ; #10829: <==negation-removal== 83186 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42426: <==negation-removal== 30007 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_c)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #20450: <==closure== 80472 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80472: origin
                    (Bc_survivorat_s_p8)

                    ; #65360: <==negation-removal== 80472 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #69131: <==negation-removal== 20450 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_d_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_d)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #14835: origin
                    (Bd_survivorat_s_p8)

                    ; #77246: <==closure== 14835 (pos)
                    (Pd_survivorat_s_p8)

                    ; #28906: <==negation-removal== 77246 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #44159: <==negation-removal== 14835 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (leader_a)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #31840: <==closure== 88401 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88401: origin
                    (Ba_survivorat_s_p8)

                    ; #24636: <==negation-removal== 31840 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #38564: <==negation-removal== 88401 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (leader_b)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #30007: <==closure== 83186 (pos)
                    (Pb_survivorat_s_p8)

                    ; #83186: origin
                    (Bb_survivorat_s_p8)

                    ; #10829: <==negation-removal== 83186 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42426: <==negation-removal== 30007 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_c)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #20450: <==closure== 80472 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80472: origin
                    (Bc_survivorat_s_p8)

                    ; #65360: <==negation-removal== 80472 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #69131: <==negation-removal== 20450 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_d_s
        :precondition (and (leader_d)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #14835: origin
                    (Bd_survivorat_s_p8)

                    ; #77246: <==closure== 14835 (pos)
                    (Pd_survivorat_s_p8)

                    ; #28906: <==negation-removal== 77246 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #44159: <==negation-removal== 14835 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_d_a_s
        :precondition (and (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (leader_a)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #31840: <==closure== 88401 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88401: origin
                    (Ba_survivorat_s_p8)

                    ; #24636: <==negation-removal== 31840 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #38564: <==negation-removal== 88401 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_d_b_s
        :precondition (and (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #30007: <==closure== 83186 (pos)
                    (Pb_survivorat_s_p8)

                    ; #83186: origin
                    (Bb_survivorat_s_p8)

                    ; #10829: <==negation-removal== 83186 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42426: <==negation-removal== 30007 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_d_c_s
        :precondition (and (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #20450: <==closure== 80472 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80472: origin
                    (Bc_survivorat_s_p8)

                    ; #65360: <==negation-removal== 80472 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #69131: <==negation-removal== 20450 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_d_d_s
        :precondition (and (Pd_survivorat_s_p8)
                           (leader_d)
                           (at_d_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #14835: origin
                    (Bd_survivorat_s_p8)

                    ; #77246: <==closure== 14835 (pos)
                    (Pd_survivorat_s_p8)

                    ; #28906: <==negation-removal== 77246 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #44159: <==negation-removal== 14835 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_a)
                           (at_a_p9))
        :effect (and
                    ; #45390: origin
                    (Ba_survivorat_s_p9)

                    ; #80306: <==closure== 45390 (pos)
                    (Pa_survivorat_s_p9)

                    ; #64227: <==negation-removal== 80306 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #98830: <==negation-removal== 45390 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Ba_survivorat_s_p9)
                           (leader_b)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #22629: <==closure== 80684 (pos)
                    (Pb_survivorat_s_p9)

                    ; #80684: origin
                    (Bb_survivorat_s_p9)

                    ; #61816: <==negation-removal== 22629 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72923: <==negation-removal== 80684 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #21721: <==closure== 70360 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70360: origin
                    (Bc_survivorat_s_p9)

                    ; #11924: <==negation-removal== 70360 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #46497: <==negation-removal== 21721 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_a_d_s
        :precondition (and (Ba_survivorat_s_p9)
                           (leader_d)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #37800: origin
                    (Bd_survivorat_s_p9)

                    ; #42325: <==closure== 37800 (pos)
                    (Pd_survivorat_s_p9)

                    ; #19078: <==negation-removal== 42325 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #32780: <==negation-removal== 37800 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #45390: origin
                    (Ba_survivorat_s_p9)

                    ; #80306: <==closure== 45390 (pos)
                    (Pa_survivorat_s_p9)

                    ; #64227: <==negation-removal== 80306 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #98830: <==negation-removal== 45390 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_b)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #22629: <==closure== 80684 (pos)
                    (Pb_survivorat_s_p9)

                    ; #80684: origin
                    (Bb_survivorat_s_p9)

                    ; #61816: <==negation-removal== 22629 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72923: <==negation-removal== 80684 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #21721: <==closure== 70360 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70360: origin
                    (Bc_survivorat_s_p9)

                    ; #11924: <==negation-removal== 70360 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #46497: <==negation-removal== 21721 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_d_s
        :precondition (and (leader_d)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #37800: origin
                    (Bd_survivorat_s_p9)

                    ; #42325: <==closure== 37800 (pos)
                    (Pd_survivorat_s_p9)

                    ; #19078: <==negation-removal== 42325 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #32780: <==negation-removal== 37800 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #45390: origin
                    (Ba_survivorat_s_p9)

                    ; #80306: <==closure== 45390 (pos)
                    (Pa_survivorat_s_p9)

                    ; #64227: <==negation-removal== 80306 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #98830: <==negation-removal== 45390 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #22629: <==closure== 80684 (pos)
                    (Pb_survivorat_s_p9)

                    ; #80684: origin
                    (Bb_survivorat_s_p9)

                    ; #61816: <==negation-removal== 22629 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72923: <==negation-removal== 80684 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #21721: <==closure== 70360 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70360: origin
                    (Bc_survivorat_s_p9)

                    ; #11924: <==negation-removal== 70360 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #46497: <==negation-removal== 21721 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_d_s
        :precondition (and (at_c_p9)
                           (leader_d)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #37800: origin
                    (Bd_survivorat_s_p9)

                    ; #42325: <==closure== 37800 (pos)
                    (Pd_survivorat_s_p9)

                    ; #19078: <==negation-removal== 42325 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #32780: <==negation-removal== 37800 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (at_d_p9))
        :effect (and
                    ; #45390: origin
                    (Ba_survivorat_s_p9)

                    ; #80306: <==closure== 45390 (pos)
                    (Pa_survivorat_s_p9)

                    ; #64227: <==negation-removal== 80306 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #98830: <==negation-removal== 45390 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_d_b_s
        :precondition (and (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (at_d_p9)
                           (leader_b))
        :effect (and
                    ; #22629: <==closure== 80684 (pos)
                    (Pb_survivorat_s_p9)

                    ; #80684: origin
                    (Bb_survivorat_s_p9)

                    ; #61816: <==negation-removal== 22629 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72923: <==negation-removal== 80684 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_d_c_s
        :precondition (and (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (leader_c)
                           (at_d_p9))
        :effect (and
                    ; #21721: <==closure== 70360 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70360: origin
                    (Bc_survivorat_s_p9)

                    ; #11924: <==negation-removal== 70360 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #46497: <==negation-removal== 21721 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_d_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (leader_d)
                           (Bd_survivorat_s_p9)
                           (at_d_p9))
        :effect (and
                    ; #37800: origin
                    (Bd_survivorat_s_p9)

                    ; #42325: <==closure== 37800 (pos)
                    (Pd_survivorat_s_p9)

                    ; #19078: <==negation-removal== 42325 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #32780: <==negation-removal== 37800 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16710: origin
                    (not_at_a_p10)

                    ; #70316: origin
                    (at_a_p1)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #16710: origin
                    (not_at_a_p10)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16710: origin
                    (not_at_a_p10)

                    ; #65790: origin
                    (at_a_p11)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16710: origin
                    (not_at_a_p10)

                    ; #65563: origin
                    (at_a_p12)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16710: origin
                    (not_at_a_p10)

                    ; #74935: origin
                    (at_a_p2)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #16710: origin
                    (not_at_a_p10)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #16710: origin
                    (not_at_a_p10)

                    ; #86662: origin
                    (at_a_p4)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16710: origin
                    (not_at_a_p10)

                    ; #35482: origin
                    (at_a_p5)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16710: origin
                    (not_at_a_p10)

                    ; #26667: origin
                    (at_a_p6)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16710: origin
                    (not_at_a_p10)

                    ; #51079: origin
                    (at_a_p7)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16710: origin
                    (not_at_a_p10)

                    ; #27930: origin
                    (at_a_p8)

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16710: origin
                    (not_at_a_p10)

                    ; #61141: origin
                    (at_a_p9)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #12972: <==negation-removal== 16710 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1)
                           (not (leader_a)))
        :effect (and
                    ; #62529: origin
                    (not_at_a_p11)

                    ; #70316: origin
                    (at_a_p1)

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #62529: origin
                    (not_at_a_p11)

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #62529: origin
                    (not_at_a_p11)

                    ; #65790: origin
                    (at_a_p11)

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12)
                           (not (leader_a)))
        :effect (and
                    ; #62529: origin
                    (not_at_a_p11)

                    ; #65563: origin
                    (at_a_p12)

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2)
                           (not (leader_a)))
        :effect (and
                    ; #62529: origin
                    (not_at_a_p11)

                    ; #74935: origin
                    (at_a_p2)

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #62529: origin
                    (not_at_a_p11)

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4)
                           (not (leader_a)))
        :effect (and
                    ; #62529: origin
                    (not_at_a_p11)

                    ; #86662: origin
                    (at_a_p4)

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5)
                           (not (leader_a)))
        :effect (and
                    ; #35482: origin
                    (at_a_p5)

                    ; #62529: origin
                    (not_at_a_p11)

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6)
                           (not (leader_a)))
        :effect (and
                    ; #26667: origin
                    (at_a_p6)

                    ; #62529: origin
                    (not_at_a_p11)

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7)
                           (not (leader_a)))
        :effect (and
                    ; #51079: origin
                    (at_a_p7)

                    ; #62529: origin
                    (not_at_a_p11)

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8)
                           (not (leader_a)))
        :effect (and
                    ; #27930: origin
                    (at_a_p8)

                    ; #62529: origin
                    (not_at_a_p11)

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9)
                           (not (leader_a)))
        :effect (and
                    ; #61141: origin
                    (at_a_p9)

                    ; #62529: origin
                    (not_at_a_p11)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #65790: <==negation-removal== 62529 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #39012: origin
                    (not_at_a_p12)

                    ; #70316: origin
                    (at_a_p1)

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #39012: origin
                    (not_at_a_p12)

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11)
                           (not (leader_a)))
        :effect (and
                    ; #39012: origin
                    (not_at_a_p12)

                    ; #65790: origin
                    (at_a_p11)

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12)
                           (not (leader_a)))
        :effect (and
                    ; #39012: origin
                    (not_at_a_p12)

                    ; #65563: origin
                    (at_a_p12)

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #39012: origin
                    (not_at_a_p12)

                    ; #74935: origin
                    (at_a_p2)

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #39012: origin
                    (not_at_a_p12)

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #39012: origin
                    (not_at_a_p12)

                    ; #86662: origin
                    (at_a_p4)

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #35482: origin
                    (at_a_p5)

                    ; #39012: origin
                    (not_at_a_p12)

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #26667: origin
                    (at_a_p6)

                    ; #39012: origin
                    (not_at_a_p12)

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7)
                           (not (leader_a)))
        :effect (and
                    ; #39012: origin
                    (not_at_a_p12)

                    ; #51079: origin
                    (at_a_p7)

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8)
                           (not (leader_a)))
        :effect (and
                    ; #27930: origin
                    (at_a_p8)

                    ; #39012: origin
                    (not_at_a_p12)

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #39012: origin
                    (not_at_a_p12)

                    ; #61141: origin
                    (at_a_p9)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #65563: <==negation-removal== 39012 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #23741: origin
                    (not_at_a_p1)

                    ; #70316: origin
                    (at_a_p1)

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #23741: origin
                    (not_at_a_p1)

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #23741: origin
                    (not_at_a_p1)

                    ; #65790: origin
                    (at_a_p11)

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12)
                           (not (leader_a)))
        :effect (and
                    ; #23741: origin
                    (not_at_a_p1)

                    ; #65563: origin
                    (at_a_p12)

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #23741: origin
                    (not_at_a_p1)

                    ; #74935: origin
                    (at_a_p2)

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #23741: origin
                    (not_at_a_p1)

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #23741: origin
                    (not_at_a_p1)

                    ; #86662: origin
                    (at_a_p4)

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23741: origin
                    (not_at_a_p1)

                    ; #35482: origin
                    (at_a_p5)

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #23741: origin
                    (not_at_a_p1)

                    ; #26667: origin
                    (at_a_p6)

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #23741: origin
                    (not_at_a_p1)

                    ; #51079: origin
                    (at_a_p7)

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23741: origin
                    (not_at_a_p1)

                    ; #27930: origin
                    (at_a_p8)

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #23741: origin
                    (not_at_a_p1)

                    ; #61141: origin
                    (at_a_p9)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #70316: <==negation-removal== 23741 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #70316: origin
                    (at_a_p1)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #65790: origin
                    (at_a_p11)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #65563: origin
                    (at_a_p12)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #74935: origin
                    (at_a_p2)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #84841: origin
                    (not_at_a_p2)

                    ; #86662: origin
                    (at_a_p4)

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #35482: origin
                    (at_a_p5)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #26667: origin
                    (at_a_p6)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #51079: origin
                    (at_a_p7)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #27930: origin
                    (at_a_p8)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #61141: origin
                    (at_a_p9)

                    ; #84841: origin
                    (not_at_a_p2)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #74935: <==negation-removal== 84841 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #70316: origin
                    (at_a_p1)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #65790: origin
                    (at_a_p11)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12)
                           (not (leader_a)))
        :effect (and
                    ; #65563: origin
                    (at_a_p12)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #74935: origin
                    (at_a_p2)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #83367: origin
                    (not_at_a_p3)

                    ; #86662: origin
                    (at_a_p4)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #35482: origin
                    (at_a_p5)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #26667: origin
                    (at_a_p6)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #51079: origin
                    (at_a_p7)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #27930: origin
                    (at_a_p8)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #61141: origin
                    (at_a_p9)

                    ; #83367: origin
                    (not_at_a_p3)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #14458: <==negation-removal== 83367 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #44047: origin
                    (not_at_a_p4)

                    ; #70316: origin
                    (at_a_p1)

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #44047: origin
                    (not_at_a_p4)

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #44047: origin
                    (not_at_a_p4)

                    ; #65790: origin
                    (at_a_p11)

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12)
                           (not (leader_a)))
        :effect (and
                    ; #44047: origin
                    (not_at_a_p4)

                    ; #65563: origin
                    (at_a_p12)

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #44047: origin
                    (not_at_a_p4)

                    ; #74935: origin
                    (at_a_p2)

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #44047: origin
                    (not_at_a_p4)

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #44047: origin
                    (not_at_a_p4)

                    ; #86662: origin
                    (at_a_p4)

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #35482: origin
                    (at_a_p5)

                    ; #44047: origin
                    (not_at_a_p4)

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #26667: origin
                    (at_a_p6)

                    ; #44047: origin
                    (not_at_a_p4)

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #44047: origin
                    (not_at_a_p4)

                    ; #51079: origin
                    (at_a_p7)

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #27930: origin
                    (at_a_p8)

                    ; #44047: origin
                    (not_at_a_p4)

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #44047: origin
                    (not_at_a_p4)

                    ; #61141: origin
                    (at_a_p9)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #86662: <==negation-removal== 44047 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1)
                           (not (leader_a)))
        :effect (and
                    ; #70316: origin
                    (at_a_p1)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11)
                           (not (leader_a)))
        :effect (and
                    ; #65790: origin
                    (at_a_p11)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12)
                           (not (leader_a)))
        :effect (and
                    ; #65563: origin
                    (at_a_p12)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #74935: origin
                    (at_a_p2)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4)
                           (not (leader_a)))
        :effect (and
                    ; #82289: origin
                    (not_at_a_p5)

                    ; #86662: origin
                    (at_a_p4)

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #35482: origin
                    (at_a_p5)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #26667: origin
                    (at_a_p6)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7)
                           (not (leader_a)))
        :effect (and
                    ; #51079: origin
                    (at_a_p7)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #27930: origin
                    (at_a_p8)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #61141: origin
                    (at_a_p9)

                    ; #82289: origin
                    (not_at_a_p5)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #35482: <==negation-removal== 82289 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #37727: origin
                    (not_at_a_p6)

                    ; #70316: origin
                    (at_a_p1)

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #37727: origin
                    (not_at_a_p6)

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #37727: origin
                    (not_at_a_p6)

                    ; #65790: origin
                    (at_a_p11)

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #37727: origin
                    (not_at_a_p6)

                    ; #65563: origin
                    (at_a_p12)

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #37727: origin
                    (not_at_a_p6)

                    ; #74935: origin
                    (at_a_p2)

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #37727: origin
                    (not_at_a_p6)

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #37727: origin
                    (not_at_a_p6)

                    ; #86662: origin
                    (at_a_p4)

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #35482: origin
                    (at_a_p5)

                    ; #37727: origin
                    (not_at_a_p6)

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #26667: origin
                    (at_a_p6)

                    ; #37727: origin
                    (not_at_a_p6)

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #37727: origin
                    (not_at_a_p6)

                    ; #51079: origin
                    (at_a_p7)

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27930: origin
                    (at_a_p8)

                    ; #37727: origin
                    (not_at_a_p6)

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #37727: origin
                    (not_at_a_p6)

                    ; #61141: origin
                    (at_a_p9)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #26667: <==negation-removal== 37727 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #62944: origin
                    (not_at_a_p7)

                    ; #70316: origin
                    (at_a_p1)

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #62944: origin
                    (not_at_a_p7)

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11)
                           (not (leader_a)))
        :effect (and
                    ; #62944: origin
                    (not_at_a_p7)

                    ; #65790: origin
                    (at_a_p11)

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #62944: origin
                    (not_at_a_p7)

                    ; #65563: origin
                    (at_a_p12)

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #62944: origin
                    (not_at_a_p7)

                    ; #74935: origin
                    (at_a_p2)

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #62944: origin
                    (not_at_a_p7)

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #62944: origin
                    (not_at_a_p7)

                    ; #86662: origin
                    (at_a_p4)

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #35482: origin
                    (at_a_p5)

                    ; #62944: origin
                    (not_at_a_p7)

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #26667: origin
                    (at_a_p6)

                    ; #62944: origin
                    (not_at_a_p7)

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #51079: origin
                    (at_a_p7)

                    ; #62944: origin
                    (not_at_a_p7)

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #27930: origin
                    (at_a_p8)

                    ; #62944: origin
                    (not_at_a_p7)

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #61141: origin
                    (at_a_p9)

                    ; #62944: origin
                    (not_at_a_p7)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #51079: <==negation-removal== 62944 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #30123: origin
                    (not_at_a_p8)

                    ; #70316: origin
                    (at_a_p1)

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12972: origin
                    (at_a_p10)

                    ; #30123: origin
                    (not_at_a_p8)

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11)
                           (not (leader_a)))
        :effect (and
                    ; #30123: origin
                    (not_at_a_p8)

                    ; #65790: origin
                    (at_a_p11)

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #30123: origin
                    (not_at_a_p8)

                    ; #65563: origin
                    (at_a_p12)

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #30123: origin
                    (not_at_a_p8)

                    ; #74935: origin
                    (at_a_p2)

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #14458: origin
                    (at_a_p3)

                    ; #30123: origin
                    (not_at_a_p8)

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #30123: origin
                    (not_at_a_p8)

                    ; #86662: origin
                    (at_a_p4)

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #30123: origin
                    (not_at_a_p8)

                    ; #35482: origin
                    (at_a_p5)

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #26667: origin
                    (at_a_p6)

                    ; #30123: origin
                    (not_at_a_p8)

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #30123: origin
                    (not_at_a_p8)

                    ; #51079: origin
                    (at_a_p7)

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #27930: origin
                    (at_a_p8)

                    ; #30123: origin
                    (not_at_a_p8)

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #30123: origin
                    (not_at_a_p8)

                    ; #61141: origin
                    (at_a_p9)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #27930: <==negation-removal== 30123 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #70316: origin
                    (at_a_p1)

                    ; #23741: <==negation-removal== 70316 (pos)
                    (not (not_at_a_p1))

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #12972: origin
                    (at_a_p10)

                    ; #16710: <==negation-removal== 12972 (pos)
                    (not (not_at_a_p10))

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #65790: origin
                    (at_a_p11)

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))

                    ; #62529: <==negation-removal== 65790 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #65563: origin
                    (at_a_p12)

                    ; #39012: <==negation-removal== 65563 (pos)
                    (not (not_at_a_p12))

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #74935: origin
                    (at_a_p2)

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))

                    ; #84841: <==negation-removal== 74935 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #14458: origin
                    (at_a_p3)

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))

                    ; #83367: <==negation-removal== 14458 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #86662: origin
                    (at_a_p4)

                    ; #44047: <==negation-removal== 86662 (pos)
                    (not (not_at_a_p4))

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #35482: origin
                    (at_a_p5)

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))

                    ; #82289: <==negation-removal== 35482 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #26667: origin
                    (at_a_p6)

                    ; #37727: <==negation-removal== 26667 (pos)
                    (not (not_at_a_p6))

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #51079: origin
                    (at_a_p7)

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))

                    ; #62944: <==negation-removal== 51079 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #27930: origin
                    (at_a_p8)

                    ; #30123: <==negation-removal== 27930 (pos)
                    (not (not_at_a_p8))

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11975: origin
                    (not_at_a_p9)

                    ; #61141: origin
                    (at_a_p9)

                    ; #11975: <==negation-removal== 61141 (pos)
                    (not (not_at_a_p9))

                    ; #61141: <==negation-removal== 11975 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26060: origin
                    (at_b_p1)

                    ; #40519: origin
                    (not_at_b_p10)

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10)
                           (not (leader_b)))
        :effect (and
                    ; #24461: origin
                    (at_b_p10)

                    ; #40519: origin
                    (not_at_b_p10)

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #40519: origin
                    (not_at_b_p10)

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #40519: origin
                    (not_at_b_p10)

                    ; #60630: origin
                    (at_b_p12)

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #40519: origin
                    (not_at_b_p10)

                    ; #41525: origin
                    (at_b_p2)

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #40519: origin
                    (not_at_b_p10)

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #40519: origin
                    (not_at_b_p10)

                    ; #81992: origin
                    (at_b_p4)

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #37249: origin
                    (at_b_p5)

                    ; #40519: origin
                    (not_at_b_p10)

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #40519: origin
                    (not_at_b_p10)

                    ; #73293: origin
                    (at_b_p6)

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #40519: origin
                    (not_at_b_p10)

                    ; #49214: origin
                    (at_b_p7)

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8)
                           (not (leader_b)))
        :effect (and
                    ; #40519: origin
                    (not_at_b_p10)

                    ; #42575: origin
                    (at_b_p8)

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #40519: origin
                    (not_at_b_p10)

                    ; #58112: origin
                    (at_b_p9)

                    ; #24461: <==negation-removal== 40519 (pos)
                    (not (at_b_p10))

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #26060: origin
                    (at_b_p1)

                    ; #27339: origin
                    (not_at_b_p11)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #24461: origin
                    (at_b_p10)

                    ; #27339: origin
                    (not_at_b_p11)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #27339: origin
                    (not_at_b_p11)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #27339: origin
                    (not_at_b_p11)

                    ; #60630: origin
                    (at_b_p12)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #27339: origin
                    (not_at_b_p11)

                    ; #41525: origin
                    (at_b_p2)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #27339: origin
                    (not_at_b_p11)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #27339: origin
                    (not_at_b_p11)

                    ; #81992: origin
                    (at_b_p4)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #27339: origin
                    (not_at_b_p11)

                    ; #37249: origin
                    (at_b_p5)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #27339: origin
                    (not_at_b_p11)

                    ; #73293: origin
                    (at_b_p6)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #27339: origin
                    (not_at_b_p11)

                    ; #49214: origin
                    (at_b_p7)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #27339: origin
                    (not_at_b_p11)

                    ; #42575: origin
                    (at_b_p8)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #27339: origin
                    (not_at_b_p11)

                    ; #58112: origin
                    (at_b_p9)

                    ; #13574: <==negation-removal== 27339 (pos)
                    (not (at_b_p11))

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26060: origin
                    (at_b_p1)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #24461: origin
                    (at_b_p10)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #60630: origin
                    (at_b_p12)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2)
                           (not (leader_b)))
        :effect (and
                    ; #41525: origin
                    (at_b_p2)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4)
                           (not (leader_b)))
        :effect (and
                    ; #79872: origin
                    (not_at_b_p12)

                    ; #81992: origin
                    (at_b_p4)

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5)
                           (not (leader_b)))
        :effect (and
                    ; #37249: origin
                    (at_b_p5)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73293: origin
                    (at_b_p6)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7)
                           (not (leader_b)))
        :effect (and
                    ; #49214: origin
                    (at_b_p7)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8)
                           (not (leader_b)))
        :effect (and
                    ; #42575: origin
                    (at_b_p8)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9)
                           (not (leader_b)))
        :effect (and
                    ; #58112: origin
                    (at_b_p9)

                    ; #79872: origin
                    (not_at_b_p12)

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))

                    ; #60630: <==negation-removal== 79872 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26060: origin
                    (at_b_p1)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24461: origin
                    (at_b_p10)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #60630: origin
                    (at_b_p12)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #41525: origin
                    (at_b_p2)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #81992: origin
                    (at_b_p4)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #37249: origin
                    (at_b_p5)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #73293: origin
                    (at_b_p6)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #49214: origin
                    (at_b_p7)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #42575: origin
                    (at_b_p8)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #58112: origin
                    (at_b_p9)

                    ; #90559: origin
                    (not_at_b_p1)

                    ; #26060: <==negation-removal== 90559 (pos)
                    (not (at_b_p1))

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26060: origin
                    (at_b_p1)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10)
                           (not (leader_b)))
        :effect (and
                    ; #24461: origin
                    (at_b_p10)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12)
                           (not (leader_b)))
        :effect (and
                    ; #60630: origin
                    (at_b_p12)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #41525: origin
                    (at_b_p2)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #81992: origin
                    (at_b_p4)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #37249: origin
                    (at_b_p5)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73293: origin
                    (at_b_p6)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #49214: origin
                    (at_b_p7)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #42575: origin
                    (at_b_p8)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #58112: origin
                    (at_b_p9)

                    ; #85712: origin
                    (not_at_b_p2)

                    ; #41525: <==negation-removal== 85712 (pos)
                    (not (at_b_p2))

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26060: origin
                    (at_b_p1)

                    ; #49444: origin
                    (not_at_b_p3)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10)
                           (not (leader_b)))
        :effect (and
                    ; #24461: origin
                    (at_b_p10)

                    ; #49444: origin
                    (not_at_b_p3)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #49444: origin
                    (not_at_b_p3)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12)
                           (not (leader_b)))
        :effect (and
                    ; #49444: origin
                    (not_at_b_p3)

                    ; #60630: origin
                    (at_b_p12)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #41525: origin
                    (at_b_p2)

                    ; #49444: origin
                    (not_at_b_p3)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #49444: origin
                    (not_at_b_p3)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #49444: origin
                    (not_at_b_p3)

                    ; #81992: origin
                    (at_b_p4)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #37249: origin
                    (at_b_p5)

                    ; #49444: origin
                    (not_at_b_p3)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #49444: origin
                    (not_at_b_p3)

                    ; #73293: origin
                    (at_b_p6)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #49214: origin
                    (at_b_p7)

                    ; #49444: origin
                    (not_at_b_p3)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #42575: origin
                    (at_b_p8)

                    ; #49444: origin
                    (not_at_b_p3)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #49444: origin
                    (not_at_b_p3)

                    ; #58112: origin
                    (at_b_p9)

                    ; #14454: <==negation-removal== 49444 (pos)
                    (not (at_b_p3))

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24336: origin
                    (not_at_b_p4)

                    ; #26060: origin
                    (at_b_p1)

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24336: origin
                    (not_at_b_p4)

                    ; #24461: origin
                    (at_b_p10)

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #24336: origin
                    (not_at_b_p4)

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12)
                           (not (leader_b)))
        :effect (and
                    ; #24336: origin
                    (not_at_b_p4)

                    ; #60630: origin
                    (at_b_p12)

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24336: origin
                    (not_at_b_p4)

                    ; #41525: origin
                    (at_b_p2)

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #24336: origin
                    (not_at_b_p4)

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24336: origin
                    (not_at_b_p4)

                    ; #81992: origin
                    (at_b_p4)

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24336: origin
                    (not_at_b_p4)

                    ; #37249: origin
                    (at_b_p5)

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24336: origin
                    (not_at_b_p4)

                    ; #73293: origin
                    (at_b_p6)

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24336: origin
                    (not_at_b_p4)

                    ; #49214: origin
                    (at_b_p7)

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24336: origin
                    (not_at_b_p4)

                    ; #42575: origin
                    (at_b_p8)

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24336: origin
                    (not_at_b_p4)

                    ; #58112: origin
                    (at_b_p9)

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))

                    ; #81992: <==negation-removal== 24336 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26060: origin
                    (at_b_p1)

                    ; #71869: origin
                    (not_at_b_p5)

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10)
                           (not (leader_b)))
        :effect (and
                    ; #24461: origin
                    (at_b_p10)

                    ; #71869: origin
                    (not_at_b_p5)

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #71869: origin
                    (not_at_b_p5)

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #60630: origin
                    (at_b_p12)

                    ; #71869: origin
                    (not_at_b_p5)

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #41525: origin
                    (at_b_p2)

                    ; #71869: origin
                    (not_at_b_p5)

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #71869: origin
                    (not_at_b_p5)

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #71869: origin
                    (not_at_b_p5)

                    ; #81992: origin
                    (at_b_p4)

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #37249: origin
                    (at_b_p5)

                    ; #71869: origin
                    (not_at_b_p5)

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #71869: origin
                    (not_at_b_p5)

                    ; #73293: origin
                    (at_b_p6)

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #49214: origin
                    (at_b_p7)

                    ; #71869: origin
                    (not_at_b_p5)

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #42575: origin
                    (at_b_p8)

                    ; #71869: origin
                    (not_at_b_p5)

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #58112: origin
                    (at_b_p9)

                    ; #71869: origin
                    (not_at_b_p5)

                    ; #37249: <==negation-removal== 71869 (pos)
                    (not (at_b_p5))

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19408: origin
                    (not_at_b_p6)

                    ; #26060: origin
                    (at_b_p1)

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19408: origin
                    (not_at_b_p6)

                    ; #24461: origin
                    (at_b_p10)

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #19408: origin
                    (not_at_b_p6)

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19408: origin
                    (not_at_b_p6)

                    ; #60630: origin
                    (at_b_p12)

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19408: origin
                    (not_at_b_p6)

                    ; #41525: origin
                    (at_b_p2)

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #19408: origin
                    (not_at_b_p6)

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19408: origin
                    (not_at_b_p6)

                    ; #81992: origin
                    (at_b_p4)

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #19408: origin
                    (not_at_b_p6)

                    ; #37249: origin
                    (at_b_p5)

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19408: origin
                    (not_at_b_p6)

                    ; #73293: origin
                    (at_b_p6)

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19408: origin
                    (not_at_b_p6)

                    ; #49214: origin
                    (at_b_p7)

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19408: origin
                    (not_at_b_p6)

                    ; #42575: origin
                    (at_b_p8)

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #19408: origin
                    (not_at_b_p6)

                    ; #58112: origin
                    (at_b_p9)

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))

                    ; #73293: <==negation-removal== 19408 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26060: origin
                    (at_b_p1)

                    ; #61219: origin
                    (not_at_b_p7)

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #24461: origin
                    (at_b_p10)

                    ; #61219: origin
                    (not_at_b_p7)

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #61219: origin
                    (not_at_b_p7)

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #60630: origin
                    (at_b_p12)

                    ; #61219: origin
                    (not_at_b_p7)

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #41525: origin
                    (at_b_p2)

                    ; #61219: origin
                    (not_at_b_p7)

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #61219: origin
                    (not_at_b_p7)

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #61219: origin
                    (not_at_b_p7)

                    ; #81992: origin
                    (at_b_p4)

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #37249: origin
                    (at_b_p5)

                    ; #61219: origin
                    (not_at_b_p7)

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #61219: origin
                    (not_at_b_p7)

                    ; #73293: origin
                    (at_b_p6)

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #49214: origin
                    (at_b_p7)

                    ; #61219: origin
                    (not_at_b_p7)

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #42575: origin
                    (at_b_p8)

                    ; #61219: origin
                    (not_at_b_p7)

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #58112: origin
                    (at_b_p9)

                    ; #61219: origin
                    (not_at_b_p7)

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))

                    ; #49214: <==negation-removal== 61219 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26060: origin
                    (at_b_p1)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10)
                           (not (leader_b)))
        :effect (and
                    ; #24461: origin
                    (at_b_p10)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12)
                           (not (leader_b)))
        :effect (and
                    ; #60630: origin
                    (at_b_p12)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2)
                           (not (leader_b)))
        :effect (and
                    ; #41525: origin
                    (at_b_p2)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4)
                           (not (leader_b)))
        :effect (and
                    ; #81992: origin
                    (at_b_p4)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #37249: origin
                    (at_b_p5)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73293: origin
                    (at_b_p6)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #49214: origin
                    (at_b_p7)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8)
                           (not (leader_b)))
        :effect (and
                    ; #42575: origin
                    (at_b_p8)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #58112: origin
                    (at_b_p9)

                    ; #91805: origin
                    (not_at_b_p8)

                    ; #42575: <==negation-removal== 91805 (pos)
                    (not (at_b_p8))

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #26060: origin
                    (at_b_p1)

                    ; #47507: origin
                    (not_at_b_p9)

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))

                    ; #90559: <==negation-removal== 26060 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #24461: origin
                    (at_b_p10)

                    ; #47507: origin
                    (not_at_b_p9)

                    ; #40519: <==negation-removal== 24461 (pos)
                    (not (not_at_b_p10))

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11)
                           (not (leader_b)))
        :effect (and
                    ; #13574: origin
                    (at_b_p11)

                    ; #47507: origin
                    (not_at_b_p9)

                    ; #27339: <==negation-removal== 13574 (pos)
                    (not (not_at_b_p11))

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #47507: origin
                    (not_at_b_p9)

                    ; #60630: origin
                    (at_b_p12)

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))

                    ; #79872: <==negation-removal== 60630 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #41525: origin
                    (at_b_p2)

                    ; #47507: origin
                    (not_at_b_p9)

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))

                    ; #85712: <==negation-removal== 41525 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #14454: origin
                    (at_b_p3)

                    ; #47507: origin
                    (not_at_b_p9)

                    ; #49444: <==negation-removal== 14454 (pos)
                    (not (not_at_b_p3))

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #47507: origin
                    (not_at_b_p9)

                    ; #81992: origin
                    (at_b_p4)

                    ; #24336: <==negation-removal== 81992 (pos)
                    (not (not_at_b_p4))

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37249: origin
                    (at_b_p5)

                    ; #47507: origin
                    (not_at_b_p9)

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))

                    ; #71869: <==negation-removal== 37249 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #47507: origin
                    (not_at_b_p9)

                    ; #73293: origin
                    (at_b_p6)

                    ; #19408: <==negation-removal== 73293 (pos)
                    (not (not_at_b_p6))

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #47507: origin
                    (not_at_b_p9)

                    ; #49214: origin
                    (at_b_p7)

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))

                    ; #61219: <==negation-removal== 49214 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #42575: origin
                    (at_b_p8)

                    ; #47507: origin
                    (not_at_b_p9)

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))

                    ; #91805: <==negation-removal== 42575 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #47507: origin
                    (not_at_b_p9)

                    ; #58112: origin
                    (at_b_p9)

                    ; #47507: <==negation-removal== 58112 (pos)
                    (not (not_at_b_p9))

                    ; #58112: <==negation-removal== 47507 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17051: origin
                    (at_c_p1)

                    ; #79059: origin
                    (not_at_c_p10)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #79059: origin
                    (not_at_c_p10)

                    ; #80686: origin
                    (at_c_p10)

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #64317: origin
                    (at_c_p11)

                    ; #79059: origin
                    (not_at_c_p10)

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #57898: origin
                    (at_c_p12)

                    ; #79059: origin
                    (not_at_c_p10)

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #53026: origin
                    (at_c_p2)

                    ; #79059: origin
                    (not_at_c_p10)

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3)
                           (not (leader_c)))
        :effect (and
                    ; #27355: origin
                    (at_c_p3)

                    ; #79059: origin
                    (not_at_c_p10)

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #79059: origin
                    (not_at_c_p10)

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #36065: origin
                    (at_c_p5)

                    ; #79059: origin
                    (not_at_c_p10)

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #79059: origin
                    (not_at_c_p10)

                    ; #88903: origin
                    (at_c_p6)

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50694: origin
                    (at_c_p7)

                    ; #79059: origin
                    (not_at_c_p10)

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8)
                           (not (leader_c)))
        :effect (and
                    ; #79059: origin
                    (not_at_c_p10)

                    ; #87919: origin
                    (at_c_p8)

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9)
                           (not (leader_c)))
        :effect (and
                    ; #79059: origin
                    (not_at_c_p10)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #80686: <==negation-removal== 79059 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17051: origin
                    (at_c_p1)

                    ; #41019: origin
                    (not_at_c_p11)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #41019: origin
                    (not_at_c_p11)

                    ; #80686: origin
                    (at_c_p10)

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11)
                           (not (leader_c)))
        :effect (and
                    ; #41019: origin
                    (not_at_c_p11)

                    ; #64317: origin
                    (at_c_p11)

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12)
                           (not (leader_c)))
        :effect (and
                    ; #41019: origin
                    (not_at_c_p11)

                    ; #57898: origin
                    (at_c_p12)

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41019: origin
                    (not_at_c_p11)

                    ; #53026: origin
                    (at_c_p2)

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3)
                           (not (leader_c)))
        :effect (and
                    ; #27355: origin
                    (at_c_p3)

                    ; #41019: origin
                    (not_at_c_p11)

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #41019: origin
                    (not_at_c_p11)

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5)
                           (not (leader_c)))
        :effect (and
                    ; #36065: origin
                    (at_c_p5)

                    ; #41019: origin
                    (not_at_c_p11)

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6)
                           (not (leader_c)))
        :effect (and
                    ; #41019: origin
                    (not_at_c_p11)

                    ; #88903: origin
                    (at_c_p6)

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7)
                           (not (leader_c)))
        :effect (and
                    ; #41019: origin
                    (not_at_c_p11)

                    ; #50694: origin
                    (at_c_p7)

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41019: origin
                    (not_at_c_p11)

                    ; #87919: origin
                    (at_c_p8)

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9)
                           (not (leader_c)))
        :effect (and
                    ; #41019: origin
                    (not_at_c_p11)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #64317: <==negation-removal== 41019 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #17051: origin
                    (at_c_p1)

                    ; #50128: origin
                    (not_at_c_p12)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50128: origin
                    (not_at_c_p12)

                    ; #80686: origin
                    (at_c_p10)

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11)
                           (not (leader_c)))
        :effect (and
                    ; #50128: origin
                    (not_at_c_p12)

                    ; #64317: origin
                    (at_c_p11)

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12)
                           (not (leader_c)))
        :effect (and
                    ; #50128: origin
                    (not_at_c_p12)

                    ; #57898: origin
                    (at_c_p12)

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #50128: origin
                    (not_at_c_p12)

                    ; #53026: origin
                    (at_c_p2)

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3)
                           (not (leader_c)))
        :effect (and
                    ; #27355: origin
                    (at_c_p3)

                    ; #50128: origin
                    (not_at_c_p12)

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #50128: origin
                    (not_at_c_p12)

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #36065: origin
                    (at_c_p5)

                    ; #50128: origin
                    (not_at_c_p12)

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #50128: origin
                    (not_at_c_p12)

                    ; #88903: origin
                    (at_c_p6)

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50128: origin
                    (not_at_c_p12)

                    ; #50694: origin
                    (at_c_p7)

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8)
                           (not (leader_c)))
        :effect (and
                    ; #50128: origin
                    (not_at_c_p12)

                    ; #87919: origin
                    (at_c_p8)

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #50128: origin
                    (not_at_c_p12)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #57898: <==negation-removal== 50128 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #17051: origin
                    (at_c_p1)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #80686: origin
                    (at_c_p10)

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #64317: origin
                    (at_c_p11)

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #57898: origin
                    (at_c_p12)

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #53026: origin
                    (at_c_p2)

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #27355: origin
                    (at_c_p3)

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #15660: origin
                    (at_c_p4)

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #36065: origin
                    (at_c_p5)

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #88903: origin
                    (at_c_p6)

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #50694: origin
                    (at_c_p7)

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #87919: origin
                    (at_c_p8)

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10421: origin
                    (not_at_c_p1)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #17051: <==negation-removal== 10421 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #17051: origin
                    (at_c_p1)

                    ; #72613: origin
                    (not_at_c_p2)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #72613: origin
                    (not_at_c_p2)

                    ; #80686: origin
                    (at_c_p10)

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #64317: origin
                    (at_c_p11)

                    ; #72613: origin
                    (not_at_c_p2)

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #57898: origin
                    (at_c_p12)

                    ; #72613: origin
                    (not_at_c_p2)

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #53026: origin
                    (at_c_p2)

                    ; #72613: origin
                    (not_at_c_p2)

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #27355: origin
                    (at_c_p3)

                    ; #72613: origin
                    (not_at_c_p2)

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #72613: origin
                    (not_at_c_p2)

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #36065: origin
                    (at_c_p5)

                    ; #72613: origin
                    (not_at_c_p2)

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #72613: origin
                    (not_at_c_p2)

                    ; #88903: origin
                    (at_c_p6)

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #50694: origin
                    (at_c_p7)

                    ; #72613: origin
                    (not_at_c_p2)

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #72613: origin
                    (not_at_c_p2)

                    ; #87919: origin
                    (at_c_p8)

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #72613: origin
                    (not_at_c_p2)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #53026: <==negation-removal== 72613 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17051: origin
                    (at_c_p1)

                    ; #51795: origin
                    (not_at_c_p3)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10)
                           (not (leader_c)))
        :effect (and
                    ; #51795: origin
                    (not_at_c_p3)

                    ; #80686: origin
                    (at_c_p10)

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #51795: origin
                    (not_at_c_p3)

                    ; #64317: origin
                    (at_c_p11)

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12)
                           (not (leader_c)))
        :effect (and
                    ; #51795: origin
                    (not_at_c_p3)

                    ; #57898: origin
                    (at_c_p12)

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #51795: origin
                    (not_at_c_p3)

                    ; #53026: origin
                    (at_c_p2)

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #27355: origin
                    (at_c_p3)

                    ; #51795: origin
                    (not_at_c_p3)

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #51795: origin
                    (not_at_c_p3)

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #36065: origin
                    (at_c_p5)

                    ; #51795: origin
                    (not_at_c_p3)

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #51795: origin
                    (not_at_c_p3)

                    ; #88903: origin
                    (at_c_p6)

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #50694: origin
                    (at_c_p7)

                    ; #51795: origin
                    (not_at_c_p3)

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #51795: origin
                    (not_at_c_p3)

                    ; #87919: origin
                    (at_c_p8)

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #51795: origin
                    (not_at_c_p3)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #27355: <==negation-removal== 51795 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17051: origin
                    (at_c_p1)

                    ; #18284: origin
                    (not_at_c_p4)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #18284: origin
                    (not_at_c_p4)

                    ; #80686: origin
                    (at_c_p10)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #18284: origin
                    (not_at_c_p4)

                    ; #64317: origin
                    (at_c_p11)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12)
                           (not (leader_c)))
        :effect (and
                    ; #18284: origin
                    (not_at_c_p4)

                    ; #57898: origin
                    (at_c_p12)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #18284: origin
                    (not_at_c_p4)

                    ; #53026: origin
                    (at_c_p2)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #18284: origin
                    (not_at_c_p4)

                    ; #27355: origin
                    (at_c_p3)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #18284: origin
                    (not_at_c_p4)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #18284: origin
                    (not_at_c_p4)

                    ; #36065: origin
                    (at_c_p5)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6)
                           (not (leader_c)))
        :effect (and
                    ; #18284: origin
                    (not_at_c_p4)

                    ; #88903: origin
                    (at_c_p6)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #18284: origin
                    (not_at_c_p4)

                    ; #50694: origin
                    (at_c_p7)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #18284: origin
                    (not_at_c_p4)

                    ; #87919: origin
                    (at_c_p8)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #18284: origin
                    (not_at_c_p4)

                    ; #91154: origin
                    (at_c_p9)

                    ; #15660: <==negation-removal== 18284 (pos)
                    (not (at_c_p4))

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17051: origin
                    (at_c_p1)

                    ; #57858: origin
                    (not_at_c_p5)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10)
                           (not (leader_c)))
        :effect (and
                    ; #57858: origin
                    (not_at_c_p5)

                    ; #80686: origin
                    (at_c_p10)

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11)
                           (not (leader_c)))
        :effect (and
                    ; #57858: origin
                    (not_at_c_p5)

                    ; #64317: origin
                    (at_c_p11)

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12)
                           (not (leader_c)))
        :effect (and
                    ; #57858: origin
                    (not_at_c_p5)

                    ; #57898: origin
                    (at_c_p12)

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #53026: origin
                    (at_c_p2)

                    ; #57858: origin
                    (not_at_c_p5)

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #27355: origin
                    (at_c_p3)

                    ; #57858: origin
                    (not_at_c_p5)

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #57858: origin
                    (not_at_c_p5)

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #36065: origin
                    (at_c_p5)

                    ; #57858: origin
                    (not_at_c_p5)

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #57858: origin
                    (not_at_c_p5)

                    ; #88903: origin
                    (at_c_p6)

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #50694: origin
                    (at_c_p7)

                    ; #57858: origin
                    (not_at_c_p5)

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #57858: origin
                    (not_at_c_p5)

                    ; #87919: origin
                    (at_c_p8)

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #57858: origin
                    (not_at_c_p5)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #36065: <==negation-removal== 57858 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17051: origin
                    (at_c_p1)

                    ; #41492: origin
                    (not_at_c_p6)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41492: origin
                    (not_at_c_p6)

                    ; #80686: origin
                    (at_c_p10)

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11)
                           (not (leader_c)))
        :effect (and
                    ; #41492: origin
                    (not_at_c_p6)

                    ; #64317: origin
                    (at_c_p11)

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #41492: origin
                    (not_at_c_p6)

                    ; #57898: origin
                    (at_c_p12)

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41492: origin
                    (not_at_c_p6)

                    ; #53026: origin
                    (at_c_p2)

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #27355: origin
                    (at_c_p3)

                    ; #41492: origin
                    (not_at_c_p6)

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #41492: origin
                    (not_at_c_p6)

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #36065: origin
                    (at_c_p5)

                    ; #41492: origin
                    (not_at_c_p6)

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #41492: origin
                    (not_at_c_p6)

                    ; #88903: origin
                    (at_c_p6)

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #41492: origin
                    (not_at_c_p6)

                    ; #50694: origin
                    (at_c_p7)

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41492: origin
                    (not_at_c_p6)

                    ; #87919: origin
                    (at_c_p8)

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #41492: origin
                    (not_at_c_p6)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #88903: <==negation-removal== 41492 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #17051: origin
                    (at_c_p1)

                    ; #77456: origin
                    (not_at_c_p7)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #77456: origin
                    (not_at_c_p7)

                    ; #80686: origin
                    (at_c_p10)

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #64317: origin
                    (at_c_p11)

                    ; #77456: origin
                    (not_at_c_p7)

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #57898: origin
                    (at_c_p12)

                    ; #77456: origin
                    (not_at_c_p7)

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #53026: origin
                    (at_c_p2)

                    ; #77456: origin
                    (not_at_c_p7)

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27355: origin
                    (at_c_p3)

                    ; #77456: origin
                    (not_at_c_p7)

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #77456: origin
                    (not_at_c_p7)

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #36065: origin
                    (at_c_p5)

                    ; #77456: origin
                    (not_at_c_p7)

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #77456: origin
                    (not_at_c_p7)

                    ; #88903: origin
                    (at_c_p6)

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50694: origin
                    (at_c_p7)

                    ; #77456: origin
                    (not_at_c_p7)

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #77456: origin
                    (not_at_c_p7)

                    ; #87919: origin
                    (at_c_p8)

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #77456: origin
                    (not_at_c_p7)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #50694: <==negation-removal== 77456 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17051: origin
                    (at_c_p1)

                    ; #86261: origin
                    (not_at_c_p8)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10)
                           (not (leader_c)))
        :effect (and
                    ; #80686: origin
                    (at_c_p10)

                    ; #86261: origin
                    (not_at_c_p8)

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #64317: origin
                    (at_c_p11)

                    ; #86261: origin
                    (not_at_c_p8)

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #57898: origin
                    (at_c_p12)

                    ; #86261: origin
                    (not_at_c_p8)

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #53026: origin
                    (at_c_p2)

                    ; #86261: origin
                    (not_at_c_p8)

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27355: origin
                    (at_c_p3)

                    ; #86261: origin
                    (not_at_c_p8)

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #86261: origin
                    (not_at_c_p8)

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #36065: origin
                    (at_c_p5)

                    ; #86261: origin
                    (not_at_c_p8)

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #86261: origin
                    (not_at_c_p8)

                    ; #88903: origin
                    (at_c_p6)

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #50694: origin
                    (at_c_p7)

                    ; #86261: origin
                    (not_at_c_p8)

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #86261: origin
                    (not_at_c_p8)

                    ; #87919: origin
                    (at_c_p8)

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #86261: origin
                    (not_at_c_p8)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #87919: <==negation-removal== 86261 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #17051: origin
                    (at_c_p1)

                    ; #10421: <==negation-removal== 17051 (pos)
                    (not (not_at_c_p1))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #80686: origin
                    (at_c_p10)

                    ; #79059: <==negation-removal== 80686 (pos)
                    (not (not_at_c_p10))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #64317: origin
                    (at_c_p11)

                    ; #41019: <==negation-removal== 64317 (pos)
                    (not (not_at_c_p11))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #57898: origin
                    (at_c_p12)

                    ; #50128: <==negation-removal== 57898 (pos)
                    (not (not_at_c_p12))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #53026: origin
                    (at_c_p2)

                    ; #72613: <==negation-removal== 53026 (pos)
                    (not (not_at_c_p2))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #27355: origin
                    (at_c_p3)

                    ; #51795: <==negation-removal== 27355 (pos)
                    (not (not_at_c_p3))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15660: origin
                    (at_c_p4)

                    ; #16686: origin
                    (not_at_c_p9)

                    ; #18284: <==negation-removal== 15660 (pos)
                    (not (not_at_c_p4))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #36065: origin
                    (at_c_p5)

                    ; #57858: <==negation-removal== 36065 (pos)
                    (not (not_at_c_p5))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #88903: origin
                    (at_c_p6)

                    ; #41492: <==negation-removal== 88903 (pos)
                    (not (not_at_c_p6))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #50694: origin
                    (at_c_p7)

                    ; #77456: <==negation-removal== 50694 (pos)
                    (not (not_at_c_p7))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #87919: origin
                    (at_c_p8)

                    ; #86261: <==negation-removal== 87919 (pos)
                    (not (not_at_c_p8))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #16686: origin
                    (not_at_c_p9)

                    ; #91154: origin
                    (at_c_p9)

                    ; #16686: <==negation-removal== 91154 (pos)
                    (not (not_at_c_p9))

                    ; #91154: <==negation-removal== 16686 (pos)
                    (not (at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #25659: origin
                    (at_d_p1)

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #52841: origin
                    (at_d_p10)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #20103: origin
                    (at_d_p11)

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #57185: origin
                    (at_d_p12)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #85714: origin
                    (at_d_p2)

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p10_p3
        :precondition (and (at_d_p10)
                           (succ_p10_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12455: origin
                    (at_d_p3)

                    ; #13566: origin
                    (not_at_d_p10)

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p10_p4
        :precondition (and (at_d_p10)
                           (succ_p10_p4)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #24644: origin
                    (at_d_p4)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #77628: origin
                    (at_d_p5)

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #28205: origin
                    (at_d_p7)

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #42547: origin
                    (at_d_p8)

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p10_p9
        :precondition (and (at_d_p10)
                           (succ_p10_p9)
                           (not (leader_d)))
        :effect (and
                    ; #13566: origin
                    (not_at_d_p10)

                    ; #38046: origin
                    (at_d_p9)

                    ; #52841: <==negation-removal== 13566 (pos)
                    (not (at_d_p10))

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #25659: origin
                    (at_d_p1)

                    ; #26487: origin
                    (not_at_d_p11)

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #26487: origin
                    (not_at_d_p11)

                    ; #52841: origin
                    (at_d_p10)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #20103: origin
                    (at_d_p11)

                    ; #26487: origin
                    (not_at_d_p11)

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #26487: origin
                    (not_at_d_p11)

                    ; #57185: origin
                    (at_d_p12)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #26487: origin
                    (not_at_d_p11)

                    ; #85714: origin
                    (at_d_p2)

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #12455: origin
                    (at_d_p3)

                    ; #26487: origin
                    (not_at_d_p11)

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #24644: origin
                    (at_d_p4)

                    ; #26487: origin
                    (not_at_d_p11)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #26487: origin
                    (not_at_d_p11)

                    ; #77628: origin
                    (at_d_p5)

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #26487: origin
                    (not_at_d_p11)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #26487: origin
                    (not_at_d_p11)

                    ; #28205: origin
                    (at_d_p7)

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #26487: origin
                    (not_at_d_p11)

                    ; #42547: origin
                    (at_d_p8)

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #26487: origin
                    (not_at_d_p11)

                    ; #38046: origin
                    (at_d_p9)

                    ; #20103: <==negation-removal== 26487 (pos)
                    (not (at_d_p11))

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #25659: origin
                    (at_d_p1)

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p10
        :precondition (and (at_d_p12)
                           (succ_p12_p10)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #52841: origin
                    (at_d_p10)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #20103: origin
                    (at_d_p11)

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #57185: origin
                    (at_d_p12)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #85714: origin
                    (at_d_p2)

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (at_d_p12)
                           (succ_p12_p3)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #12455: origin
                    (at_d_p3)

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #24644: origin
                    (at_d_p4)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #77628: origin
                    (at_d_p5)

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p7
        :precondition (and (at_d_p12)
                           (succ_p12_p7)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #28205: origin
                    (at_d_p7)

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p12_p8
        :precondition (and (at_d_p12)
                           (succ_p12_p8)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #42547: origin
                    (at_d_p8)

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #10399: origin
                    (not_at_d_p12)

                    ; #38046: origin
                    (at_d_p9)

                    ; #57185: <==negation-removal== 10399 (pos)
                    (not (at_d_p12))

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1)
                           (not (leader_d)))
        :effect (and
                    ; #25659: origin
                    (at_d_p1)

                    ; #43148: origin
                    (not_at_d_p1)

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (at_d_p1)
                           (succ_p1_p10)
                           (not (leader_d)))
        :effect (and
                    ; #43148: origin
                    (not_at_d_p1)

                    ; #52841: origin
                    (at_d_p10)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #20103: origin
                    (at_d_p11)

                    ; #43148: origin
                    (not_at_d_p1)

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #43148: origin
                    (not_at_d_p1)

                    ; #57185: origin
                    (at_d_p12)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #43148: origin
                    (not_at_d_p1)

                    ; #85714: origin
                    (at_d_p2)

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (at_d_p1)
                           (succ_p1_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12455: origin
                    (at_d_p3)

                    ; #43148: origin
                    (not_at_d_p1)

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #24644: origin
                    (at_d_p4)

                    ; #43148: origin
                    (not_at_d_p1)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5)
                           (not (leader_d)))
        :effect (and
                    ; #43148: origin
                    (not_at_d_p1)

                    ; #77628: origin
                    (at_d_p5)

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #43148: origin
                    (not_at_d_p1)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p7
        :precondition (and (at_d_p1)
                           (succ_p1_p7)
                           (not (leader_d)))
        :effect (and
                    ; #28205: origin
                    (at_d_p7)

                    ; #43148: origin
                    (not_at_d_p1)

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8)
                           (not (leader_d)))
        :effect (and
                    ; #42547: origin
                    (at_d_p8)

                    ; #43148: origin
                    (not_at_d_p1)

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9)
                           (not (leader_d)))
        :effect (and
                    ; #38046: origin
                    (at_d_p9)

                    ; #43148: origin
                    (not_at_d_p1)

                    ; #25659: <==negation-removal== 43148 (pos)
                    (not (at_d_p1))

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1)
                           (not (leader_d)))
        :effect (and
                    ; #25659: origin
                    (at_d_p1)

                    ; #60809: origin
                    (not_at_d_p2)

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p10
        :precondition (and (at_d_p2)
                           (succ_p2_p10)
                           (not (leader_d)))
        :effect (and
                    ; #52841: origin
                    (at_d_p10)

                    ; #60809: origin
                    (not_at_d_p2)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p11
        :precondition (and (at_d_p2)
                           (succ_p2_p11)
                           (not (leader_d)))
        :effect (and
                    ; #20103: origin
                    (at_d_p11)

                    ; #60809: origin
                    (not_at_d_p2)

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (at_d_p2)
                           (succ_p2_p12)
                           (not (leader_d)))
        :effect (and
                    ; #57185: origin
                    (at_d_p12)

                    ; #60809: origin
                    (not_at_d_p2)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2)
                           (not (leader_d)))
        :effect (and
                    ; #60809: origin
                    (not_at_d_p2)

                    ; #85714: origin
                    (at_d_p2)

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (at_d_p2)
                           (succ_p2_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12455: origin
                    (at_d_p3)

                    ; #60809: origin
                    (not_at_d_p2)

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4)
                           (not (leader_d)))
        :effect (and
                    ; #24644: origin
                    (at_d_p4)

                    ; #60809: origin
                    (not_at_d_p2)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5)
                           (not (leader_d)))
        :effect (and
                    ; #60809: origin
                    (not_at_d_p2)

                    ; #77628: origin
                    (at_d_p5)

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (at_d_p2)
                           (succ_p2_p6)
                           (not (leader_d)))
        :effect (and
                    ; #60809: origin
                    (not_at_d_p2)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7)
                           (not (leader_d)))
        :effect (and
                    ; #28205: origin
                    (at_d_p7)

                    ; #60809: origin
                    (not_at_d_p2)

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8)
                           (not (leader_d)))
        :effect (and
                    ; #42547: origin
                    (at_d_p8)

                    ; #60809: origin
                    (not_at_d_p2)

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9)
                           (not (leader_d)))
        :effect (and
                    ; #38046: origin
                    (at_d_p9)

                    ; #60809: origin
                    (not_at_d_p2)

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))

                    ; #85714: <==negation-removal== 60809 (pos)
                    (not (at_d_p2))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #25659: origin
                    (at_d_p1)

                    ; #71113: origin
                    (not_at_d_p3)

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #52841: origin
                    (at_d_p10)

                    ; #71113: origin
                    (not_at_d_p3)

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #20103: origin
                    (at_d_p11)

                    ; #71113: origin
                    (not_at_d_p3)

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #57185: origin
                    (at_d_p12)

                    ; #71113: origin
                    (not_at_d_p3)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #71113: origin
                    (not_at_d_p3)

                    ; #85714: origin
                    (at_d_p2)

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12455: origin
                    (at_d_p3)

                    ; #71113: origin
                    (not_at_d_p3)

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #24644: origin
                    (at_d_p4)

                    ; #71113: origin
                    (not_at_d_p3)

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #71113: origin
                    (not_at_d_p3)

                    ; #77628: origin
                    (at_d_p5)

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #71113: origin
                    (not_at_d_p3)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #28205: origin
                    (at_d_p7)

                    ; #71113: origin
                    (not_at_d_p3)

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #42547: origin
                    (at_d_p8)

                    ; #71113: origin
                    (not_at_d_p3)

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #38046: origin
                    (at_d_p9)

                    ; #71113: origin
                    (not_at_d_p3)

                    ; #12455: <==negation-removal== 71113 (pos)
                    (not (at_d_p3))

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #25659: origin
                    (at_d_p1)

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #52841: origin
                    (at_d_p10)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #20103: origin
                    (at_d_p11)

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #57185: origin
                    (at_d_p12)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #85714: origin
                    (at_d_p2)

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12455: origin
                    (at_d_p3)

                    ; #12887: origin
                    (not_at_d_p4)

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #24644: origin
                    (at_d_p4)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #77628: origin
                    (at_d_p5)

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #28205: origin
                    (at_d_p7)

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #42547: origin
                    (at_d_p8)

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9)
                           (not (leader_d)))
        :effect (and
                    ; #12887: origin
                    (not_at_d_p4)

                    ; #38046: origin
                    (at_d_p9)

                    ; #24644: <==negation-removal== 12887 (pos)
                    (not (at_d_p4))

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #25659: origin
                    (at_d_p1)

                    ; #50802: origin
                    (not_at_d_p5)

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #50802: origin
                    (not_at_d_p5)

                    ; #52841: origin
                    (at_d_p10)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #20103: origin
                    (at_d_p11)

                    ; #50802: origin
                    (not_at_d_p5)

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #50802: origin
                    (not_at_d_p5)

                    ; #57185: origin
                    (at_d_p12)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (at_d_p5)
                           (succ_p5_p2)
                           (not (leader_d)))
        :effect (and
                    ; #50802: origin
                    (not_at_d_p5)

                    ; #85714: origin
                    (at_d_p2)

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #12455: origin
                    (at_d_p3)

                    ; #50802: origin
                    (not_at_d_p5)

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #24644: origin
                    (at_d_p4)

                    ; #50802: origin
                    (not_at_d_p5)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #50802: origin
                    (not_at_d_p5)

                    ; #77628: origin
                    (at_d_p5)

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #50802: origin
                    (not_at_d_p5)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #28205: origin
                    (at_d_p7)

                    ; #50802: origin
                    (not_at_d_p5)

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #42547: origin
                    (at_d_p8)

                    ; #50802: origin
                    (not_at_d_p5)

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #38046: origin
                    (at_d_p9)

                    ; #50802: origin
                    (not_at_d_p5)

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))

                    ; #77628: <==negation-removal== 50802 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (at_d_p6)
                           (succ_p6_p1)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #25659: origin
                    (at_d_p1)

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p10
        :precondition (and (at_d_p6)
                           (succ_p6_p10)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #52841: origin
                    (at_d_p10)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p11
        :precondition (and (at_d_p6)
                           (succ_p6_p11)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #20103: origin
                    (at_d_p11)

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p12
        :precondition (and (at_d_p6)
                           (succ_p6_p12)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #57185: origin
                    (at_d_p12)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #85714: origin
                    (at_d_p2)

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #12455: origin
                    (at_d_p3)

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #24644: origin
                    (at_d_p4)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #77628: origin
                    (at_d_p5)

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #28205: origin
                    (at_d_p7)

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (at_d_p6)
                           (succ_p6_p8)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #42547: origin
                    (at_d_p8)

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (at_d_p6)
                           (succ_p6_p9)
                           (not (leader_d)))
        :effect (and
                    ; #12252: origin
                    (not_at_d_p6)

                    ; #38046: origin
                    (at_d_p9)

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))

                    ; #86517: <==negation-removal== 12252 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1)
                           (not (leader_d)))
        :effect (and
                    ; #25659: origin
                    (at_d_p1)

                    ; #58710: origin
                    (not_at_d_p7)

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #52841: origin
                    (at_d_p10)

                    ; #58710: origin
                    (not_at_d_p7)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p11
        :precondition (and (at_d_p7)
                           (succ_p7_p11)
                           (not (leader_d)))
        :effect (and
                    ; #20103: origin
                    (at_d_p11)

                    ; #58710: origin
                    (not_at_d_p7)

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #57185: origin
                    (at_d_p12)

                    ; #58710: origin
                    (not_at_d_p7)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #58710: origin
                    (not_at_d_p7)

                    ; #85714: origin
                    (at_d_p2)

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12455: origin
                    (at_d_p3)

                    ; #58710: origin
                    (not_at_d_p7)

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #24644: origin
                    (at_d_p4)

                    ; #58710: origin
                    (not_at_d_p7)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #58710: origin
                    (not_at_d_p7)

                    ; #77628: origin
                    (at_d_p5)

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #58710: origin
                    (not_at_d_p7)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #28205: origin
                    (at_d_p7)

                    ; #58710: origin
                    (not_at_d_p7)

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #42547: origin
                    (at_d_p8)

                    ; #58710: origin
                    (not_at_d_p7)

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #38046: origin
                    (at_d_p9)

                    ; #58710: origin
                    (not_at_d_p7)

                    ; #28205: <==negation-removal== 58710 (pos)
                    (not (at_d_p7))

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1)
                           (not (leader_d)))
        :effect (and
                    ; #25659: origin
                    (at_d_p1)

                    ; #70478: origin
                    (not_at_d_p8)

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p10
        :precondition (and (at_d_p8)
                           (succ_p8_p10)
                           (not (leader_d)))
        :effect (and
                    ; #52841: origin
                    (at_d_p10)

                    ; #70478: origin
                    (not_at_d_p8)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p11
        :precondition (and (at_d_p8)
                           (succ_p8_p11)
                           (not (leader_d)))
        :effect (and
                    ; #20103: origin
                    (at_d_p11)

                    ; #70478: origin
                    (not_at_d_p8)

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12)
                           (not (leader_d)))
        :effect (and
                    ; #57185: origin
                    (at_d_p12)

                    ; #70478: origin
                    (not_at_d_p8)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2)
                           (not (leader_d)))
        :effect (and
                    ; #70478: origin
                    (not_at_d_p8)

                    ; #85714: origin
                    (at_d_p2)

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #12455: origin
                    (at_d_p3)

                    ; #70478: origin
                    (not_at_d_p8)

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4)
                           (not (leader_d)))
        :effect (and
                    ; #24644: origin
                    (at_d_p4)

                    ; #70478: origin
                    (not_at_d_p8)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5)
                           (not (leader_d)))
        :effect (and
                    ; #70478: origin
                    (not_at_d_p8)

                    ; #77628: origin
                    (at_d_p5)

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6)
                           (not (leader_d)))
        :effect (and
                    ; #70478: origin
                    (not_at_d_p8)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #28205: origin
                    (at_d_p7)

                    ; #70478: origin
                    (not_at_d_p8)

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8)
                           (not (leader_d)))
        :effect (and
                    ; #42547: origin
                    (at_d_p8)

                    ; #70478: origin
                    (not_at_d_p8)

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #38046: origin
                    (at_d_p9)

                    ; #70478: origin
                    (not_at_d_p8)

                    ; #42547: <==negation-removal== 70478 (pos)
                    (not (at_d_p8))

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #25659: origin
                    (at_d_p1)

                    ; #77425: origin
                    (not_at_d_p9)

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))

                    ; #43148: <==negation-removal== 25659 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #52841: origin
                    (at_d_p10)

                    ; #77425: origin
                    (not_at_d_p9)

                    ; #13566: <==negation-removal== 52841 (pos)
                    (not (not_at_d_p10))

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p11
        :precondition (and (at_d_p9)
                           (succ_p9_p11)
                           (not (leader_d)))
        :effect (and
                    ; #20103: origin
                    (at_d_p11)

                    ; #77425: origin
                    (not_at_d_p9)

                    ; #26487: <==negation-removal== 20103 (pos)
                    (not (not_at_d_p11))

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #57185: origin
                    (at_d_p12)

                    ; #77425: origin
                    (not_at_d_p9)

                    ; #10399: <==negation-removal== 57185 (pos)
                    (not (not_at_d_p12))

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #77425: origin
                    (not_at_d_p9)

                    ; #85714: origin
                    (at_d_p2)

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))

                    ; #60809: <==negation-removal== 85714 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #12455: origin
                    (at_d_p3)

                    ; #77425: origin
                    (not_at_d_p9)

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))

                    ; #71113: <==negation-removal== 12455 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #24644: origin
                    (at_d_p4)

                    ; #77425: origin
                    (not_at_d_p9)

                    ; #12887: <==negation-removal== 24644 (pos)
                    (not (not_at_d_p4))

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #77425: origin
                    (not_at_d_p9)

                    ; #77628: origin
                    (at_d_p5)

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))

                    ; #50802: <==negation-removal== 77628 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #77425: origin
                    (not_at_d_p9)

                    ; #86517: origin
                    (at_d_p6)

                    ; #12252: <==negation-removal== 86517 (pos)
                    (not (not_at_d_p6))

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #28205: origin
                    (at_d_p7)

                    ; #77425: origin
                    (not_at_d_p9)

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))

                    ; #58710: <==negation-removal== 28205 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #42547: origin
                    (at_d_p8)

                    ; #77425: origin
                    (not_at_d_p9)

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))

                    ; #70478: <==negation-removal== 42547 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #38046: origin
                    (at_d_p9)

                    ; #77425: origin
                    (not_at_d_p9)

                    ; #38046: <==negation-removal== 77425 (pos)
                    (not (at_d_p9))

                    ; #77425: <==negation-removal== 38046 (pos)
                    (not (not_at_d_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13891: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #28411: <==closure== 13891 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #29694: origin
                    (checked_p10)

                    ; #30599: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #35414: <==closure== 30599 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #39644: <==closure== 89367 (pos)
                    (Pb_checked_p10)

                    ; #69560: <==closure== 76952 (pos)
                    (Pa_checked_p10)

                    ; #72028: <==commonly_known== 29694 (pos)
                    (Bc_checked_p10)

                    ; #76952: <==commonly_known== 29694 (pos)
                    (Ba_checked_p10)

                    ; #77877: <==closure== 84507 (pos)
                    (Pd_checked_p10)

                    ; #82006: <==closure== 72028 (pos)
                    (Pc_checked_p10)

                    ; #84507: <==commonly_known== 29694 (pos)
                    (Bd_checked_p10)

                    ; #89367: <==commonly_known== 29694 (pos)
                    (Bb_checked_p10)

                    ; #10511: <==negation-removal== 39644 (pos)
                    (not (Bb_not_checked_p10))

                    ; #13999: <==negation-removal== 76952 (pos)
                    (not (Pa_not_checked_p10))

                    ; #14213: <==negation-removal== 29694 (pos)
                    (not (not_checked_p10))

                    ; #15505: <==negation-removal== 89367 (pos)
                    (not (Pb_not_checked_p10))

                    ; #16189: <==negation-removal== 13891 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #20255: <==uncertain_firing== 30599 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #24895: <==negation-removal== 69560 (pos)
                    (not (Ba_not_checked_p10))

                    ; #25617: <==negation-removal== 72028 (pos)
                    (not (Pc_not_checked_p10))

                    ; #39437: <==negation-removal== 35414 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #40622: <==negation-removal== 28411 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #42801: <==negation-removal== 84507 (pos)
                    (not (Pd_not_checked_p10))

                    ; #54188: <==unclosure== 65187 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #59803: <==negation-removal== 77877 (pos)
                    (not (Bd_not_checked_p10))

                    ; #65187: <==uncertain_firing== 13891 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #75935: <==negation-removal== 82006 (pos)
                    (not (Bc_not_checked_p10))

                    ; #85823: <==negation-removal== 30599 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #91171: <==unclosure== 20255 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #27690: <==closure== 40981 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #38389: <==closure== 76986 (pos)
                    (Pa_checked_p11)

                    ; #40981: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #42949: <==commonly_known== 68902 (pos)
                    (Bc_checked_p11)

                    ; #58517: <==closure== 77944 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #58537: <==commonly_known== 68902 (pos)
                    (Bb_checked_p11)

                    ; #61387: <==commonly_known== 68902 (pos)
                    (Bd_checked_p11)

                    ; #66799: <==closure== 42949 (pos)
                    (Pc_checked_p11)

                    ; #68902: origin
                    (checked_p11)

                    ; #73740: <==closure== 58537 (pos)
                    (Pb_checked_p11)

                    ; #76986: <==commonly_known== 68902 (pos)
                    (Ba_checked_p11)

                    ; #77944: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #89507: <==closure== 61387 (pos)
                    (Pd_checked_p11)

                    ; #16121: <==unclosure== 37319 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #19989: <==negation-removal== 61387 (pos)
                    (not (Pd_not_checked_p11))

                    ; #23120: <==negation-removal== 27690 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #37319: <==uncertain_firing== 40981 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #38107: <==negation-removal== 58517 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #43502: <==negation-removal== 58537 (pos)
                    (not (Pb_not_checked_p11))

                    ; #55911: <==negation-removal== 38389 (pos)
                    (not (Ba_not_checked_p11))

                    ; #64889: <==negation-removal== 40981 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #68053: <==negation-removal== 77944 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #68968: <==negation-removal== 89507 (pos)
                    (not (Bd_not_checked_p11))

                    ; #69322: <==negation-removal== 73740 (pos)
                    (not (Bb_not_checked_p11))

                    ; #73711: <==negation-removal== 76986 (pos)
                    (not (Pa_not_checked_p11))

                    ; #75518: <==unclosure== 81048 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #77938: <==negation-removal== 42949 (pos)
                    (not (Pc_not_checked_p11))

                    ; #78529: <==negation-removal== 66799 (pos)
                    (not (Bc_not_checked_p11))

                    ; #81048: <==uncertain_firing== 77944 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #81643: <==negation-removal== 68902 (pos)
                    (not (not_checked_p11))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #12333: <==commonly_known== 83382 (pos)
                    (Bd_checked_p12)

                    ; #14936: <==commonly_known== 83382 (pos)
                    (Ba_checked_p12)

                    ; #15707: <==closure== 19365 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #19365: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #19987: <==closure== 12333 (pos)
                    (Pd_checked_p12)

                    ; #29422: <==closure== 14936 (pos)
                    (Pa_checked_p12)

                    ; #37650: <==closure== 69572 (pos)
                    (Pb_checked_p12)

                    ; #60412: <==closure== 94889 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #66591: <==closure== 83352 (pos)
                    (Pc_checked_p12)

                    ; #69572: <==commonly_known== 83382 (pos)
                    (Bb_checked_p12)

                    ; #83352: <==commonly_known== 83382 (pos)
                    (Bc_checked_p12)

                    ; #83382: origin
                    (checked_p12)

                    ; #94889: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #15973: <==negation-removal== 37650 (pos)
                    (not (Bb_not_checked_p12))

                    ; #20878: <==unclosure== 72443 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #23708: <==negation-removal== 94889 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #30669: <==negation-removal== 19987 (pos)
                    (not (Bd_not_checked_p12))

                    ; #34000: <==negation-removal== 12333 (pos)
                    (not (Pd_not_checked_p12))

                    ; #36007: <==negation-removal== 83352 (pos)
                    (not (Pc_not_checked_p12))

                    ; #38287: <==unclosure== 79284 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #40718: <==negation-removal== 83382 (pos)
                    (not (not_checked_p12))

                    ; #42785: <==negation-removal== 66591 (pos)
                    (not (Bc_not_checked_p12))

                    ; #46120: <==negation-removal== 14936 (pos)
                    (not (Pa_not_checked_p12))

                    ; #48199: <==negation-removal== 60412 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #50514: <==negation-removal== 19365 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #51845: <==negation-removal== 29422 (pos)
                    (not (Ba_not_checked_p12))

                    ; #58372: <==negation-removal== 15707 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #66476: <==negation-removal== 69572 (pos)
                    (not (Pb_not_checked_p12))

                    ; #72443: <==uncertain_firing== 94889 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #79284: <==uncertain_firing== 19365 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17416: <==closure== 44853 (pos)
                    (Pc_checked_p1)

                    ; #20151: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #38587: <==closure== 20151 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #44774: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #44853: <==commonly_known== 52513 (pos)
                    (Bc_checked_p1)

                    ; #46031: <==closure== 84257 (pos)
                    (Pb_checked_p1)

                    ; #52513: origin
                    (checked_p1)

                    ; #52790: <==commonly_known== 52513 (pos)
                    (Bd_checked_p1)

                    ; #58965: <==commonly_known== 52513 (pos)
                    (Ba_checked_p1)

                    ; #61386: <==closure== 52790 (pos)
                    (Pd_checked_p1)

                    ; #84257: <==commonly_known== 52513 (pos)
                    (Bb_checked_p1)

                    ; #89298: <==closure== 44774 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #90569: <==closure== 58965 (pos)
                    (Pa_checked_p1)

                    ; #13685: <==negation-removal== 38587 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #14007: <==negation-removal== 89298 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #15539: <==negation-removal== 44853 (pos)
                    (not (Pc_not_checked_p1))

                    ; #21318: <==unclosure== 31879 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #24469: <==negation-removal== 17416 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30400: <==negation-removal== 52513 (pos)
                    (not (not_checked_p1))

                    ; #31879: <==uncertain_firing== 20151 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #33318: <==negation-removal== 61386 (pos)
                    (not (Bd_not_checked_p1))

                    ; #37880: <==negation-removal== 84257 (pos)
                    (not (Pb_not_checked_p1))

                    ; #45614: <==negation-removal== 20151 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #51841: <==uncertain_firing== 44774 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #55223: <==negation-removal== 90569 (pos)
                    (not (Ba_not_checked_p1))

                    ; #55520: <==negation-removal== 46031 (pos)
                    (not (Bb_not_checked_p1))

                    ; #57798: <==negation-removal== 52790 (pos)
                    (not (Pd_not_checked_p1))

                    ; #78592: <==negation-removal== 58965 (pos)
                    (not (Pa_not_checked_p1))

                    ; #87658: <==negation-removal== 44774 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88592: <==unclosure== 51841 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12932: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #16570: <==commonly_known== 68593 (pos)
                    (Bd_checked_p2)

                    ; #31362: <==closure== 78452 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #64607: <==closure== 95645 (pos)
                    (Pb_checked_p2)

                    ; #66041: <==closure== 12932 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #66659: <==closure== 75436 (pos)
                    (Pa_checked_p2)

                    ; #68593: origin
                    (checked_p2)

                    ; #75436: <==commonly_known== 68593 (pos)
                    (Ba_checked_p2)

                    ; #78452: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #84484: <==closure== 16570 (pos)
                    (Pd_checked_p2)

                    ; #89588: <==commonly_known== 68593 (pos)
                    (Bc_checked_p2)

                    ; #89737: <==closure== 89588 (pos)
                    (Pc_checked_p2)

                    ; #95645: <==commonly_known== 68593 (pos)
                    (Bb_checked_p2)

                    ; #13643: <==uncertain_firing== 12932 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #17379: <==negation-removal== 64607 (pos)
                    (not (Bb_not_checked_p2))

                    ; #18513: <==negation-removal== 78452 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #19807: <==unclosure== 13643 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #29561: <==negation-removal== 68593 (pos)
                    (not (not_checked_p2))

                    ; #30684: <==negation-removal== 66041 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #39003: <==negation-removal== 89588 (pos)
                    (not (Pc_not_checked_p2))

                    ; #43715: <==negation-removal== 12932 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #45561: <==negation-removal== 75436 (pos)
                    (not (Pa_not_checked_p2))

                    ; #59538: <==negation-removal== 31362 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #61131: <==unclosure== 77520 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #71656: <==negation-removal== 89737 (pos)
                    (not (Bc_not_checked_p2))

                    ; #74665: <==negation-removal== 16570 (pos)
                    (not (Pd_not_checked_p2))

                    ; #74823: <==negation-removal== 66659 (pos)
                    (not (Ba_not_checked_p2))

                    ; #77520: <==uncertain_firing== 78452 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #79210: <==negation-removal== 84484 (pos)
                    (not (Bd_not_checked_p2))

                    ; #80922: <==negation-removal== 95645 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14863: <==closure== 73240 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #17542: <==commonly_known== 42621 (pos)
                    (Ba_checked_p3)

                    ; #28307: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #36079: <==closure== 28307 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #42621: origin
                    (checked_p3)

                    ; #43163: <==closure== 17542 (pos)
                    (Pa_checked_p3)

                    ; #55192: <==commonly_known== 42621 (pos)
                    (Bd_checked_p3)

                    ; #63882: <==closure== 86103 (pos)
                    (Pc_checked_p3)

                    ; #66632: <==closure== 77269 (pos)
                    (Pb_checked_p3)

                    ; #73240: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #75939: <==closure== 55192 (pos)
                    (Pd_checked_p3)

                    ; #77269: <==commonly_known== 42621 (pos)
                    (Bb_checked_p3)

                    ; #86103: <==commonly_known== 42621 (pos)
                    (Bc_checked_p3)

                    ; #18027: <==negation-removal== 43163 (pos)
                    (not (Ba_not_checked_p3))

                    ; #18935: <==negation-removal== 17542 (pos)
                    (not (Pa_not_checked_p3))

                    ; #22120: <==negation-removal== 42621 (pos)
                    (not (not_checked_p3))

                    ; #26123: <==negation-removal== 77269 (pos)
                    (not (Pb_not_checked_p3))

                    ; #32433: <==negation-removal== 63882 (pos)
                    (not (Bc_not_checked_p3))

                    ; #34513: <==negation-removal== 55192 (pos)
                    (not (Pd_not_checked_p3))

                    ; #36847: <==negation-removal== 14863 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #37432: <==negation-removal== 86103 (pos)
                    (not (Pc_not_checked_p3))

                    ; #40755: <==unclosure== 86527 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #43706: <==negation-removal== 28307 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #49264: <==negation-removal== 73240 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #61631: <==uncertain_firing== 73240 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69748: <==negation-removal== 75939 (pos)
                    (not (Bd_not_checked_p3))

                    ; #82893: <==negation-removal== 36079 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #86527: <==uncertain_firing== 28307 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #86725: <==unclosure== 61631 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #91462: <==negation-removal== 66632 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #15416: <==commonly_known== 44365 (pos)
                    (Bb_checked_p4)

                    ; #22914: <==commonly_known== 44365 (pos)
                    (Bd_checked_p4)

                    ; #34208: <==closure== 90511 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #37879: <==commonly_known== 44365 (pos)
                    (Ba_checked_p4)

                    ; #38957: <==commonly_known== 44365 (pos)
                    (Bc_checked_p4)

                    ; #44365: origin
                    (checked_p4)

                    ; #51144: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #57545: <==closure== 38957 (pos)
                    (Pc_checked_p4)

                    ; #57893: <==closure== 22914 (pos)
                    (Pd_checked_p4)

                    ; #64431: <==closure== 37879 (pos)
                    (Pa_checked_p4)

                    ; #81807: <==closure== 51144 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #85899: <==closure== 15416 (pos)
                    (Pb_checked_p4)

                    ; #90511: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #16297: <==negation-removal== 44365 (pos)
                    (not (not_checked_p4))

                    ; #21325: <==negation-removal== 81807 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #24566: <==negation-removal== 85899 (pos)
                    (not (Bb_not_checked_p4))

                    ; #26010: <==uncertain_firing== 90511 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #34869: <==negation-removal== 51144 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #36908: <==uncertain_firing== 51144 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #41113: <==unclosure== 26010 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #42776: <==unclosure== 36908 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #57806: <==negation-removal== 38957 (pos)
                    (not (Pc_not_checked_p4))

                    ; #60322: <==negation-removal== 15416 (pos)
                    (not (Pb_not_checked_p4))

                    ; #64395: <==negation-removal== 22914 (pos)
                    (not (Pd_not_checked_p4))

                    ; #68982: <==negation-removal== 37879 (pos)
                    (not (Pa_not_checked_p4))

                    ; #71195: <==negation-removal== 64431 (pos)
                    (not (Ba_not_checked_p4))

                    ; #76321: <==negation-removal== 34208 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #81582: <==negation-removal== 57545 (pos)
                    (not (Bc_not_checked_p4))

                    ; #87339: <==negation-removal== 57893 (pos)
                    (not (Bd_not_checked_p4))

                    ; #92120: <==negation-removal== 90511 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #22504: <==closure== 27037 (pos)
                    (Pa_checked_p5)

                    ; #22710: <==closure== 69538 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #27037: <==commonly_known== 60396 (pos)
                    (Ba_checked_p5)

                    ; #28196: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #47007: <==commonly_known== 60396 (pos)
                    (Bc_checked_p5)

                    ; #47079: <==commonly_known== 60396 (pos)
                    (Bb_checked_p5)

                    ; #48088: <==closure== 47007 (pos)
                    (Pc_checked_p5)

                    ; #51720: <==closure== 76715 (pos)
                    (Pd_checked_p5)

                    ; #60396: origin
                    (checked_p5)

                    ; #63887: <==closure== 47079 (pos)
                    (Pb_checked_p5)

                    ; #69538: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #76715: <==commonly_known== 60396 (pos)
                    (Bd_checked_p5)

                    ; #90429: <==closure== 28196 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #30784: <==negation-removal== 27037 (pos)
                    (not (Pa_not_checked_p5))

                    ; #31160: <==negation-removal== 47079 (pos)
                    (not (Pb_not_checked_p5))

                    ; #33549: <==negation-removal== 28196 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #34167: <==negation-removal== 60396 (pos)
                    (not (not_checked_p5))

                    ; #41165: <==negation-removal== 51720 (pos)
                    (not (Bd_not_checked_p5))

                    ; #41715: <==negation-removal== 22710 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #43808: <==unclosure== 80167 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #46656: <==negation-removal== 48088 (pos)
                    (not (Bc_not_checked_p5))

                    ; #57699: <==negation-removal== 22504 (pos)
                    (not (Ba_not_checked_p5))

                    ; #57930: <==uncertain_firing== 69538 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #58698: <==negation-removal== 47007 (pos)
                    (not (Pc_not_checked_p5))

                    ; #63598: <==unclosure== 57930 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67356: <==negation-removal== 63887 (pos)
                    (not (Bb_not_checked_p5))

                    ; #76332: <==negation-removal== 76715 (pos)
                    (not (Pd_not_checked_p5))

                    ; #78989: <==negation-removal== 90429 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #80167: <==uncertain_firing== 28196 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #91676: <==negation-removal== 69538 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11378: <==closure== 68922 (pos)
                    (Pd_checked_p6)

                    ; #14207: origin
                    (checked_p6)

                    ; #16017: <==commonly_known== 14207 (pos)
                    (Bb_checked_p6)

                    ; #22025: <==closure== 77057 (pos)
                    (Pa_checked_p6)

                    ; #29575: <==commonly_known== 14207 (pos)
                    (Bc_checked_p6)

                    ; #32923: <==closure== 16017 (pos)
                    (Pb_checked_p6)

                    ; #54298: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #66037: <==closure== 29575 (pos)
                    (Pc_checked_p6)

                    ; #68922: <==commonly_known== 14207 (pos)
                    (Bd_checked_p6)

                    ; #77057: <==commonly_known== 14207 (pos)
                    (Ba_checked_p6)

                    ; #80184: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #90252: <==closure== 54298 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #95188: <==closure== 80184 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #11887: <==negation-removal== 77057 (pos)
                    (not (Pa_not_checked_p6))

                    ; #12036: <==negation-removal== 16017 (pos)
                    (not (Pb_not_checked_p6))

                    ; #13960: <==negation-removal== 54298 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #16040: <==negation-removal== 11378 (pos)
                    (not (Bd_not_checked_p6))

                    ; #27789: <==negation-removal== 68922 (pos)
                    (not (Pd_not_checked_p6))

                    ; #36501: <==negation-removal== 32923 (pos)
                    (not (Bb_not_checked_p6))

                    ; #43453: <==uncertain_firing== 54298 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #48488: <==negation-removal== 66037 (pos)
                    (not (Bc_not_checked_p6))

                    ; #61236: <==unclosure== 43453 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #75387: <==unclosure== 76707 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #76707: <==uncertain_firing== 80184 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #77425: <==negation-removal== 14207 (pos)
                    (not (not_checked_p6))

                    ; #78527: <==negation-removal== 95188 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #79255: <==negation-removal== 22025 (pos)
                    (not (Ba_not_checked_p6))

                    ; #79975: <==negation-removal== 29575 (pos)
                    (not (Pc_not_checked_p6))

                    ; #85171: <==negation-removal== 90252 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #89981: <==negation-removal== 80184 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12306: <==commonly_known== 27631 (pos)
                    (Bd_checked_p7)

                    ; #12748: <==closure== 66148 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #21868: <==closure== 70633 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #23334: <==closure== 55672 (pos)
                    (Pa_checked_p7)

                    ; #27631: origin
                    (checked_p7)

                    ; #46411: <==closure== 60636 (pos)
                    (Pc_checked_p7)

                    ; #55672: <==commonly_known== 27631 (pos)
                    (Ba_checked_p7)

                    ; #60636: <==commonly_known== 27631 (pos)
                    (Bc_checked_p7)

                    ; #61167: <==commonly_known== 27631 (pos)
                    (Bb_checked_p7)

                    ; #66148: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #67756: <==closure== 61167 (pos)
                    (Pb_checked_p7)

                    ; #70633: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79732: <==closure== 12306 (pos)
                    (Pd_checked_p7)

                    ; #35648: <==negation-removal== 21868 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #37453: <==negation-removal== 66148 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #38322: <==negation-removal== 55672 (pos)
                    (not (Pa_not_checked_p7))

                    ; #45712: <==unclosure== 58668 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #46265: <==negation-removal== 27631 (pos)
                    (not (not_checked_p7))

                    ; #51661: <==negation-removal== 61167 (pos)
                    (not (Pb_not_checked_p7))

                    ; #57270: <==negation-removal== 70633 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #58668: <==uncertain_firing== 66148 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #63224: <==uncertain_firing== 70633 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #63466: <==negation-removal== 12748 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #65719: <==negation-removal== 12306 (pos)
                    (not (Pd_not_checked_p7))

                    ; #66285: <==negation-removal== 67756 (pos)
                    (not (Bb_not_checked_p7))

                    ; #72319: <==negation-removal== 23334 (pos)
                    (not (Ba_not_checked_p7))

                    ; #72969: <==unclosure== 63224 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #85486: <==negation-removal== 46411 (pos)
                    (not (Bc_not_checked_p7))

                    ; #85561: <==negation-removal== 79732 (pos)
                    (not (Bd_not_checked_p7))

                    ; #85813: <==negation-removal== 60636 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11270: <==closure== 26421 (pos)
                    (Pc_checked_p8)

                    ; #22865: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #26421: <==commonly_known== 67364 (pos)
                    (Bc_checked_p8)

                    ; #35208: <==closure== 91208 (pos)
                    (Pb_checked_p8)

                    ; #44096: <==closure== 22865 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #50722: <==commonly_known== 67364 (pos)
                    (Ba_checked_p8)

                    ; #67364: origin
                    (checked_p8)

                    ; #69774: <==closure== 80306 (pos)
                    (Pd_checked_p8)

                    ; #77983: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #80306: <==commonly_known== 67364 (pos)
                    (Bd_checked_p8)

                    ; #83533: <==closure== 77983 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #87024: <==closure== 50722 (pos)
                    (Pa_checked_p8)

                    ; #91208: <==commonly_known== 67364 (pos)
                    (Bb_checked_p8)

                    ; #19959: <==negation-removal== 44096 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #24912: <==negation-removal== 87024 (pos)
                    (not (Ba_not_checked_p8))

                    ; #29136: <==negation-removal== 80306 (pos)
                    (not (Pd_not_checked_p8))

                    ; #31523: <==negation-removal== 26421 (pos)
                    (not (Pc_not_checked_p8))

                    ; #35287: <==negation-removal== 67364 (pos)
                    (not (not_checked_p8))

                    ; #48271: <==negation-removal== 83533 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #48669: <==uncertain_firing== 22865 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #49245: <==negation-removal== 35208 (pos)
                    (not (Bb_not_checked_p8))

                    ; #55134: <==negation-removal== 11270 (pos)
                    (not (Bc_not_checked_p8))

                    ; #67928: <==negation-removal== 22865 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #67956: <==negation-removal== 69774 (pos)
                    (not (Bd_not_checked_p8))

                    ; #72363: <==unclosure== 74487 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #74487: <==uncertain_firing== 77983 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78057: <==negation-removal== 77983 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78359: <==unclosure== 48669 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #80225: <==negation-removal== 91208 (pos)
                    (not (Pb_not_checked_p8))

                    ; #87795: <==negation-removal== 50722 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12012: <==closure== 61233 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #18618: <==commonly_known== 72318 (pos)
                    (Bc_checked_p9)

                    ; #28426: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #34236: <==commonly_known== 72318 (pos)
                    (Bb_checked_p9)

                    ; #41793: <==closure== 67766 (pos)
                    (Pa_checked_p9)

                    ; #43624: <==closure== 18618 (pos)
                    (Pc_checked_p9)

                    ; #57292: <==closure== 34236 (pos)
                    (Pb_checked_p9)

                    ; #60978: <==commonly_known== 72318 (pos)
                    (Bd_checked_p9)

                    ; #61233: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #67766: <==commonly_known== 72318 (pos)
                    (Ba_checked_p9)

                    ; #67978: <==closure== 28426 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #72318: origin
                    (checked_p9)

                    ; #78537: <==closure== 60978 (pos)
                    (Pd_checked_p9)

                    ; #16710: <==negation-removal== 41793 (pos)
                    (not (Ba_not_checked_p9))

                    ; #28284: <==negation-removal== 34236 (pos)
                    (not (Pb_not_checked_p9))

                    ; #30856: <==negation-removal== 72318 (pos)
                    (not (not_checked_p9))

                    ; #42316: <==uncertain_firing== 28426 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #45493: <==negation-removal== 28426 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #51371: <==negation-removal== 18618 (pos)
                    (not (Pc_not_checked_p9))

                    ; #54565: <==unclosure== 81961 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #56099: <==negation-removal== 60978 (pos)
                    (not (Pd_not_checked_p9))

                    ; #61422: <==negation-removal== 43624 (pos)
                    (not (Bc_not_checked_p9))

                    ; #62743: <==negation-removal== 61233 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #68402: <==negation-removal== 78537 (pos)
                    (not (Bd_not_checked_p9))

                    ; #69646: <==unclosure== 42316 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #76130: <==negation-removal== 67978 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #78417: <==negation-removal== 57292 (pos)
                    (not (Bb_not_checked_p9))

                    ; #81256: <==negation-removal== 67766 (pos)
                    (not (Pa_not_checked_p9))

                    ; #81961: <==uncertain_firing== 61233 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #88514: <==negation-removal== 12012 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #13422: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #29694: origin
                    (checked_p10)

                    ; #39644: <==closure== 89367 (pos)
                    (Pb_checked_p10)

                    ; #46472: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #64523: <==closure== 46472 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #65402: <==closure== 13422 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #69560: <==closure== 76952 (pos)
                    (Pa_checked_p10)

                    ; #72028: <==commonly_known== 29694 (pos)
                    (Bc_checked_p10)

                    ; #76952: <==commonly_known== 29694 (pos)
                    (Ba_checked_p10)

                    ; #77877: <==closure== 84507 (pos)
                    (Pd_checked_p10)

                    ; #82006: <==closure== 72028 (pos)
                    (Pc_checked_p10)

                    ; #84507: <==commonly_known== 29694 (pos)
                    (Bd_checked_p10)

                    ; #89367: <==commonly_known== 29694 (pos)
                    (Bb_checked_p10)

                    ; #10511: <==negation-removal== 39644 (pos)
                    (not (Bb_not_checked_p10))

                    ; #13999: <==negation-removal== 76952 (pos)
                    (not (Pa_not_checked_p10))

                    ; #14213: <==negation-removal== 29694 (pos)
                    (not (not_checked_p10))

                    ; #15505: <==negation-removal== 89367 (pos)
                    (not (Pb_not_checked_p10))

                    ; #24895: <==negation-removal== 69560 (pos)
                    (not (Ba_not_checked_p10))

                    ; #25617: <==negation-removal== 72028 (pos)
                    (not (Pc_not_checked_p10))

                    ; #32220: <==unclosure== 84391 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #32609: <==negation-removal== 13422 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #42801: <==negation-removal== 84507 (pos)
                    (not (Pd_not_checked_p10))

                    ; #47621: <==negation-removal== 46472 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #52493: <==uncertain_firing== 13422 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #53096: <==unclosure== 52493 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #59331: <==negation-removal== 64523 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #59803: <==negation-removal== 77877 (pos)
                    (not (Bd_not_checked_p10))

                    ; #73192: <==negation-removal== 65402 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #75935: <==negation-removal== 82006 (pos)
                    (not (Bc_not_checked_p10))

                    ; #84391: <==uncertain_firing== 46472 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #21295: <==closure== 73001 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #38389: <==closure== 76986 (pos)
                    (Pa_checked_p11)

                    ; #42949: <==commonly_known== 68902 (pos)
                    (Bc_checked_p11)

                    ; #58537: <==commonly_known== 68902 (pos)
                    (Bb_checked_p11)

                    ; #61387: <==commonly_known== 68902 (pos)
                    (Bd_checked_p11)

                    ; #62227: <==closure== 66216 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #66216: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #66799: <==closure== 42949 (pos)
                    (Pc_checked_p11)

                    ; #68902: origin
                    (checked_p11)

                    ; #73001: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #73740: <==closure== 58537 (pos)
                    (Pb_checked_p11)

                    ; #76986: <==commonly_known== 68902 (pos)
                    (Ba_checked_p11)

                    ; #89507: <==closure== 61387 (pos)
                    (Pd_checked_p11)

                    ; #19989: <==negation-removal== 61387 (pos)
                    (not (Pd_not_checked_p11))

                    ; #22111: <==negation-removal== 21295 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #41422: <==unclosure== 53143 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #42927: <==negation-removal== 66216 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #43502: <==negation-removal== 58537 (pos)
                    (not (Pb_not_checked_p11))

                    ; #51363: <==unclosure== 74701 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #53143: <==uncertain_firing== 66216 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #55911: <==negation-removal== 38389 (pos)
                    (not (Ba_not_checked_p11))

                    ; #68968: <==negation-removal== 89507 (pos)
                    (not (Bd_not_checked_p11))

                    ; #69322: <==negation-removal== 73740 (pos)
                    (not (Bb_not_checked_p11))

                    ; #73711: <==negation-removal== 76986 (pos)
                    (not (Pa_not_checked_p11))

                    ; #74701: <==uncertain_firing== 73001 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #77938: <==negation-removal== 42949 (pos)
                    (not (Pc_not_checked_p11))

                    ; #78529: <==negation-removal== 66799 (pos)
                    (not (Bc_not_checked_p11))

                    ; #80903: <==negation-removal== 73001 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #81643: <==negation-removal== 68902 (pos)
                    (not (not_checked_p11))

                    ; #91462: <==negation-removal== 62227 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #12333: <==commonly_known== 83382 (pos)
                    (Bd_checked_p12)

                    ; #14936: <==commonly_known== 83382 (pos)
                    (Ba_checked_p12)

                    ; #19987: <==closure== 12333 (pos)
                    (Pd_checked_p12)

                    ; #21725: <==closure== 31662 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #29422: <==closure== 14936 (pos)
                    (Pa_checked_p12)

                    ; #31662: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #37650: <==closure== 69572 (pos)
                    (Pb_checked_p12)

                    ; #47833: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #66591: <==closure== 83352 (pos)
                    (Pc_checked_p12)

                    ; #69572: <==commonly_known== 83382 (pos)
                    (Bb_checked_p12)

                    ; #71216: <==closure== 47833 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #83352: <==commonly_known== 83382 (pos)
                    (Bc_checked_p12)

                    ; #83382: origin
                    (checked_p12)

                    ; #15973: <==negation-removal== 37650 (pos)
                    (not (Bb_not_checked_p12))

                    ; #19449: <==unclosure== 80233 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #19944: <==negation-removal== 71216 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #30669: <==negation-removal== 19987 (pos)
                    (not (Bd_not_checked_p12))

                    ; #34000: <==negation-removal== 12333 (pos)
                    (not (Pd_not_checked_p12))

                    ; #36007: <==negation-removal== 83352 (pos)
                    (not (Pc_not_checked_p12))

                    ; #39668: <==negation-removal== 31662 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #40718: <==negation-removal== 83382 (pos)
                    (not (not_checked_p12))

                    ; #42785: <==negation-removal== 66591 (pos)
                    (not (Bc_not_checked_p12))

                    ; #44714: <==negation-removal== 21725 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #46120: <==negation-removal== 14936 (pos)
                    (not (Pa_not_checked_p12))

                    ; #51845: <==negation-removal== 29422 (pos)
                    (not (Ba_not_checked_p12))

                    ; #63878: <==negation-removal== 47833 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #66476: <==negation-removal== 69572 (pos)
                    (not (Pb_not_checked_p12))

                    ; #78216: <==unclosure== 85496 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #80233: <==uncertain_firing== 47833 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #85496: <==uncertain_firing== 31662 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #17416: <==closure== 44853 (pos)
                    (Pc_checked_p1)

                    ; #44853: <==commonly_known== 52513 (pos)
                    (Bc_checked_p1)

                    ; #46031: <==closure== 84257 (pos)
                    (Pb_checked_p1)

                    ; #52513: origin
                    (checked_p1)

                    ; #52790: <==commonly_known== 52513 (pos)
                    (Bd_checked_p1)

                    ; #58965: <==commonly_known== 52513 (pos)
                    (Ba_checked_p1)

                    ; #61386: <==closure== 52790 (pos)
                    (Pd_checked_p1)

                    ; #62334: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #72662: <==closure== 62334 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #79885: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #84257: <==commonly_known== 52513 (pos)
                    (Bb_checked_p1)

                    ; #84856: <==closure== 79885 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #90569: <==closure== 58965 (pos)
                    (Pa_checked_p1)

                    ; #15539: <==negation-removal== 44853 (pos)
                    (not (Pc_not_checked_p1))

                    ; #18748: <==negation-removal== 84856 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #19771: <==negation-removal== 62334 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #24469: <==negation-removal== 17416 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30400: <==negation-removal== 52513 (pos)
                    (not (not_checked_p1))

                    ; #33318: <==negation-removal== 61386 (pos)
                    (not (Bd_not_checked_p1))

                    ; #35186: <==negation-removal== 72662 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #37880: <==negation-removal== 84257 (pos)
                    (not (Pb_not_checked_p1))

                    ; #41323: <==uncertain_firing== 62334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #51960: <==negation-removal== 79885 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #55223: <==negation-removal== 90569 (pos)
                    (not (Ba_not_checked_p1))

                    ; #55520: <==negation-removal== 46031 (pos)
                    (not (Bb_not_checked_p1))

                    ; #57798: <==negation-removal== 52790 (pos)
                    (not (Pd_not_checked_p1))

                    ; #77064: <==unclosure== 77591 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #77591: <==uncertain_firing== 79885 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #78592: <==negation-removal== 58965 (pos)
                    (not (Pa_not_checked_p1))

                    ; #81683: <==unclosure== 41323 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #16570: <==commonly_known== 68593 (pos)
                    (Bd_checked_p2)

                    ; #23103: <==closure== 28547 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #28547: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #34076: <==closure== 41772 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #41772: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #64607: <==closure== 95645 (pos)
                    (Pb_checked_p2)

                    ; #66659: <==closure== 75436 (pos)
                    (Pa_checked_p2)

                    ; #68593: origin
                    (checked_p2)

                    ; #75436: <==commonly_known== 68593 (pos)
                    (Ba_checked_p2)

                    ; #84484: <==closure== 16570 (pos)
                    (Pd_checked_p2)

                    ; #89588: <==commonly_known== 68593 (pos)
                    (Bc_checked_p2)

                    ; #89737: <==closure== 89588 (pos)
                    (Pc_checked_p2)

                    ; #95645: <==commonly_known== 68593 (pos)
                    (Bb_checked_p2)

                    ; #17379: <==negation-removal== 64607 (pos)
                    (not (Bb_not_checked_p2))

                    ; #29561: <==negation-removal== 68593 (pos)
                    (not (not_checked_p2))

                    ; #30053: <==unclosure== 63826 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #31253: <==negation-removal== 34076 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #39003: <==negation-removal== 89588 (pos)
                    (not (Pc_not_checked_p2))

                    ; #42430: <==negation-removal== 28547 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #45561: <==negation-removal== 75436 (pos)
                    (not (Pa_not_checked_p2))

                    ; #46971: <==negation-removal== 23103 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #63826: <==uncertain_firing== 41772 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69241: <==uncertain_firing== 28547 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #71656: <==negation-removal== 89737 (pos)
                    (not (Bc_not_checked_p2))

                    ; #74665: <==negation-removal== 16570 (pos)
                    (not (Pd_not_checked_p2))

                    ; #74823: <==negation-removal== 66659 (pos)
                    (not (Ba_not_checked_p2))

                    ; #79210: <==negation-removal== 84484 (pos)
                    (not (Bd_not_checked_p2))

                    ; #80050: <==negation-removal== 41772 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #80922: <==negation-removal== 95645 (pos)
                    (not (Pb_not_checked_p2))

                    ; #92084: <==unclosure== 69241 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #17542: <==commonly_known== 42621 (pos)
                    (Ba_checked_p3)

                    ; #32850: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #42621: origin
                    (checked_p3)

                    ; #43163: <==closure== 17542 (pos)
                    (Pa_checked_p3)

                    ; #46854: <==closure== 32850 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #55192: <==commonly_known== 42621 (pos)
                    (Bd_checked_p3)

                    ; #63882: <==closure== 86103 (pos)
                    (Pc_checked_p3)

                    ; #66632: <==closure== 77269 (pos)
                    (Pb_checked_p3)

                    ; #69312: <==closure== 72552 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #72552: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #75939: <==closure== 55192 (pos)
                    (Pd_checked_p3)

                    ; #77269: <==commonly_known== 42621 (pos)
                    (Bb_checked_p3)

                    ; #86103: <==commonly_known== 42621 (pos)
                    (Bc_checked_p3)

                    ; #17713: <==negation-removal== 32850 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #18027: <==negation-removal== 43163 (pos)
                    (not (Ba_not_checked_p3))

                    ; #18935: <==negation-removal== 17542 (pos)
                    (not (Pa_not_checked_p3))

                    ; #22120: <==negation-removal== 42621 (pos)
                    (not (not_checked_p3))

                    ; #26123: <==negation-removal== 77269 (pos)
                    (not (Pb_not_checked_p3))

                    ; #29654: <==negation-removal== 46854 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #32433: <==negation-removal== 63882 (pos)
                    (not (Bc_not_checked_p3))

                    ; #34513: <==negation-removal== 55192 (pos)
                    (not (Pd_not_checked_p3))

                    ; #37432: <==negation-removal== 86103 (pos)
                    (not (Pc_not_checked_p3))

                    ; #40930: <==uncertain_firing== 32850 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #43686: <==uncertain_firing== 72552 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #53520: <==unclosure== 40930 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #57132: <==negation-removal== 72552 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67375: <==unclosure== 43686 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #69748: <==negation-removal== 75939 (pos)
                    (not (Bd_not_checked_p3))

                    ; #82351: <==negation-removal== 69312 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #91462: <==negation-removal== 66632 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #10125: <==closure== 26719 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #15416: <==commonly_known== 44365 (pos)
                    (Bb_checked_p4)

                    ; #22914: <==commonly_known== 44365 (pos)
                    (Bd_checked_p4)

                    ; #26719: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #37879: <==commonly_known== 44365 (pos)
                    (Ba_checked_p4)

                    ; #38957: <==commonly_known== 44365 (pos)
                    (Bc_checked_p4)

                    ; #44365: origin
                    (checked_p4)

                    ; #57545: <==closure== 38957 (pos)
                    (Pc_checked_p4)

                    ; #57893: <==closure== 22914 (pos)
                    (Pd_checked_p4)

                    ; #60897: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #64431: <==closure== 37879 (pos)
                    (Pa_checked_p4)

                    ; #67178: <==closure== 60897 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #85899: <==closure== 15416 (pos)
                    (Pb_checked_p4)

                    ; #16297: <==negation-removal== 44365 (pos)
                    (not (not_checked_p4))

                    ; #17232: <==negation-removal== 26719 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #23770: <==negation-removal== 67178 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #24566: <==negation-removal== 85899 (pos)
                    (not (Bb_not_checked_p4))

                    ; #26477: <==unclosure== 81072 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #30261: <==uncertain_firing== 60897 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #33582: <==unclosure== 30261 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #57806: <==negation-removal== 38957 (pos)
                    (not (Pc_not_checked_p4))

                    ; #60322: <==negation-removal== 15416 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61736: <==negation-removal== 60897 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #64395: <==negation-removal== 22914 (pos)
                    (not (Pd_not_checked_p4))

                    ; #68982: <==negation-removal== 37879 (pos)
                    (not (Pa_not_checked_p4))

                    ; #71195: <==negation-removal== 64431 (pos)
                    (not (Ba_not_checked_p4))

                    ; #76812: <==negation-removal== 10125 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #81072: <==uncertain_firing== 26719 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #81582: <==negation-removal== 57545 (pos)
                    (not (Bc_not_checked_p4))

                    ; #87339: <==negation-removal== 57893 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #14711: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #22504: <==closure== 27037 (pos)
                    (Pa_checked_p5)

                    ; #27037: <==commonly_known== 60396 (pos)
                    (Ba_checked_p5)

                    ; #42255: <==closure== 14711 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #47007: <==commonly_known== 60396 (pos)
                    (Bc_checked_p5)

                    ; #47079: <==commonly_known== 60396 (pos)
                    (Bb_checked_p5)

                    ; #48088: <==closure== 47007 (pos)
                    (Pc_checked_p5)

                    ; #49723: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #51720: <==closure== 76715 (pos)
                    (Pd_checked_p5)

                    ; #60396: origin
                    (checked_p5)

                    ; #63887: <==closure== 47079 (pos)
                    (Pb_checked_p5)

                    ; #76715: <==commonly_known== 60396 (pos)
                    (Bd_checked_p5)

                    ; #79029: <==closure== 49723 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #16886: <==uncertain_firing== 14711 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #30784: <==negation-removal== 27037 (pos)
                    (not (Pa_not_checked_p5))

                    ; #31160: <==negation-removal== 47079 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34167: <==negation-removal== 60396 (pos)
                    (not (not_checked_p5))

                    ; #38873: <==negation-removal== 79029 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #40077: <==negation-removal== 14711 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #41165: <==negation-removal== 51720 (pos)
                    (not (Bd_not_checked_p5))

                    ; #44315: <==negation-removal== 42255 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #46656: <==negation-removal== 48088 (pos)
                    (not (Bc_not_checked_p5))

                    ; #57699: <==negation-removal== 22504 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58508: <==unclosure== 16886 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #58698: <==negation-removal== 47007 (pos)
                    (not (Pc_not_checked_p5))

                    ; #67356: <==negation-removal== 63887 (pos)
                    (not (Bb_not_checked_p5))

                    ; #76332: <==negation-removal== 76715 (pos)
                    (not (Pd_not_checked_p5))

                    ; #79830: <==uncertain_firing== 49723 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #80358: <==negation-removal== 49723 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #94159: <==unclosure== 79830 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #11378: <==closure== 68922 (pos)
                    (Pd_checked_p6)

                    ; #13333: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #14207: origin
                    (checked_p6)

                    ; #16017: <==commonly_known== 14207 (pos)
                    (Bb_checked_p6)

                    ; #22025: <==closure== 77057 (pos)
                    (Pa_checked_p6)

                    ; #29356: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #29575: <==commonly_known== 14207 (pos)
                    (Bc_checked_p6)

                    ; #32923: <==closure== 16017 (pos)
                    (Pb_checked_p6)

                    ; #64589: <==closure== 13333 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #66037: <==closure== 29575 (pos)
                    (Pc_checked_p6)

                    ; #68922: <==commonly_known== 14207 (pos)
                    (Bd_checked_p6)

                    ; #77057: <==commonly_known== 14207 (pos)
                    (Ba_checked_p6)

                    ; #93851: <==closure== 29356 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #11831: <==negation-removal== 13333 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #11887: <==negation-removal== 77057 (pos)
                    (not (Pa_not_checked_p6))

                    ; #12036: <==negation-removal== 16017 (pos)
                    (not (Pb_not_checked_p6))

                    ; #16040: <==negation-removal== 11378 (pos)
                    (not (Bd_not_checked_p6))

                    ; #27789: <==negation-removal== 68922 (pos)
                    (not (Pd_not_checked_p6))

                    ; #36501: <==negation-removal== 32923 (pos)
                    (not (Bb_not_checked_p6))

                    ; #48488: <==negation-removal== 66037 (pos)
                    (not (Bc_not_checked_p6))

                    ; #48548: <==unclosure== 64046 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #49890: <==negation-removal== 29356 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #55876: <==negation-removal== 64589 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #64046: <==uncertain_firing== 29356 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #73956: <==uncertain_firing== 13333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #77425: <==negation-removal== 14207 (pos)
                    (not (not_checked_p6))

                    ; #79255: <==negation-removal== 22025 (pos)
                    (not (Ba_not_checked_p6))

                    ; #79758: <==unclosure== 73956 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #79975: <==negation-removal== 29575 (pos)
                    (not (Pc_not_checked_p6))

                    ; #86455: <==negation-removal== 93851 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #12306: <==commonly_known== 27631 (pos)
                    (Bd_checked_p7)

                    ; #13151: <==closure== 51769 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #23334: <==closure== 55672 (pos)
                    (Pa_checked_p7)

                    ; #27631: origin
                    (checked_p7)

                    ; #40173: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #46308: <==closure== 40173 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #46411: <==closure== 60636 (pos)
                    (Pc_checked_p7)

                    ; #51769: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #55672: <==commonly_known== 27631 (pos)
                    (Ba_checked_p7)

                    ; #60636: <==commonly_known== 27631 (pos)
                    (Bc_checked_p7)

                    ; #61167: <==commonly_known== 27631 (pos)
                    (Bb_checked_p7)

                    ; #67756: <==closure== 61167 (pos)
                    (Pb_checked_p7)

                    ; #79732: <==closure== 12306 (pos)
                    (Pd_checked_p7)

                    ; #17819: <==uncertain_firing== 40173 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #18822: <==unclosure== 35123 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #25901: <==negation-removal== 13151 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #35123: <==uncertain_firing== 51769 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #37502: <==negation-removal== 46308 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #37855: <==negation-removal== 51769 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #38322: <==negation-removal== 55672 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46265: <==negation-removal== 27631 (pos)
                    (not (not_checked_p7))

                    ; #51661: <==negation-removal== 61167 (pos)
                    (not (Pb_not_checked_p7))

                    ; #65719: <==negation-removal== 12306 (pos)
                    (not (Pd_not_checked_p7))

                    ; #65875: <==unclosure== 17819 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #66285: <==negation-removal== 67756 (pos)
                    (not (Bb_not_checked_p7))

                    ; #70750: <==negation-removal== 40173 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #72319: <==negation-removal== 23334 (pos)
                    (not (Ba_not_checked_p7))

                    ; #85486: <==negation-removal== 46411 (pos)
                    (not (Bc_not_checked_p7))

                    ; #85561: <==negation-removal== 79732 (pos)
                    (not (Bd_not_checked_p7))

                    ; #85813: <==negation-removal== 60636 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #11270: <==closure== 26421 (pos)
                    (Pc_checked_p8)

                    ; #24730: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #26421: <==commonly_known== 67364 (pos)
                    (Bc_checked_p8)

                    ; #35208: <==closure== 91208 (pos)
                    (Pb_checked_p8)

                    ; #35624: <==closure== 69170 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #50722: <==commonly_known== 67364 (pos)
                    (Ba_checked_p8)

                    ; #67364: origin
                    (checked_p8)

                    ; #69170: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #69774: <==closure== 80306 (pos)
                    (Pd_checked_p8)

                    ; #80306: <==commonly_known== 67364 (pos)
                    (Bd_checked_p8)

                    ; #87024: <==closure== 50722 (pos)
                    (Pa_checked_p8)

                    ; #90245: <==closure== 24730 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #91208: <==commonly_known== 67364 (pos)
                    (Bb_checked_p8)

                    ; #24912: <==negation-removal== 87024 (pos)
                    (not (Ba_not_checked_p8))

                    ; #29136: <==negation-removal== 80306 (pos)
                    (not (Pd_not_checked_p8))

                    ; #31523: <==negation-removal== 26421 (pos)
                    (not (Pc_not_checked_p8))

                    ; #35287: <==negation-removal== 67364 (pos)
                    (not (not_checked_p8))

                    ; #41460: <==unclosure== 57009 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #48506: <==uncertain_firing== 69170 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #49245: <==negation-removal== 35208 (pos)
                    (not (Bb_not_checked_p8))

                    ; #50471: <==negation-removal== 90245 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #52870: <==negation-removal== 24730 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #53820: <==unclosure== 48506 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #55134: <==negation-removal== 11270 (pos)
                    (not (Bc_not_checked_p8))

                    ; #57009: <==uncertain_firing== 24730 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #64448: <==negation-removal== 35624 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #67956: <==negation-removal== 69774 (pos)
                    (not (Bd_not_checked_p8))

                    ; #80225: <==negation-removal== 91208 (pos)
                    (not (Pb_not_checked_p8))

                    ; #87795: <==negation-removal== 50722 (pos)
                    (not (Pa_not_checked_p8))

                    ; #99131: <==negation-removal== 69170 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #13555: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #18618: <==commonly_known== 72318 (pos)
                    (Bc_checked_p9)

                    ; #34236: <==commonly_known== 72318 (pos)
                    (Bb_checked_p9)

                    ; #41793: <==closure== 67766 (pos)
                    (Pa_checked_p9)

                    ; #43624: <==closure== 18618 (pos)
                    (Pc_checked_p9)

                    ; #57292: <==closure== 34236 (pos)
                    (Pb_checked_p9)

                    ; #58865: <==closure== 13555 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #60978: <==commonly_known== 72318 (pos)
                    (Bd_checked_p9)

                    ; #65051: <==closure== 75952 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #67766: <==commonly_known== 72318 (pos)
                    (Ba_checked_p9)

                    ; #72318: origin
                    (checked_p9)

                    ; #75952: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #78537: <==closure== 60978 (pos)
                    (Pd_checked_p9)

                    ; #16710: <==negation-removal== 41793 (pos)
                    (not (Ba_not_checked_p9))

                    ; #22452: <==negation-removal== 75952 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #28284: <==negation-removal== 34236 (pos)
                    (not (Pb_not_checked_p9))

                    ; #30856: <==negation-removal== 72318 (pos)
                    (not (not_checked_p9))

                    ; #43440: <==negation-removal== 65051 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #45215: <==uncertain_firing== 75952 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #51371: <==negation-removal== 18618 (pos)
                    (not (Pc_not_checked_p9))

                    ; #56099: <==negation-removal== 60978 (pos)
                    (not (Pd_not_checked_p9))

                    ; #57149: <==uncertain_firing== 13555 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #59955: <==negation-removal== 13555 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #61422: <==negation-removal== 43624 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68402: <==negation-removal== 78537 (pos)
                    (not (Bd_not_checked_p9))

                    ; #75750: <==unclosure== 57149 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #78417: <==negation-removal== 57292 (pos)
                    (not (Bb_not_checked_p9))

                    ; #81256: <==negation-removal== 67766 (pos)
                    (not (Pa_not_checked_p9))

                    ; #81449: <==negation-removal== 58865 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #83379: <==unclosure== 45215 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #29694: origin
                    (checked_p10)

                    ; #34364: <==closure== 35811 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #35811: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #39644: <==closure== 89367 (pos)
                    (Pb_checked_p10)

                    ; #47169: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #48653: <==closure== 47169 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #69560: <==closure== 76952 (pos)
                    (Pa_checked_p10)

                    ; #72028: <==commonly_known== 29694 (pos)
                    (Bc_checked_p10)

                    ; #76952: <==commonly_known== 29694 (pos)
                    (Ba_checked_p10)

                    ; #77877: <==closure== 84507 (pos)
                    (Pd_checked_p10)

                    ; #82006: <==closure== 72028 (pos)
                    (Pc_checked_p10)

                    ; #84507: <==commonly_known== 29694 (pos)
                    (Bd_checked_p10)

                    ; #89367: <==commonly_known== 29694 (pos)
                    (Bb_checked_p10)

                    ; #10511: <==negation-removal== 39644 (pos)
                    (not (Bb_not_checked_p10))

                    ; #13999: <==negation-removal== 76952 (pos)
                    (not (Pa_not_checked_p10))

                    ; #14213: <==negation-removal== 29694 (pos)
                    (not (not_checked_p10))

                    ; #15505: <==negation-removal== 89367 (pos)
                    (not (Pb_not_checked_p10))

                    ; #20313: <==uncertain_firing== 35811 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #24895: <==negation-removal== 69560 (pos)
                    (not (Ba_not_checked_p10))

                    ; #25617: <==negation-removal== 72028 (pos)
                    (not (Pc_not_checked_p10))

                    ; #32156: <==negation-removal== 47169 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #40037: <==negation-removal== 34364 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #42801: <==negation-removal== 84507 (pos)
                    (not (Pd_not_checked_p10))

                    ; #47015: <==uncertain_firing== 47169 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #59803: <==negation-removal== 77877 (pos)
                    (not (Bd_not_checked_p10))

                    ; #61139: <==unclosure== 20313 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #64153: <==negation-removal== 48653 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #67530: <==negation-removal== 35811 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #74477: <==unclosure== 47015 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #75935: <==negation-removal== 82006 (pos)
                    (not (Bc_not_checked_p10))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #34145: <==closure== 39684 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #38389: <==closure== 76986 (pos)
                    (Pa_checked_p11)

                    ; #39684: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #42441: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #42949: <==commonly_known== 68902 (pos)
                    (Bc_checked_p11)

                    ; #58537: <==commonly_known== 68902 (pos)
                    (Bb_checked_p11)

                    ; #61387: <==commonly_known== 68902 (pos)
                    (Bd_checked_p11)

                    ; #64241: <==closure== 42441 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #66799: <==closure== 42949 (pos)
                    (Pc_checked_p11)

                    ; #68902: origin
                    (checked_p11)

                    ; #73740: <==closure== 58537 (pos)
                    (Pb_checked_p11)

                    ; #76986: <==commonly_known== 68902 (pos)
                    (Ba_checked_p11)

                    ; #89507: <==closure== 61387 (pos)
                    (Pd_checked_p11)

                    ; #19989: <==negation-removal== 61387 (pos)
                    (not (Pd_not_checked_p11))

                    ; #24346: <==negation-removal== 64241 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #35768: <==unclosure== 54003 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #43502: <==negation-removal== 58537 (pos)
                    (not (Pb_not_checked_p11))

                    ; #54003: <==uncertain_firing== 39684 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #55911: <==negation-removal== 38389 (pos)
                    (not (Ba_not_checked_p11))

                    ; #60358: <==unclosure== 64777 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #63582: <==negation-removal== 34145 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #63673: <==negation-removal== 39684 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #64482: <==negation-removal== 42441 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #64777: <==uncertain_firing== 42441 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #68968: <==negation-removal== 89507 (pos)
                    (not (Bd_not_checked_p11))

                    ; #69322: <==negation-removal== 73740 (pos)
                    (not (Bb_not_checked_p11))

                    ; #73711: <==negation-removal== 76986 (pos)
                    (not (Pa_not_checked_p11))

                    ; #77938: <==negation-removal== 42949 (pos)
                    (not (Pc_not_checked_p11))

                    ; #78529: <==negation-removal== 66799 (pos)
                    (not (Bc_not_checked_p11))

                    ; #81643: <==negation-removal== 68902 (pos)
                    (not (not_checked_p11))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #12333: <==commonly_known== 83382 (pos)
                    (Bd_checked_p12)

                    ; #14936: <==commonly_known== 83382 (pos)
                    (Ba_checked_p12)

                    ; #19250: <==closure== 73984 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #19987: <==closure== 12333 (pos)
                    (Pd_checked_p12)

                    ; #29422: <==closure== 14936 (pos)
                    (Pa_checked_p12)

                    ; #37650: <==closure== 69572 (pos)
                    (Pb_checked_p12)

                    ; #48323: <==closure== 62356 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #62356: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #66591: <==closure== 83352 (pos)
                    (Pc_checked_p12)

                    ; #69572: <==commonly_known== 83382 (pos)
                    (Bb_checked_p12)

                    ; #73984: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #83352: <==commonly_known== 83382 (pos)
                    (Bc_checked_p12)

                    ; #83382: origin
                    (checked_p12)

                    ; #15005: <==negation-removal== 19250 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #15973: <==negation-removal== 37650 (pos)
                    (not (Bb_not_checked_p12))

                    ; #19135: <==negation-removal== 62356 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #26361: <==uncertain_firing== 73984 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #27507: <==unclosure== 26361 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #30669: <==negation-removal== 19987 (pos)
                    (not (Bd_not_checked_p12))

                    ; #34000: <==negation-removal== 12333 (pos)
                    (not (Pd_not_checked_p12))

                    ; #36007: <==negation-removal== 83352 (pos)
                    (not (Pc_not_checked_p12))

                    ; #40488: <==negation-removal== 73984 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #40718: <==negation-removal== 83382 (pos)
                    (not (not_checked_p12))

                    ; #42785: <==negation-removal== 66591 (pos)
                    (not (Bc_not_checked_p12))

                    ; #46120: <==negation-removal== 14936 (pos)
                    (not (Pa_not_checked_p12))

                    ; #49409: <==unclosure== 83801 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #51845: <==negation-removal== 29422 (pos)
                    (not (Ba_not_checked_p12))

                    ; #66476: <==negation-removal== 69572 (pos)
                    (not (Pb_not_checked_p12))

                    ; #75457: <==negation-removal== 48323 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #83801: <==uncertain_firing== 62356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #17416: <==closure== 44853 (pos)
                    (Pc_checked_p1)

                    ; #44853: <==commonly_known== 52513 (pos)
                    (Bc_checked_p1)

                    ; #46031: <==closure== 84257 (pos)
                    (Pb_checked_p1)

                    ; #52513: origin
                    (checked_p1)

                    ; #52790: <==commonly_known== 52513 (pos)
                    (Bd_checked_p1)

                    ; #56370: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #58965: <==commonly_known== 52513 (pos)
                    (Ba_checked_p1)

                    ; #61386: <==closure== 52790 (pos)
                    (Pd_checked_p1)

                    ; #62577: <==closure== 76371 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #73725: <==closure== 56370 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #76371: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #84257: <==commonly_known== 52513 (pos)
                    (Bb_checked_p1)

                    ; #90569: <==closure== 58965 (pos)
                    (Pa_checked_p1)

                    ; #15539: <==negation-removal== 44853 (pos)
                    (not (Pc_not_checked_p1))

                    ; #18744: <==negation-removal== 56370 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #24469: <==negation-removal== 17416 (pos)
                    (not (Bc_not_checked_p1))

                    ; #24629: <==negation-removal== 73725 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #26486: <==negation-removal== 76371 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #30400: <==negation-removal== 52513 (pos)
                    (not (not_checked_p1))

                    ; #33318: <==negation-removal== 61386 (pos)
                    (not (Bd_not_checked_p1))

                    ; #37880: <==negation-removal== 84257 (pos)
                    (not (Pb_not_checked_p1))

                    ; #55223: <==negation-removal== 90569 (pos)
                    (not (Ba_not_checked_p1))

                    ; #55520: <==negation-removal== 46031 (pos)
                    (not (Bb_not_checked_p1))

                    ; #57798: <==negation-removal== 52790 (pos)
                    (not (Pd_not_checked_p1))

                    ; #61094: <==uncertain_firing== 76371 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #77832: <==unclosure== 61094 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #78592: <==negation-removal== 58965 (pos)
                    (not (Pa_not_checked_p1))

                    ; #84271: <==negation-removal== 62577 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #87024: <==uncertain_firing== 56370 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #87328: <==unclosure== 87024 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10021: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #12875: <==closure== 66066 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #16570: <==commonly_known== 68593 (pos)
                    (Bd_checked_p2)

                    ; #64607: <==closure== 95645 (pos)
                    (Pb_checked_p2)

                    ; #66066: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #66659: <==closure== 75436 (pos)
                    (Pa_checked_p2)

                    ; #68593: origin
                    (checked_p2)

                    ; #68598: <==closure== 10021 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #75436: <==commonly_known== 68593 (pos)
                    (Ba_checked_p2)

                    ; #84484: <==closure== 16570 (pos)
                    (Pd_checked_p2)

                    ; #89588: <==commonly_known== 68593 (pos)
                    (Bc_checked_p2)

                    ; #89737: <==closure== 89588 (pos)
                    (Pc_checked_p2)

                    ; #95645: <==commonly_known== 68593 (pos)
                    (Bb_checked_p2)

                    ; #11039: <==uncertain_firing== 10021 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #17379: <==negation-removal== 64607 (pos)
                    (not (Bb_not_checked_p2))

                    ; #29561: <==negation-removal== 68593 (pos)
                    (not (not_checked_p2))

                    ; #31704: <==negation-removal== 12875 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #39003: <==negation-removal== 89588 (pos)
                    (not (Pc_not_checked_p2))

                    ; #44775: <==unclosure== 65967 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #45561: <==negation-removal== 75436 (pos)
                    (not (Pa_not_checked_p2))

                    ; #45746: <==negation-removal== 68598 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #57317: <==negation-removal== 10021 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #65967: <==uncertain_firing== 66066 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #71656: <==negation-removal== 89737 (pos)
                    (not (Bc_not_checked_p2))

                    ; #74665: <==negation-removal== 16570 (pos)
                    (not (Pd_not_checked_p2))

                    ; #74823: <==negation-removal== 66659 (pos)
                    (not (Ba_not_checked_p2))

                    ; #75872: <==negation-removal== 66066 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #79210: <==negation-removal== 84484 (pos)
                    (not (Bd_not_checked_p2))

                    ; #80922: <==negation-removal== 95645 (pos)
                    (not (Pb_not_checked_p2))

                    ; #87184: <==unclosure== 11039 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #17542: <==commonly_known== 42621 (pos)
                    (Ba_checked_p3)

                    ; #39491: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #42621: origin
                    (checked_p3)

                    ; #43163: <==closure== 17542 (pos)
                    (Pa_checked_p3)

                    ; #55192: <==commonly_known== 42621 (pos)
                    (Bd_checked_p3)

                    ; #63882: <==closure== 86103 (pos)
                    (Pc_checked_p3)

                    ; #66546: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #66632: <==closure== 77269 (pos)
                    (Pb_checked_p3)

                    ; #70544: <==closure== 39491 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #75939: <==closure== 55192 (pos)
                    (Pd_checked_p3)

                    ; #77269: <==commonly_known== 42621 (pos)
                    (Bb_checked_p3)

                    ; #79024: <==closure== 66546 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #86103: <==commonly_known== 42621 (pos)
                    (Bc_checked_p3)

                    ; #18027: <==negation-removal== 43163 (pos)
                    (not (Ba_not_checked_p3))

                    ; #18935: <==negation-removal== 17542 (pos)
                    (not (Pa_not_checked_p3))

                    ; #19605: <==uncertain_firing== 39491 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #22120: <==negation-removal== 42621 (pos)
                    (not (not_checked_p3))

                    ; #26123: <==negation-removal== 77269 (pos)
                    (not (Pb_not_checked_p3))

                    ; #32433: <==negation-removal== 63882 (pos)
                    (not (Bc_not_checked_p3))

                    ; #32971: <==negation-removal== 79024 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #34035: <==unclosure== 34395 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #34395: <==uncertain_firing== 66546 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #34513: <==negation-removal== 55192 (pos)
                    (not (Pd_not_checked_p3))

                    ; #37432: <==negation-removal== 86103 (pos)
                    (not (Pc_not_checked_p3))

                    ; #44208: <==unclosure== 19605 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #47626: <==negation-removal== 70544 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #53417: <==negation-removal== 39491 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #61512: <==negation-removal== 66546 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #69748: <==negation-removal== 75939 (pos)
                    (not (Bd_not_checked_p3))

                    ; #91462: <==negation-removal== 66632 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15416: <==commonly_known== 44365 (pos)
                    (Bb_checked_p4)

                    ; #21308: <==closure== 82728 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #22914: <==commonly_known== 44365 (pos)
                    (Bd_checked_p4)

                    ; #27850: <==closure== 61128 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #37879: <==commonly_known== 44365 (pos)
                    (Ba_checked_p4)

                    ; #38957: <==commonly_known== 44365 (pos)
                    (Bc_checked_p4)

                    ; #44365: origin
                    (checked_p4)

                    ; #57545: <==closure== 38957 (pos)
                    (Pc_checked_p4)

                    ; #57893: <==closure== 22914 (pos)
                    (Pd_checked_p4)

                    ; #61128: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #64431: <==closure== 37879 (pos)
                    (Pa_checked_p4)

                    ; #82728: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #85899: <==closure== 15416 (pos)
                    (Pb_checked_p4)

                    ; #11217: <==uncertain_firing== 82728 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #16297: <==negation-removal== 44365 (pos)
                    (not (not_checked_p4))

                    ; #16911: <==unclosure== 80080 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #19073: <==negation-removal== 27850 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24566: <==negation-removal== 85899 (pos)
                    (not (Bb_not_checked_p4))

                    ; #35809: <==negation-removal== 82728 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #57806: <==negation-removal== 38957 (pos)
                    (not (Pc_not_checked_p4))

                    ; #60322: <==negation-removal== 15416 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61562: <==negation-removal== 61128 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #62351: <==unclosure== 11217 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #64395: <==negation-removal== 22914 (pos)
                    (not (Pd_not_checked_p4))

                    ; #68982: <==negation-removal== 37879 (pos)
                    (not (Pa_not_checked_p4))

                    ; #71195: <==negation-removal== 64431 (pos)
                    (not (Ba_not_checked_p4))

                    ; #76472: <==negation-removal== 21308 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #80080: <==uncertain_firing== 61128 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #81582: <==negation-removal== 57545 (pos)
                    (not (Bc_not_checked_p4))

                    ; #87339: <==negation-removal== 57893 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22504: <==closure== 27037 (pos)
                    (Pa_checked_p5)

                    ; #25144: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #27037: <==commonly_known== 60396 (pos)
                    (Ba_checked_p5)

                    ; #47007: <==commonly_known== 60396 (pos)
                    (Bc_checked_p5)

                    ; #47079: <==commonly_known== 60396 (pos)
                    (Bb_checked_p5)

                    ; #48088: <==closure== 47007 (pos)
                    (Pc_checked_p5)

                    ; #51720: <==closure== 76715 (pos)
                    (Pd_checked_p5)

                    ; #52180: <==closure== 25144 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #60396: origin
                    (checked_p5)

                    ; #63887: <==closure== 47079 (pos)
                    (Pb_checked_p5)

                    ; #67636: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #76715: <==commonly_known== 60396 (pos)
                    (Bd_checked_p5)

                    ; #78759: <==closure== 67636 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #12543: <==unclosure== 62189 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #14873: <==negation-removal== 78759 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #30784: <==negation-removal== 27037 (pos)
                    (not (Pa_not_checked_p5))

                    ; #31160: <==negation-removal== 47079 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34167: <==negation-removal== 60396 (pos)
                    (not (not_checked_p5))

                    ; #38617: <==uncertain_firing== 25144 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #41165: <==negation-removal== 51720 (pos)
                    (not (Bd_not_checked_p5))

                    ; #43237: <==unclosure== 38617 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #46656: <==negation-removal== 48088 (pos)
                    (not (Bc_not_checked_p5))

                    ; #50906: <==negation-removal== 25144 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #57699: <==negation-removal== 22504 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58698: <==negation-removal== 47007 (pos)
                    (not (Pc_not_checked_p5))

                    ; #62189: <==uncertain_firing== 67636 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #62394: <==negation-removal== 52180 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #62540: <==negation-removal== 67636 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #67356: <==negation-removal== 63887 (pos)
                    (not (Bb_not_checked_p5))

                    ; #76332: <==negation-removal== 76715 (pos)
                    (not (Pd_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11378: <==closure== 68922 (pos)
                    (Pd_checked_p6)

                    ; #12853: <==closure== 19507 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #14207: origin
                    (checked_p6)

                    ; #16017: <==commonly_known== 14207 (pos)
                    (Bb_checked_p6)

                    ; #19507: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #22025: <==closure== 77057 (pos)
                    (Pa_checked_p6)

                    ; #29575: <==commonly_known== 14207 (pos)
                    (Bc_checked_p6)

                    ; #32923: <==closure== 16017 (pos)
                    (Pb_checked_p6)

                    ; #55437: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #66037: <==closure== 29575 (pos)
                    (Pc_checked_p6)

                    ; #68716: <==closure== 55437 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #68922: <==commonly_known== 14207 (pos)
                    (Bd_checked_p6)

                    ; #77057: <==commonly_known== 14207 (pos)
                    (Ba_checked_p6)

                    ; #11887: <==negation-removal== 77057 (pos)
                    (not (Pa_not_checked_p6))

                    ; #12036: <==negation-removal== 16017 (pos)
                    (not (Pb_not_checked_p6))

                    ; #16040: <==negation-removal== 11378 (pos)
                    (not (Bd_not_checked_p6))

                    ; #23181: <==unclosure== 50402 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #27789: <==negation-removal== 68922 (pos)
                    (not (Pd_not_checked_p6))

                    ; #36501: <==negation-removal== 32923 (pos)
                    (not (Bb_not_checked_p6))

                    ; #40371: <==uncertain_firing== 19507 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #47618: <==negation-removal== 12853 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #48488: <==negation-removal== 66037 (pos)
                    (not (Bc_not_checked_p6))

                    ; #50402: <==uncertain_firing== 55437 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #63808: <==unclosure== 40371 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #71265: <==negation-removal== 68716 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #73275: <==negation-removal== 19507 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #77425: <==negation-removal== 14207 (pos)
                    (not (not_checked_p6))

                    ; #79255: <==negation-removal== 22025 (pos)
                    (not (Ba_not_checked_p6))

                    ; #79975: <==negation-removal== 29575 (pos)
                    (not (Pc_not_checked_p6))

                    ; #87772: <==negation-removal== 55437 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #12306: <==commonly_known== 27631 (pos)
                    (Bd_checked_p7)

                    ; #14100: <==closure== 55963 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #23334: <==closure== 55672 (pos)
                    (Pa_checked_p7)

                    ; #27631: origin
                    (checked_p7)

                    ; #46411: <==closure== 60636 (pos)
                    (Pc_checked_p7)

                    ; #51787: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #55672: <==commonly_known== 27631 (pos)
                    (Ba_checked_p7)

                    ; #55963: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #60636: <==commonly_known== 27631 (pos)
                    (Bc_checked_p7)

                    ; #61167: <==commonly_known== 27631 (pos)
                    (Bb_checked_p7)

                    ; #67756: <==closure== 61167 (pos)
                    (Pb_checked_p7)

                    ; #75763: <==closure== 51787 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #79732: <==closure== 12306 (pos)
                    (Pd_checked_p7)

                    ; #10806: <==uncertain_firing== 55963 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #25595: <==negation-removal== 55963 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #30058: <==negation-removal== 75763 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #38322: <==negation-removal== 55672 (pos)
                    (not (Pa_not_checked_p7))

                    ; #43617: <==negation-removal== 51787 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #46265: <==negation-removal== 27631 (pos)
                    (not (not_checked_p7))

                    ; #51550: <==unclosure== 10806 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #51661: <==negation-removal== 61167 (pos)
                    (not (Pb_not_checked_p7))

                    ; #54446: <==negation-removal== 14100 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #65719: <==negation-removal== 12306 (pos)
                    (not (Pd_not_checked_p7))

                    ; #66285: <==negation-removal== 67756 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67089: <==unclosure== 83212 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #72319: <==negation-removal== 23334 (pos)
                    (not (Ba_not_checked_p7))

                    ; #83212: <==uncertain_firing== 51787 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #85486: <==negation-removal== 46411 (pos)
                    (not (Bc_not_checked_p7))

                    ; #85561: <==negation-removal== 79732 (pos)
                    (not (Bd_not_checked_p7))

                    ; #85813: <==negation-removal== 60636 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11270: <==closure== 26421 (pos)
                    (Pc_checked_p8)

                    ; #26421: <==commonly_known== 67364 (pos)
                    (Bc_checked_p8)

                    ; #35208: <==closure== 91208 (pos)
                    (Pb_checked_p8)

                    ; #42637: <==closure== 64104 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #50722: <==commonly_known== 67364 (pos)
                    (Ba_checked_p8)

                    ; #57760: <==closure== 61256 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #61256: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #64104: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #67364: origin
                    (checked_p8)

                    ; #69774: <==closure== 80306 (pos)
                    (Pd_checked_p8)

                    ; #80306: <==commonly_known== 67364 (pos)
                    (Bd_checked_p8)

                    ; #87024: <==closure== 50722 (pos)
                    (Pa_checked_p8)

                    ; #91208: <==commonly_known== 67364 (pos)
                    (Bb_checked_p8)

                    ; #14453: <==unclosure== 88950 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #23665: <==negation-removal== 42637 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #24912: <==negation-removal== 87024 (pos)
                    (not (Ba_not_checked_p8))

                    ; #29136: <==negation-removal== 80306 (pos)
                    (not (Pd_not_checked_p8))

                    ; #31523: <==negation-removal== 26421 (pos)
                    (not (Pc_not_checked_p8))

                    ; #35287: <==negation-removal== 67364 (pos)
                    (not (not_checked_p8))

                    ; #39529: <==negation-removal== 64104 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #48167: <==negation-removal== 57760 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #49245: <==negation-removal== 35208 (pos)
                    (not (Bb_not_checked_p8))

                    ; #52931: <==uncertain_firing== 64104 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #55134: <==negation-removal== 11270 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55875: <==negation-removal== 61256 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #67956: <==negation-removal== 69774 (pos)
                    (not (Bd_not_checked_p8))

                    ; #80225: <==negation-removal== 91208 (pos)
                    (not (Pb_not_checked_p8))

                    ; #82706: <==unclosure== 52931 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #87795: <==negation-removal== 50722 (pos)
                    (not (Pa_not_checked_p8))

                    ; #88950: <==uncertain_firing== 61256 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #18618: <==commonly_known== 72318 (pos)
                    (Bc_checked_p9)

                    ; #19566: <==closure== 33598 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #26216: <==closure== 87160 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #33598: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #34236: <==commonly_known== 72318 (pos)
                    (Bb_checked_p9)

                    ; #41793: <==closure== 67766 (pos)
                    (Pa_checked_p9)

                    ; #43624: <==closure== 18618 (pos)
                    (Pc_checked_p9)

                    ; #57292: <==closure== 34236 (pos)
                    (Pb_checked_p9)

                    ; #60978: <==commonly_known== 72318 (pos)
                    (Bd_checked_p9)

                    ; #67766: <==commonly_known== 72318 (pos)
                    (Ba_checked_p9)

                    ; #72318: origin
                    (checked_p9)

                    ; #78537: <==closure== 60978 (pos)
                    (Pd_checked_p9)

                    ; #87160: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #16116: <==uncertain_firing== 33598 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #16126: <==negation-removal== 33598 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #16710: <==negation-removal== 41793 (pos)
                    (not (Ba_not_checked_p9))

                    ; #20957: <==negation-removal== 26216 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #23226: <==negation-removal== 87160 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #28284: <==negation-removal== 34236 (pos)
                    (not (Pb_not_checked_p9))

                    ; #30856: <==negation-removal== 72318 (pos)
                    (not (not_checked_p9))

                    ; #33693: <==unclosure== 84721 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #51371: <==negation-removal== 18618 (pos)
                    (not (Pc_not_checked_p9))

                    ; #54473: <==negation-removal== 19566 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #56099: <==negation-removal== 60978 (pos)
                    (not (Pd_not_checked_p9))

                    ; #61422: <==negation-removal== 43624 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68402: <==negation-removal== 78537 (pos)
                    (not (Bd_not_checked_p9))

                    ; #78417: <==negation-removal== 57292 (pos)
                    (not (Bb_not_checked_p9))

                    ; #80970: <==unclosure== 16116 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #81256: <==negation-removal== 67766 (pos)
                    (not (Pa_not_checked_p9))

                    ; #84721: <==uncertain_firing== 87160 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))))

    (:action observe_d_p10_s
        :precondition (and (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #24214: <==closure== 42322 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #29694: origin
                    (checked_p10)

                    ; #39644: <==closure== 89367 (pos)
                    (Pb_checked_p10)

                    ; #42322: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #48746: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #58799: <==closure== 48746 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #69560: <==closure== 76952 (pos)
                    (Pa_checked_p10)

                    ; #72028: <==commonly_known== 29694 (pos)
                    (Bc_checked_p10)

                    ; #76952: <==commonly_known== 29694 (pos)
                    (Ba_checked_p10)

                    ; #77877: <==closure== 84507 (pos)
                    (Pd_checked_p10)

                    ; #82006: <==closure== 72028 (pos)
                    (Pc_checked_p10)

                    ; #84507: <==commonly_known== 29694 (pos)
                    (Bd_checked_p10)

                    ; #89367: <==commonly_known== 29694 (pos)
                    (Bb_checked_p10)

                    ; #10511: <==negation-removal== 39644 (pos)
                    (not (Bb_not_checked_p10))

                    ; #13999: <==negation-removal== 76952 (pos)
                    (not (Pa_not_checked_p10))

                    ; #14213: <==negation-removal== 29694 (pos)
                    (not (not_checked_p10))

                    ; #15505: <==negation-removal== 89367 (pos)
                    (not (Pb_not_checked_p10))

                    ; #24895: <==negation-removal== 69560 (pos)
                    (not (Ba_not_checked_p10))

                    ; #25617: <==negation-removal== 72028 (pos)
                    (not (Pc_not_checked_p10))

                    ; #42801: <==negation-removal== 84507 (pos)
                    (not (Pd_not_checked_p10))

                    ; #43321: <==unclosure== 87502 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #43893: <==negation-removal== 48746 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #44551: <==negation-removal== 24214 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #50248: <==negation-removal== 42322 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #59803: <==negation-removal== 77877 (pos)
                    (not (Bd_not_checked_p10))

                    ; #70283: <==uncertain_firing== 48746 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #75935: <==negation-removal== 82006 (pos)
                    (not (Bc_not_checked_p10))

                    ; #82375: <==negation-removal== 58799 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #87502: <==uncertain_firing== 42322 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #89019: <==unclosure== 70283 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))))

    (:action observe_d_p11_s
        :precondition (and (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #13882: <==closure== 15402 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #15402: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #38389: <==closure== 76986 (pos)
                    (Pa_checked_p11)

                    ; #42949: <==commonly_known== 68902 (pos)
                    (Bc_checked_p11)

                    ; #56154: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #58537: <==commonly_known== 68902 (pos)
                    (Bb_checked_p11)

                    ; #61387: <==commonly_known== 68902 (pos)
                    (Bd_checked_p11)

                    ; #66799: <==closure== 42949 (pos)
                    (Pc_checked_p11)

                    ; #68902: origin
                    (checked_p11)

                    ; #73561: <==closure== 56154 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #73740: <==closure== 58537 (pos)
                    (Pb_checked_p11)

                    ; #76986: <==commonly_known== 68902 (pos)
                    (Ba_checked_p11)

                    ; #89507: <==closure== 61387 (pos)
                    (Pd_checked_p11)

                    ; #13046: <==unclosure== 51546 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #18844: <==uncertain_firing== 15402 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #19989: <==negation-removal== 61387 (pos)
                    (not (Pd_not_checked_p11))

                    ; #22533: <==negation-removal== 13882 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #37619: <==negation-removal== 56154 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #43502: <==negation-removal== 58537 (pos)
                    (not (Pb_not_checked_p11))

                    ; #51546: <==uncertain_firing== 56154 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #55911: <==negation-removal== 38389 (pos)
                    (not (Ba_not_checked_p11))

                    ; #55929: <==unclosure== 18844 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #67251: <==negation-removal== 15402 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #68968: <==negation-removal== 89507 (pos)
                    (not (Bd_not_checked_p11))

                    ; #69322: <==negation-removal== 73740 (pos)
                    (not (Bb_not_checked_p11))

                    ; #72608: <==negation-removal== 73561 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #73711: <==negation-removal== 76986 (pos)
                    (not (Pa_not_checked_p11))

                    ; #77938: <==negation-removal== 42949 (pos)
                    (not (Pc_not_checked_p11))

                    ; #78529: <==negation-removal== 66799 (pos)
                    (not (Bc_not_checked_p11))

                    ; #81643: <==negation-removal== 68902 (pos)
                    (not (not_checked_p11))))

    (:action observe_d_p12_s
        :precondition (and (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #12333: <==commonly_known== 83382 (pos)
                    (Bd_checked_p12)

                    ; #14936: <==commonly_known== 83382 (pos)
                    (Ba_checked_p12)

                    ; #19987: <==closure== 12333 (pos)
                    (Pd_checked_p12)

                    ; #29422: <==closure== 14936 (pos)
                    (Pa_checked_p12)

                    ; #37650: <==closure== 69572 (pos)
                    (Pb_checked_p12)

                    ; #46478: <==closure== 75065 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #48753: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #66591: <==closure== 83352 (pos)
                    (Pc_checked_p12)

                    ; #69572: <==commonly_known== 83382 (pos)
                    (Bb_checked_p12)

                    ; #75065: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #83352: <==commonly_known== 83382 (pos)
                    (Bc_checked_p12)

                    ; #83382: origin
                    (checked_p12)

                    ; #92106: <==closure== 48753 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #13238: <==negation-removal== 46478 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #15973: <==negation-removal== 37650 (pos)
                    (not (Bb_not_checked_p12))

                    ; #22538: <==negation-removal== 48753 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #30669: <==negation-removal== 19987 (pos)
                    (not (Bd_not_checked_p12))

                    ; #34000: <==negation-removal== 12333 (pos)
                    (not (Pd_not_checked_p12))

                    ; #36007: <==negation-removal== 83352 (pos)
                    (not (Pc_not_checked_p12))

                    ; #40718: <==negation-removal== 83382 (pos)
                    (not (not_checked_p12))

                    ; #42389: <==unclosure== 77929 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #42785: <==negation-removal== 66591 (pos)
                    (not (Bc_not_checked_p12))

                    ; #46120: <==negation-removal== 14936 (pos)
                    (not (Pa_not_checked_p12))

                    ; #51845: <==negation-removal== 29422 (pos)
                    (not (Ba_not_checked_p12))

                    ; #58398: <==negation-removal== 92106 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #66476: <==negation-removal== 69572 (pos)
                    (not (Pb_not_checked_p12))

                    ; #72625: <==uncertain_firing== 48753 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #77929: <==uncertain_firing== 75065 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #83184: <==negation-removal== 75065 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #90656: <==unclosure== 72625 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))))

    (:action observe_d_p1_s
        :precondition (and (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #17416: <==closure== 44853 (pos)
                    (Pc_checked_p1)

                    ; #31936: <==closure== 45305 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #44853: <==commonly_known== 52513 (pos)
                    (Bc_checked_p1)

                    ; #45305: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #46031: <==closure== 84257 (pos)
                    (Pb_checked_p1)

                    ; #49932: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #52513: origin
                    (checked_p1)

                    ; #52790: <==commonly_known== 52513 (pos)
                    (Bd_checked_p1)

                    ; #58965: <==commonly_known== 52513 (pos)
                    (Ba_checked_p1)

                    ; #61386: <==closure== 52790 (pos)
                    (Pd_checked_p1)

                    ; #82642: <==closure== 49932 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #84257: <==commonly_known== 52513 (pos)
                    (Bb_checked_p1)

                    ; #90569: <==closure== 58965 (pos)
                    (Pa_checked_p1)

                    ; #15539: <==negation-removal== 44853 (pos)
                    (not (Pc_not_checked_p1))

                    ; #15618: <==negation-removal== 45305 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #24469: <==negation-removal== 17416 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30400: <==negation-removal== 52513 (pos)
                    (not (not_checked_p1))

                    ; #33318: <==negation-removal== 61386 (pos)
                    (not (Bd_not_checked_p1))

                    ; #37880: <==negation-removal== 84257 (pos)
                    (not (Pb_not_checked_p1))

                    ; #45513: <==negation-removal== 31936 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #49403: <==unclosure== 77540 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #49861: <==unclosure== 90425 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #55223: <==negation-removal== 90569 (pos)
                    (not (Ba_not_checked_p1))

                    ; #55520: <==negation-removal== 46031 (pos)
                    (not (Bb_not_checked_p1))

                    ; #57798: <==negation-removal== 52790 (pos)
                    (not (Pd_not_checked_p1))

                    ; #71344: <==negation-removal== 82642 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #77540: <==uncertain_firing== 45305 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #78592: <==negation-removal== 58965 (pos)
                    (not (Pa_not_checked_p1))

                    ; #85672: <==negation-removal== 49932 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #90425: <==uncertain_firing== 49932 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))))

    (:action observe_d_p2_s
        :precondition (and (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #16570: <==commonly_known== 68593 (pos)
                    (Bd_checked_p2)

                    ; #27480: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #54411: <==closure== 61602 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #61602: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #64607: <==closure== 95645 (pos)
                    (Pb_checked_p2)

                    ; #66659: <==closure== 75436 (pos)
                    (Pa_checked_p2)

                    ; #68593: origin
                    (checked_p2)

                    ; #75436: <==commonly_known== 68593 (pos)
                    (Ba_checked_p2)

                    ; #75939: <==closure== 27480 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #84484: <==closure== 16570 (pos)
                    (Pd_checked_p2)

                    ; #89588: <==commonly_known== 68593 (pos)
                    (Bc_checked_p2)

                    ; #89737: <==closure== 89588 (pos)
                    (Pc_checked_p2)

                    ; #95645: <==commonly_known== 68593 (pos)
                    (Bb_checked_p2)

                    ; #11349: <==unclosure== 16574 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #16574: <==uncertain_firing== 27480 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #17379: <==negation-removal== 64607 (pos)
                    (not (Bb_not_checked_p2))

                    ; #24107: <==unclosure== 75065 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #28989: <==negation-removal== 75939 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #29561: <==negation-removal== 68593 (pos)
                    (not (not_checked_p2))

                    ; #32651: <==negation-removal== 54411 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #37044: <==negation-removal== 61602 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #39003: <==negation-removal== 89588 (pos)
                    (not (Pc_not_checked_p2))

                    ; #45561: <==negation-removal== 75436 (pos)
                    (not (Pa_not_checked_p2))

                    ; #71656: <==negation-removal== 89737 (pos)
                    (not (Bc_not_checked_p2))

                    ; #74665: <==negation-removal== 16570 (pos)
                    (not (Pd_not_checked_p2))

                    ; #74823: <==negation-removal== 66659 (pos)
                    (not (Ba_not_checked_p2))

                    ; #75065: <==uncertain_firing== 61602 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #79210: <==negation-removal== 84484 (pos)
                    (not (Bd_not_checked_p2))

                    ; #80922: <==negation-removal== 95645 (pos)
                    (not (Pb_not_checked_p2))

                    ; #81035: <==negation-removal== 27480 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))))

    (:action observe_d_p3_s
        :precondition (and (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #13749: <==closure== 71214 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #17542: <==commonly_known== 42621 (pos)
                    (Ba_checked_p3)

                    ; #22478: <==closure== 42439 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #42439: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #42621: origin
                    (checked_p3)

                    ; #43163: <==closure== 17542 (pos)
                    (Pa_checked_p3)

                    ; #55192: <==commonly_known== 42621 (pos)
                    (Bd_checked_p3)

                    ; #63882: <==closure== 86103 (pos)
                    (Pc_checked_p3)

                    ; #66632: <==closure== 77269 (pos)
                    (Pb_checked_p3)

                    ; #71214: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #75939: <==closure== 55192 (pos)
                    (Pd_checked_p3)

                    ; #77269: <==commonly_known== 42621 (pos)
                    (Bb_checked_p3)

                    ; #86103: <==commonly_known== 42621 (pos)
                    (Bc_checked_p3)

                    ; #11630: <==unclosure== 76537 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #18027: <==negation-removal== 43163 (pos)
                    (not (Ba_not_checked_p3))

                    ; #18935: <==negation-removal== 17542 (pos)
                    (not (Pa_not_checked_p3))

                    ; #19289: <==unclosure== 84359 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #22120: <==negation-removal== 42621 (pos)
                    (not (not_checked_p3))

                    ; #24096: <==negation-removal== 13749 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #26123: <==negation-removal== 77269 (pos)
                    (not (Pb_not_checked_p3))

                    ; #32433: <==negation-removal== 63882 (pos)
                    (not (Bc_not_checked_p3))

                    ; #33242: <==negation-removal== 42439 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #34513: <==negation-removal== 55192 (pos)
                    (not (Pd_not_checked_p3))

                    ; #37432: <==negation-removal== 86103 (pos)
                    (not (Pc_not_checked_p3))

                    ; #57020: <==negation-removal== 22478 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #69748: <==negation-removal== 75939 (pos)
                    (not (Bd_not_checked_p3))

                    ; #71912: <==negation-removal== 71214 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #76537: <==uncertain_firing== 42439 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #84359: <==uncertain_firing== 71214 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #91462: <==negation-removal== 66632 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observe_d_p4_s
        :precondition (and (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #15416: <==commonly_known== 44365 (pos)
                    (Bb_checked_p4)

                    ; #18587: <==closure== 87475 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #22914: <==commonly_known== 44365 (pos)
                    (Bd_checked_p4)

                    ; #37879: <==commonly_known== 44365 (pos)
                    (Ba_checked_p4)

                    ; #38957: <==commonly_known== 44365 (pos)
                    (Bc_checked_p4)

                    ; #44365: origin
                    (checked_p4)

                    ; #57545: <==closure== 38957 (pos)
                    (Pc_checked_p4)

                    ; #57893: <==closure== 22914 (pos)
                    (Pd_checked_p4)

                    ; #64431: <==closure== 37879 (pos)
                    (Pa_checked_p4)

                    ; #68930: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #81137: <==closure== 68930 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #85899: <==closure== 15416 (pos)
                    (Pb_checked_p4)

                    ; #87475: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #11742: <==unclosure== 63256 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #16297: <==negation-removal== 44365 (pos)
                    (not (not_checked_p4))

                    ; #20071: <==unclosure== 77449 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #24566: <==negation-removal== 85899 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37945: <==negation-removal== 87475 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #49155: <==negation-removal== 68930 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #49459: <==negation-removal== 18587 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #57806: <==negation-removal== 38957 (pos)
                    (not (Pc_not_checked_p4))

                    ; #60322: <==negation-removal== 15416 (pos)
                    (not (Pb_not_checked_p4))

                    ; #63256: <==uncertain_firing== 68930 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #64395: <==negation-removal== 22914 (pos)
                    (not (Pd_not_checked_p4))

                    ; #68982: <==negation-removal== 37879 (pos)
                    (not (Pa_not_checked_p4))

                    ; #71195: <==negation-removal== 64431 (pos)
                    (not (Ba_not_checked_p4))

                    ; #75381: <==negation-removal== 81137 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #77449: <==uncertain_firing== 87475 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #81582: <==negation-removal== 57545 (pos)
                    (not (Bc_not_checked_p4))

                    ; #87339: <==negation-removal== 57893 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observe_d_p5_s
        :precondition (and (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #22504: <==closure== 27037 (pos)
                    (Pa_checked_p5)

                    ; #27037: <==commonly_known== 60396 (pos)
                    (Ba_checked_p5)

                    ; #31191: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #32975: <==closure== 31191 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #47007: <==commonly_known== 60396 (pos)
                    (Bc_checked_p5)

                    ; #47079: <==commonly_known== 60396 (pos)
                    (Bb_checked_p5)

                    ; #48088: <==closure== 47007 (pos)
                    (Pc_checked_p5)

                    ; #48634: <==closure== 69164 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #51720: <==closure== 76715 (pos)
                    (Pd_checked_p5)

                    ; #60396: origin
                    (checked_p5)

                    ; #63887: <==closure== 47079 (pos)
                    (Pb_checked_p5)

                    ; #69164: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #76715: <==commonly_known== 60396 (pos)
                    (Bd_checked_p5)

                    ; #17957: <==negation-removal== 69164 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #20653: <==negation-removal== 31191 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #30784: <==negation-removal== 27037 (pos)
                    (not (Pa_not_checked_p5))

                    ; #31160: <==negation-removal== 47079 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34167: <==negation-removal== 60396 (pos)
                    (not (not_checked_p5))

                    ; #36873: <==unclosure== 78306 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #41165: <==negation-removal== 51720 (pos)
                    (not (Bd_not_checked_p5))

                    ; #46656: <==negation-removal== 48088 (pos)
                    (not (Bc_not_checked_p5))

                    ; #47268: <==negation-removal== 32975 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #57687: <==uncertain_firing== 69164 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #57699: <==negation-removal== 22504 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58698: <==negation-removal== 47007 (pos)
                    (not (Pc_not_checked_p5))

                    ; #61099: <==unclosure== 57687 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #67356: <==negation-removal== 63887 (pos)
                    (not (Bb_not_checked_p5))

                    ; #76332: <==negation-removal== 76715 (pos)
                    (not (Pd_not_checked_p5))

                    ; #78306: <==uncertain_firing== 31191 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #81183: <==negation-removal== 48634 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action observe_d_p6_s
        :precondition (and (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #11378: <==closure== 68922 (pos)
                    (Pd_checked_p6)

                    ; #14207: origin
                    (checked_p6)

                    ; #16017: <==commonly_known== 14207 (pos)
                    (Bb_checked_p6)

                    ; #22025: <==closure== 77057 (pos)
                    (Pa_checked_p6)

                    ; #29575: <==commonly_known== 14207 (pos)
                    (Bc_checked_p6)

                    ; #32923: <==closure== 16017 (pos)
                    (Pb_checked_p6)

                    ; #36086: <==closure== 37025 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #37025: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #55161: <==closure== 68886 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #66037: <==closure== 29575 (pos)
                    (Pc_checked_p6)

                    ; #68886: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #68922: <==commonly_known== 14207 (pos)
                    (Bd_checked_p6)

                    ; #77057: <==commonly_known== 14207 (pos)
                    (Ba_checked_p6)

                    ; #11887: <==negation-removal== 77057 (pos)
                    (not (Pa_not_checked_p6))

                    ; #12036: <==negation-removal== 16017 (pos)
                    (not (Pb_not_checked_p6))

                    ; #16040: <==negation-removal== 11378 (pos)
                    (not (Bd_not_checked_p6))

                    ; #27789: <==negation-removal== 68922 (pos)
                    (not (Pd_not_checked_p6))

                    ; #30953: <==unclosure== 79519 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #36501: <==negation-removal== 32923 (pos)
                    (not (Bb_not_checked_p6))

                    ; #43236: <==unclosure== 66119 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #48488: <==negation-removal== 66037 (pos)
                    (not (Bc_not_checked_p6))

                    ; #60303: <==negation-removal== 36086 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #63236: <==negation-removal== 68886 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #66119: <==uncertain_firing== 68886 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #77425: <==negation-removal== 14207 (pos)
                    (not (not_checked_p6))

                    ; #77551: <==negation-removal== 55161 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #79255: <==negation-removal== 22025 (pos)
                    (not (Ba_not_checked_p6))

                    ; #79519: <==uncertain_firing== 37025 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #79975: <==negation-removal== 29575 (pos)
                    (not (Pc_not_checked_p6))

                    ; #87147: <==negation-removal== 37025 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))))

    (:action observe_d_p7_s
        :precondition (and (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #12306: <==commonly_known== 27631 (pos)
                    (Bd_checked_p7)

                    ; #23334: <==closure== 55672 (pos)
                    (Pa_checked_p7)

                    ; #27631: origin
                    (checked_p7)

                    ; #28191: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #31709: <==closure== 28191 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #33676: <==closure== 40140 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #40140: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #46411: <==closure== 60636 (pos)
                    (Pc_checked_p7)

                    ; #55672: <==commonly_known== 27631 (pos)
                    (Ba_checked_p7)

                    ; #60636: <==commonly_known== 27631 (pos)
                    (Bc_checked_p7)

                    ; #61167: <==commonly_known== 27631 (pos)
                    (Bb_checked_p7)

                    ; #67756: <==closure== 61167 (pos)
                    (Pb_checked_p7)

                    ; #79732: <==closure== 12306 (pos)
                    (Pd_checked_p7)

                    ; #22180: <==negation-removal== 28191 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #25670: <==negation-removal== 33676 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #38322: <==negation-removal== 55672 (pos)
                    (not (Pa_not_checked_p7))

                    ; #42617: <==uncertain_firing== 40140 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #46265: <==negation-removal== 27631 (pos)
                    (not (not_checked_p7))

                    ; #49920: <==unclosure== 42617 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #51661: <==negation-removal== 61167 (pos)
                    (not (Pb_not_checked_p7))

                    ; #59085: <==negation-removal== 40140 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #65719: <==negation-removal== 12306 (pos)
                    (not (Pd_not_checked_p7))

                    ; #66285: <==negation-removal== 67756 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67832: <==unclosure== 71437 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #71437: <==uncertain_firing== 28191 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #72319: <==negation-removal== 23334 (pos)
                    (not (Ba_not_checked_p7))

                    ; #80177: <==negation-removal== 31709 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #85486: <==negation-removal== 46411 (pos)
                    (not (Bc_not_checked_p7))

                    ; #85561: <==negation-removal== 79732 (pos)
                    (not (Bd_not_checked_p7))

                    ; #85813: <==negation-removal== 60636 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observe_d_p8_s
        :precondition (and (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #11270: <==closure== 26421 (pos)
                    (Pc_checked_p8)

                    ; #26421: <==commonly_known== 67364 (pos)
                    (Bc_checked_p8)

                    ; #35208: <==closure== 91208 (pos)
                    (Pb_checked_p8)

                    ; #37786: <==closure== 56974 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #50722: <==commonly_known== 67364 (pos)
                    (Ba_checked_p8)

                    ; #56974: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #67364: origin
                    (checked_p8)

                    ; #69774: <==closure== 80306 (pos)
                    (Pd_checked_p8)

                    ; #70658: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #80306: <==commonly_known== 67364 (pos)
                    (Bd_checked_p8)

                    ; #85558: <==closure== 70658 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #87024: <==closure== 50722 (pos)
                    (Pa_checked_p8)

                    ; #91208: <==commonly_known== 67364 (pos)
                    (Bb_checked_p8)

                    ; #16583: <==uncertain_firing== 70658 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #22714: <==negation-removal== 37786 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #24912: <==negation-removal== 87024 (pos)
                    (not (Ba_not_checked_p8))

                    ; #29136: <==negation-removal== 80306 (pos)
                    (not (Pd_not_checked_p8))

                    ; #31523: <==negation-removal== 26421 (pos)
                    (not (Pc_not_checked_p8))

                    ; #35287: <==negation-removal== 67364 (pos)
                    (not (not_checked_p8))

                    ; #37211: <==unclosure== 16583 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #47337: <==negation-removal== 56974 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #49245: <==negation-removal== 35208 (pos)
                    (not (Bb_not_checked_p8))

                    ; #55134: <==negation-removal== 11270 (pos)
                    (not (Bc_not_checked_p8))

                    ; #56302: <==unclosure== 67260 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #65580: <==negation-removal== 70658 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #67260: <==uncertain_firing== 56974 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #67956: <==negation-removal== 69774 (pos)
                    (not (Bd_not_checked_p8))

                    ; #80225: <==negation-removal== 91208 (pos)
                    (not (Pb_not_checked_p8))

                    ; #82346: <==negation-removal== 85558 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #87795: <==negation-removal== 50722 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observe_d_p9_s
        :precondition (and (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #18618: <==commonly_known== 72318 (pos)
                    (Bc_checked_p9)

                    ; #21878: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #29098: <==closure== 21878 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #34236: <==commonly_known== 72318 (pos)
                    (Bb_checked_p9)

                    ; #41793: <==closure== 67766 (pos)
                    (Pa_checked_p9)

                    ; #43624: <==closure== 18618 (pos)
                    (Pc_checked_p9)

                    ; #57292: <==closure== 34236 (pos)
                    (Pb_checked_p9)

                    ; #60978: <==commonly_known== 72318 (pos)
                    (Bd_checked_p9)

                    ; #62393: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #67766: <==commonly_known== 72318 (pos)
                    (Ba_checked_p9)

                    ; #72318: origin
                    (checked_p9)

                    ; #78537: <==closure== 60978 (pos)
                    (Pd_checked_p9)

                    ; #83844: <==closure== 62393 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #16710: <==negation-removal== 41793 (pos)
                    (not (Ba_not_checked_p9))

                    ; #24842: <==unclosure== 53625 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #28284: <==negation-removal== 34236 (pos)
                    (not (Pb_not_checked_p9))

                    ; #30856: <==negation-removal== 72318 (pos)
                    (not (not_checked_p9))

                    ; #39156: <==negation-removal== 21878 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #41188: <==negation-removal== 83844 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #46367: <==negation-removal== 62393 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #46886: <==uncertain_firing== 21878 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #51371: <==negation-removal== 18618 (pos)
                    (not (Pc_not_checked_p9))

                    ; #53625: <==uncertain_firing== 62393 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #56099: <==negation-removal== 60978 (pos)
                    (not (Pd_not_checked_p9))

                    ; #60294: <==unclosure== 46886 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #61422: <==negation-removal== 43624 (pos)
                    (not (Bc_not_checked_p9))

                    ; #68402: <==negation-removal== 78537 (pos)
                    (not (Bd_not_checked_p9))

                    ; #70708: <==negation-removal== 29098 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #78417: <==negation-removal== 57292 (pos)
                    (not (Bb_not_checked_p9))

                    ; #81256: <==negation-removal== 67766 (pos)
                    (not (Pa_not_checked_p9))))

)