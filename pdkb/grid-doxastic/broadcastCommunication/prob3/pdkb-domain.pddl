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
        (not_leader_a)
        (not_leader_b)
        (not_leader_c)
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
        (leader_a)
        (leader_b)
        (leader_c)
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
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (leader_a))
        :effect (and
                    ; #14916: <==closure== 83769 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #83769: origin
                    (Ba_not_survivorat_s_p10)

                    ; #30149: <==negation-removal== 83769 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #68017: <==negation-removal== 14916 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_a_b_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (leader_b))
        :effect (and
                    ; #36414: origin
                    (Bb_not_survivorat_s_p10)

                    ; #41645: <==closure== 36414 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #32941: <==negation-removal== 36414 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #43081: <==negation-removal== 41645 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_a_c_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (leader_c)
                           (at_a_p10))
        :effect (and
                    ; #14451: origin
                    (Bc_not_survivorat_s_p10)

                    ; #90712: <==closure== 14451 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #26850: <==negation-removal== 14451 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #75491: <==negation-removal== 90712 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_b_a_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_a))
        :effect (and
                    ; #14916: <==closure== 83769 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #83769: origin
                    (Ba_not_survivorat_s_p10)

                    ; #30149: <==negation-removal== 83769 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #68017: <==negation-removal== 14916 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_b_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b))
        :effect (and
                    ; #36414: origin
                    (Bb_not_survivorat_s_p10)

                    ; #41645: <==closure== 36414 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #32941: <==negation-removal== 36414 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #43081: <==negation-removal== 41645 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #14451: origin
                    (Bc_not_survivorat_s_p10)

                    ; #90712: <==closure== 14451 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #26850: <==negation-removal== 14451 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #75491: <==negation-removal== 90712 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #14916: <==closure== 83769 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #83769: origin
                    (Ba_not_survivorat_s_p10)

                    ; #30149: <==negation-removal== 83769 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #68017: <==negation-removal== 14916 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #36414: origin
                    (Bb_not_survivorat_s_p10)

                    ; #41645: <==closure== 36414 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #32941: <==negation-removal== 36414 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #43081: <==negation-removal== 41645 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (leader_c)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #14451: origin
                    (Bc_not_survivorat_s_p10)

                    ; #90712: <==closure== 14451 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #26850: <==negation-removal== 14451 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #75491: <==negation-removal== 90712 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #39311: <==closure== 46327 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #46327: origin
                    (Ba_not_survivorat_s_p11)

                    ; #78410: <==negation-removal== 39311 (pos)
                    (not (Ba_survivorat_s_p11))

                    ; #80433: <==negation-removal== 46327 (pos)
                    (not (Pa_survivorat_s_p11))))

    (:action badcomm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #44031: origin
                    (Bb_not_survivorat_s_p11)

                    ; #47512: <==closure== 44031 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #18466: <==negation-removal== 44031 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #29810: <==negation-removal== 47512 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #47567: <==closure== 80635 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #80635: origin
                    (Bc_not_survivorat_s_p11)

                    ; #26820: <==negation-removal== 47567 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #89466: <==negation-removal== 80635 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_b_a_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #39311: <==closure== 46327 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #46327: origin
                    (Ba_not_survivorat_s_p11)

                    ; #78410: <==negation-removal== 39311 (pos)
                    (not (Ba_survivorat_s_p11))

                    ; #80433: <==negation-removal== 46327 (pos)
                    (not (Pa_survivorat_s_p11))))

    (:action badcomm_p11_b_b_s
        :precondition (and (leader_b)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #44031: origin
                    (Bb_not_survivorat_s_p11)

                    ; #47512: <==closure== 44031 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #18466: <==negation-removal== 44031 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #29810: <==negation-removal== 47512 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_b_c_s
        :precondition (and (leader_c)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #47567: <==closure== 80635 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #80635: origin
                    (Bc_not_survivorat_s_p11)

                    ; #26820: <==negation-removal== 47567 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #89466: <==negation-removal== 80635 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_c_a_s
        :precondition (and (Pc_survivorat_s_p11)
                           (leader_a)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #39311: <==closure== 46327 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #46327: origin
                    (Ba_not_survivorat_s_p11)

                    ; #78410: <==negation-removal== 39311 (pos)
                    (not (Ba_survivorat_s_p11))

                    ; #80433: <==negation-removal== 46327 (pos)
                    (not (Pa_survivorat_s_p11))))

    (:action badcomm_p11_c_b_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_b)
                           (at_c_p11))
        :effect (and
                    ; #44031: origin
                    (Bb_not_survivorat_s_p11)

                    ; #47512: <==closure== 44031 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #18466: <==negation-removal== 44031 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #29810: <==negation-removal== 47512 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_c_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (leader_c)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #47567: <==closure== 80635 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #80635: origin
                    (Bc_not_survivorat_s_p11)

                    ; #26820: <==negation-removal== 47567 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #89466: <==negation-removal== 80635 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (leader_a)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #33893: <==closure== 50511 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #50511: origin
                    (Ba_not_survivorat_s_p12)

                    ; #32088: <==negation-removal== 50511 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #62703: <==negation-removal== 33893 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #56400: origin
                    (Bb_not_survivorat_s_p12)

                    ; #78566: <==closure== 56400 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #65115: <==negation-removal== 56400 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #78574: <==negation-removal== 78566 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #13166: <==closure== 40975 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #40975: origin
                    (Bc_not_survivorat_s_p12)

                    ; #32712: <==negation-removal== 13166 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #95178: <==negation-removal== 40975 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_b_a_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #33893: <==closure== 50511 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #50511: origin
                    (Ba_not_survivorat_s_p12)

                    ; #32088: <==negation-removal== 50511 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #62703: <==negation-removal== 33893 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_b_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #56400: origin
                    (Bb_not_survivorat_s_p12)

                    ; #78566: <==closure== 56400 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #65115: <==negation-removal== 56400 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #78574: <==negation-removal== 78566 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_b_c_s
        :precondition (and (leader_c)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #13166: <==closure== 40975 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #40975: origin
                    (Bc_not_survivorat_s_p12)

                    ; #32712: <==negation-removal== 13166 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #95178: <==negation-removal== 40975 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p12_c_a_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_a)
                           (at_c_p12))
        :effect (and
                    ; #33893: <==closure== 50511 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #50511: origin
                    (Ba_not_survivorat_s_p12)

                    ; #32088: <==negation-removal== 50511 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #62703: <==negation-removal== 33893 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_c_b_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_b)
                           (at_c_p12))
        :effect (and
                    ; #56400: origin
                    (Bb_not_survivorat_s_p12)

                    ; #78566: <==closure== 56400 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #65115: <==negation-removal== 56400 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #78574: <==negation-removal== 78566 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_c_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_c)
                           (at_c_p12))
        :effect (and
                    ; #13166: <==closure== 40975 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #40975: origin
                    (Bc_not_survivorat_s_p12)

                    ; #32712: <==negation-removal== 13166 (pos)
                    (not (Bc_survivorat_s_p12))

                    ; #95178: <==negation-removal== 40975 (pos)
                    (not (Pc_survivorat_s_p12))))

    (:action badcomm_p1_a_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (leader_a))
        :effect (and
                    ; #82024: origin
                    (Ba_not_survivorat_s_p1)

                    ; #86399: <==closure== 82024 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #31138: <==negation-removal== 86399 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #48054: <==negation-removal== 82024 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (leader_b))
        :effect (and
                    ; #26033: origin
                    (Bb_not_survivorat_s_p1)

                    ; #28596: <==closure== 26033 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #57737: <==negation-removal== 28596 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #91140: <==negation-removal== 26033 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (leader_c))
        :effect (and
                    ; #48101: <==closure== 85100 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #85100: origin
                    (Bc_not_survivorat_s_p1)

                    ; #39833: <==negation-removal== 85100 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #79389: <==negation-removal== 48101 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_a))
        :effect (and
                    ; #82024: origin
                    (Ba_not_survivorat_s_p1)

                    ; #86399: <==closure== 82024 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #31138: <==negation-removal== 86399 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #48054: <==negation-removal== 82024 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_b))
        :effect (and
                    ; #26033: origin
                    (Bb_not_survivorat_s_p1)

                    ; #28596: <==closure== 26033 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #57737: <==negation-removal== 28596 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #91140: <==negation-removal== 26033 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #48101: <==closure== 85100 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #85100: origin
                    (Bc_not_survivorat_s_p1)

                    ; #39833: <==negation-removal== 85100 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #79389: <==negation-removal== 48101 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #82024: origin
                    (Ba_not_survivorat_s_p1)

                    ; #86399: <==closure== 82024 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #31138: <==negation-removal== 86399 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #48054: <==negation-removal== 82024 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #26033: origin
                    (Bb_not_survivorat_s_p1)

                    ; #28596: <==closure== 26033 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #57737: <==negation-removal== 28596 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #91140: <==negation-removal== 26033 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #48101: <==closure== 85100 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #85100: origin
                    (Bc_not_survivorat_s_p1)

                    ; #39833: <==negation-removal== 85100 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #79389: <==negation-removal== 48101 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (at_a_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #12413: <==closure== 75949 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #75949: origin
                    (Ba_not_survivorat_s_p2)

                    ; #33116: <==negation-removal== 75949 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #85887: <==negation-removal== 12413 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (leader_b)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #47425: <==closure== 68007 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #68007: origin
                    (Bb_not_survivorat_s_p2)

                    ; #46849: <==negation-removal== 68007 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #80844: <==negation-removal== 47425 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #35304: origin
                    (Bc_not_survivorat_s_p2)

                    ; #81471: <==closure== 35304 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #10562: <==negation-removal== 81471 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #58187: <==negation-removal== 35304 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #12413: <==closure== 75949 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #75949: origin
                    (Ba_not_survivorat_s_p2)

                    ; #33116: <==negation-removal== 75949 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #85887: <==negation-removal== 12413 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #47425: <==closure== 68007 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #68007: origin
                    (Bb_not_survivorat_s_p2)

                    ; #46849: <==negation-removal== 68007 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #80844: <==negation-removal== 47425 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #35304: origin
                    (Bc_not_survivorat_s_p2)

                    ; #81471: <==closure== 35304 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #10562: <==negation-removal== 81471 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #58187: <==negation-removal== 35304 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #12413: <==closure== 75949 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #75949: origin
                    (Ba_not_survivorat_s_p2)

                    ; #33116: <==negation-removal== 75949 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #85887: <==negation-removal== 12413 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_b)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #47425: <==closure== 68007 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #68007: origin
                    (Bb_not_survivorat_s_p2)

                    ; #46849: <==negation-removal== 68007 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #80844: <==negation-removal== 47425 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (leader_c)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #35304: origin
                    (Bc_not_survivorat_s_p2)

                    ; #81471: <==closure== 35304 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #10562: <==negation-removal== 81471 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #58187: <==negation-removal== 35304 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #41386: <==closure== 89069 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #89069: origin
                    (Ba_not_survivorat_s_p3)

                    ; #21350: <==negation-removal== 89069 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #58975: <==negation-removal== 41386 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #39418: <==closure== 55180 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #55180: origin
                    (Bb_not_survivorat_s_p3)

                    ; #13324: <==negation-removal== 55180 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #43896: <==negation-removal== 39418 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #76472: origin
                    (Bc_not_survivorat_s_p3)

                    ; #78818: <==closure== 76472 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #55315: <==negation-removal== 76472 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #90691: <==negation-removal== 78818 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #41386: <==closure== 89069 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #89069: origin
                    (Ba_not_survivorat_s_p3)

                    ; #21350: <==negation-removal== 89069 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #58975: <==negation-removal== 41386 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (leader_b)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #39418: <==closure== 55180 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #55180: origin
                    (Bb_not_survivorat_s_p3)

                    ; #13324: <==negation-removal== 55180 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #43896: <==negation-removal== 39418 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (leader_c)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #76472: origin
                    (Bc_not_survivorat_s_p3)

                    ; #78818: <==closure== 76472 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #55315: <==negation-removal== 76472 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #90691: <==negation-removal== 78818 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (leader_a)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #41386: <==closure== 89069 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #89069: origin
                    (Ba_not_survivorat_s_p3)

                    ; #21350: <==negation-removal== 89069 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #58975: <==negation-removal== 41386 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #39418: <==closure== 55180 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #55180: origin
                    (Bb_not_survivorat_s_p3)

                    ; #13324: <==negation-removal== 55180 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #43896: <==negation-removal== 39418 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #76472: origin
                    (Bc_not_survivorat_s_p3)

                    ; #78818: <==closure== 76472 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #55315: <==negation-removal== 76472 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #90691: <==negation-removal== 78818 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #34448: origin
                    (Ba_not_survivorat_s_p4)

                    ; #50473: <==closure== 34448 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #45850: <==negation-removal== 34448 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #80898: <==negation-removal== 50473 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #23024: origin
                    (Bb_not_survivorat_s_p4)

                    ; #73029: <==closure== 23024 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #62533: <==negation-removal== 23024 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #67339: <==negation-removal== 73029 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (leader_c)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #26057: origin
                    (Bc_not_survivorat_s_p4)

                    ; #91085: <==closure== 26057 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #30938: <==negation-removal== 26057 (pos)
                    (not (Pc_survivorat_s_p4))

                    ; #79637: <==negation-removal== 91085 (pos)
                    (not (Bc_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_a)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #34448: origin
                    (Ba_not_survivorat_s_p4)

                    ; #50473: <==closure== 34448 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #45850: <==negation-removal== 34448 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #80898: <==negation-removal== 50473 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #23024: origin
                    (Bb_not_survivorat_s_p4)

                    ; #73029: <==closure== 23024 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #62533: <==negation-removal== 23024 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #67339: <==negation-removal== 73029 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #26057: origin
                    (Bc_not_survivorat_s_p4)

                    ; #91085: <==closure== 26057 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #30938: <==negation-removal== 26057 (pos)
                    (not (Pc_survivorat_s_p4))

                    ; #79637: <==negation-removal== 91085 (pos)
                    (not (Bc_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #34448: origin
                    (Ba_not_survivorat_s_p4)

                    ; #50473: <==closure== 34448 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #45850: <==negation-removal== 34448 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #80898: <==negation-removal== 50473 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #23024: origin
                    (Bb_not_survivorat_s_p4)

                    ; #73029: <==closure== 23024 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #62533: <==negation-removal== 23024 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #67339: <==negation-removal== 73029 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #26057: origin
                    (Bc_not_survivorat_s_p4)

                    ; #91085: <==closure== 26057 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #30938: <==negation-removal== 26057 (pos)
                    (not (Pc_survivorat_s_p4))

                    ; #79637: <==negation-removal== 91085 (pos)
                    (not (Bc_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a)
                           (at_a_p5))
        :effect (and
                    ; #36611: origin
                    (Ba_not_survivorat_s_p5)

                    ; #74992: <==closure== 36611 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #35703: <==negation-removal== 36611 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #40417: <==negation-removal== 74992 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5))
        :effect (and
                    ; #19818: origin
                    (Bb_not_survivorat_s_p5)

                    ; #63501: <==closure== 19818 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #38507: <==negation-removal== 19818 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #52781: <==negation-removal== 63501 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c)
                           (at_a_p5))
        :effect (and
                    ; #38759: origin
                    (Bc_not_survivorat_s_p5)

                    ; #51653: <==closure== 38759 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #46550: <==negation-removal== 38759 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #84704: <==negation-removal== 51653 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #36611: origin
                    (Ba_not_survivorat_s_p5)

                    ; #74992: <==closure== 36611 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #35703: <==negation-removal== 36611 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #40417: <==negation-removal== 74992 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #19818: origin
                    (Bb_not_survivorat_s_p5)

                    ; #63501: <==closure== 19818 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #38507: <==negation-removal== 19818 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #52781: <==negation-removal== 63501 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #38759: origin
                    (Bc_not_survivorat_s_p5)

                    ; #51653: <==closure== 38759 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #46550: <==negation-removal== 38759 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #84704: <==negation-removal== 51653 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_a))
        :effect (and
                    ; #36611: origin
                    (Ba_not_survivorat_s_p5)

                    ; #74992: <==closure== 36611 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #35703: <==negation-removal== 36611 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #40417: <==negation-removal== 74992 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_b))
        :effect (and
                    ; #19818: origin
                    (Bb_not_survivorat_s_p5)

                    ; #63501: <==closure== 19818 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #38507: <==negation-removal== 19818 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #52781: <==negation-removal== 63501 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_c))
        :effect (and
                    ; #38759: origin
                    (Bc_not_survivorat_s_p5)

                    ; #51653: <==closure== 38759 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #46550: <==negation-removal== 38759 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #84704: <==negation-removal== 51653 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #84963: <==closure== 86817 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #86817: origin
                    (Ba_not_survivorat_s_p6)

                    ; #18437: <==negation-removal== 86817 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #63678: <==negation-removal== 84963 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #88181: origin
                    (Bb_not_survivorat_s_p6)

                    ; #96936: <==closure== 88181 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #22771: <==negation-removal== 88181 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #74362: <==negation-removal== 96936 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #27534: <==closure== 41218 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #41218: origin
                    (Bc_not_survivorat_s_p6)

                    ; #12655: <==negation-removal== 27534 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #56233: <==negation-removal== 41218 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (at_b_p6)
                           (leader_a)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #84963: <==closure== 86817 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #86817: origin
                    (Ba_not_survivorat_s_p6)

                    ; #18437: <==negation-removal== 86817 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #63678: <==negation-removal== 84963 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (leader_b)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #88181: origin
                    (Bb_not_survivorat_s_p6)

                    ; #96936: <==closure== 88181 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #22771: <==negation-removal== 88181 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #74362: <==negation-removal== 96936 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (leader_c)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #27534: <==closure== 41218 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #41218: origin
                    (Bc_not_survivorat_s_p6)

                    ; #12655: <==negation-removal== 27534 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #56233: <==negation-removal== 41218 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #84963: <==closure== 86817 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #86817: origin
                    (Ba_not_survivorat_s_p6)

                    ; #18437: <==negation-removal== 86817 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #63678: <==negation-removal== 84963 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (leader_b)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #88181: origin
                    (Bb_not_survivorat_s_p6)

                    ; #96936: <==closure== 88181 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #22771: <==negation-removal== 88181 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #74362: <==negation-removal== 96936 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (leader_c)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #27534: <==closure== 41218 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #41218: origin
                    (Bc_not_survivorat_s_p6)

                    ; #12655: <==negation-removal== 27534 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #56233: <==negation-removal== 41218 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #44604: <==closure== 65875 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #65875: origin
                    (Ba_not_survivorat_s_p7)

                    ; #15954: <==negation-removal== 44604 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #55155: <==negation-removal== 65875 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_b)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #67929: <==closure== 76597 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #76597: origin
                    (Bb_not_survivorat_s_p7)

                    ; #36204: <==negation-removal== 67929 (pos)
                    (not (Bb_survivorat_s_p7))

                    ; #44950: <==negation-removal== 76597 (pos)
                    (not (Pb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_c)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #44100: <==closure== 58659 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #58659: origin
                    (Bc_not_survivorat_s_p7)

                    ; #17264: <==negation-removal== 44100 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #50406: <==negation-removal== 58659 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #44604: <==closure== 65875 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #65875: origin
                    (Ba_not_survivorat_s_p7)

                    ; #15954: <==negation-removal== 44604 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #55155: <==negation-removal== 65875 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #67929: <==closure== 76597 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #76597: origin
                    (Bb_not_survivorat_s_p7)

                    ; #36204: <==negation-removal== 67929 (pos)
                    (not (Bb_survivorat_s_p7))

                    ; #44950: <==negation-removal== 76597 (pos)
                    (not (Pb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (leader_c)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #44100: <==closure== 58659 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #58659: origin
                    (Bc_not_survivorat_s_p7)

                    ; #17264: <==negation-removal== 44100 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #50406: <==negation-removal== 58659 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (at_c_p7)
                           (leader_a)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #44604: <==closure== 65875 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #65875: origin
                    (Ba_not_survivorat_s_p7)

                    ; #15954: <==negation-removal== 44604 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #55155: <==negation-removal== 65875 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_b)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #67929: <==closure== 76597 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #76597: origin
                    (Bb_not_survivorat_s_p7)

                    ; #36204: <==negation-removal== 67929 (pos)
                    (not (Bb_survivorat_s_p7))

                    ; #44950: <==negation-removal== 76597 (pos)
                    (not (Pb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (leader_c)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #44100: <==closure== 58659 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #58659: origin
                    (Bc_not_survivorat_s_p7)

                    ; #17264: <==negation-removal== 44100 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #50406: <==negation-removal== 58659 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #24990: origin
                    (Ba_not_survivorat_s_p8)

                    ; #26218: <==closure== 24990 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #15407: <==negation-removal== 26218 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #83940: <==negation-removal== 24990 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #39585: origin
                    (Bb_not_survivorat_s_p8)

                    ; #69464: <==closure== 39585 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #12859: <==negation-removal== 39585 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #47422: <==negation-removal== 69464 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #10214: <==closure== 78058 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #78058: origin
                    (Bc_not_survivorat_s_p8)

                    ; #43445: <==negation-removal== 10214 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #64743: <==negation-removal== 78058 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_a))
        :effect (and
                    ; #24990: origin
                    (Ba_not_survivorat_s_p8)

                    ; #26218: <==closure== 24990 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #15407: <==negation-removal== 26218 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #83940: <==negation-removal== 24990 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #39585: origin
                    (Bb_not_survivorat_s_p8)

                    ; #69464: <==closure== 39585 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #12859: <==negation-removal== 39585 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #47422: <==negation-removal== 69464 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #10214: <==closure== 78058 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #78058: origin
                    (Bc_not_survivorat_s_p8)

                    ; #43445: <==negation-removal== 10214 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #64743: <==negation-removal== 78058 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #24990: origin
                    (Ba_not_survivorat_s_p8)

                    ; #26218: <==closure== 24990 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #15407: <==negation-removal== 26218 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #83940: <==negation-removal== 24990 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #39585: origin
                    (Bb_not_survivorat_s_p8)

                    ; #69464: <==closure== 39585 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #12859: <==negation-removal== 39585 (pos)
                    (not (Pb_survivorat_s_p8))

                    ; #47422: <==negation-removal== 69464 (pos)
                    (not (Bb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #10214: <==closure== 78058 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #78058: origin
                    (Bc_not_survivorat_s_p8)

                    ; #43445: <==negation-removal== 10214 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #64743: <==negation-removal== 78058 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (leader_a))
        :effect (and
                    ; #46017: <==closure== 91037 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #91037: origin
                    (Ba_not_survivorat_s_p9)

                    ; #75428: <==negation-removal== 91037 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #88532: <==negation-removal== 46017 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (leader_b))
        :effect (and
                    ; #32732: origin
                    (Bb_not_survivorat_s_p9)

                    ; #33457: <==closure== 32732 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #53063: <==negation-removal== 33457 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #53808: <==negation-removal== 32732 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #46395: <==closure== 60692 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #60692: origin
                    (Bc_not_survivorat_s_p9)

                    ; #21100: <==negation-removal== 46395 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #58552: <==negation-removal== 60692 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #46017: <==closure== 91037 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #91037: origin
                    (Ba_not_survivorat_s_p9)

                    ; #75428: <==negation-removal== 91037 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #88532: <==negation-removal== 46017 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #32732: origin
                    (Bb_not_survivorat_s_p9)

                    ; #33457: <==closure== 32732 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #53063: <==negation-removal== 33457 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #53808: <==negation-removal== 32732 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (leader_c)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #46395: <==closure== 60692 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #60692: origin
                    (Bc_not_survivorat_s_p9)

                    ; #21100: <==negation-removal== 46395 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #58552: <==negation-removal== 60692 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_a))
        :effect (and
                    ; #46017: <==closure== 91037 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #91037: origin
                    (Ba_not_survivorat_s_p9)

                    ; #75428: <==negation-removal== 91037 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #88532: <==negation-removal== 46017 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_b)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #32732: origin
                    (Bb_not_survivorat_s_p9)

                    ; #33457: <==closure== 32732 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #53063: <==negation-removal== 33457 (pos)
                    (not (Bb_survivorat_s_p9))

                    ; #53808: <==negation-removal== 32732 (pos)
                    (not (Pb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #46395: <==closure== 60692 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #60692: origin
                    (Bc_not_survivorat_s_p9)

                    ; #21100: <==negation-removal== 46395 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #58552: <==negation-removal== 60692 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action comm_p10_a_a_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (leader_a))
        :effect (and
                    ; #30149: <==closure== 68017 (pos)
                    (Pa_survivorat_s_p10)

                    ; #68017: origin
                    (Ba_survivorat_s_p10)

                    ; #14916: <==negation-removal== 68017 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #83769: <==negation-removal== 30149 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (leader_b))
        :effect (and
                    ; #32941: <==closure== 43081 (pos)
                    (Pb_survivorat_s_p10)

                    ; #43081: origin
                    (Bb_survivorat_s_p10)

                    ; #36414: <==negation-removal== 32941 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #41645: <==negation-removal== 43081 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (leader_c)
                           (at_a_p10))
        :effect (and
                    ; #26850: <==closure== 75491 (pos)
                    (Pc_survivorat_s_p10)

                    ; #75491: origin
                    (Bc_survivorat_s_p10)

                    ; #14451: <==negation-removal== 26850 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #90712: <==negation-removal== 75491 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_a))
        :effect (and
                    ; #30149: <==closure== 68017 (pos)
                    (Pa_survivorat_s_p10)

                    ; #68017: origin
                    (Ba_survivorat_s_p10)

                    ; #14916: <==negation-removal== 68017 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #83769: <==negation-removal== 30149 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b))
        :effect (and
                    ; #32941: <==closure== 43081 (pos)
                    (Pb_survivorat_s_p10)

                    ; #43081: origin
                    (Bb_survivorat_s_p10)

                    ; #36414: <==negation-removal== 32941 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #41645: <==negation-removal== 43081 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #26850: <==closure== 75491 (pos)
                    (Pc_survivorat_s_p10)

                    ; #75491: origin
                    (Bc_survivorat_s_p10)

                    ; #14451: <==negation-removal== 26850 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #90712: <==negation-removal== 75491 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #30149: <==closure== 68017 (pos)
                    (Pa_survivorat_s_p10)

                    ; #68017: origin
                    (Ba_survivorat_s_p10)

                    ; #14916: <==negation-removal== 68017 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #83769: <==negation-removal== 30149 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #32941: <==closure== 43081 (pos)
                    (Pb_survivorat_s_p10)

                    ; #43081: origin
                    (Bb_survivorat_s_p10)

                    ; #36414: <==negation-removal== 32941 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #41645: <==negation-removal== 43081 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (leader_c)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #26850: <==closure== 75491 (pos)
                    (Pc_survivorat_s_p10)

                    ; #75491: origin
                    (Bc_survivorat_s_p10)

                    ; #14451: <==negation-removal== 26850 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #90712: <==negation-removal== 75491 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #78410: origin
                    (Ba_survivorat_s_p11)

                    ; #80433: <==closure== 78410 (pos)
                    (Pa_survivorat_s_p11)

                    ; #39311: <==negation-removal== 78410 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #46327: <==negation-removal== 80433 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #18466: <==closure== 29810 (pos)
                    (Pb_survivorat_s_p11)

                    ; #29810: origin
                    (Bb_survivorat_s_p11)

                    ; #44031: <==negation-removal== 18466 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #47512: <==negation-removal== 29810 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #26820: origin
                    (Bc_survivorat_s_p11)

                    ; #89466: <==closure== 26820 (pos)
                    (Pc_survivorat_s_p11)

                    ; #47567: <==negation-removal== 26820 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #80635: <==negation-removal== 89466 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #78410: origin
                    (Ba_survivorat_s_p11)

                    ; #80433: <==closure== 78410 (pos)
                    (Pa_survivorat_s_p11)

                    ; #39311: <==negation-removal== 78410 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #46327: <==negation-removal== 80433 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (leader_b)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #18466: <==closure== 29810 (pos)
                    (Pb_survivorat_s_p11)

                    ; #29810: origin
                    (Bb_survivorat_s_p11)

                    ; #44031: <==negation-removal== 18466 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #47512: <==negation-removal== 29810 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (leader_c)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #26820: origin
                    (Bc_survivorat_s_p11)

                    ; #89466: <==closure== 26820 (pos)
                    (Pc_survivorat_s_p11)

                    ; #47567: <==negation-removal== 26820 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #80635: <==negation-removal== 89466 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (Pc_survivorat_s_p11)
                           (leader_a)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #78410: origin
                    (Ba_survivorat_s_p11)

                    ; #80433: <==closure== 78410 (pos)
                    (Pa_survivorat_s_p11)

                    ; #39311: <==negation-removal== 78410 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #46327: <==negation-removal== 80433 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_b)
                           (at_c_p11))
        :effect (and
                    ; #18466: <==closure== 29810 (pos)
                    (Pb_survivorat_s_p11)

                    ; #29810: origin
                    (Bb_survivorat_s_p11)

                    ; #44031: <==negation-removal== 18466 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #47512: <==negation-removal== 29810 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (leader_c)
                           (Bc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #26820: origin
                    (Bc_survivorat_s_p11)

                    ; #89466: <==closure== 26820 (pos)
                    (Pc_survivorat_s_p11)

                    ; #47567: <==negation-removal== 26820 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #80635: <==negation-removal== 89466 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (leader_a)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #32088: <==closure== 62703 (pos)
                    (Pa_survivorat_s_p12)

                    ; #62703: origin
                    (Ba_survivorat_s_p12)

                    ; #33893: <==negation-removal== 62703 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #50511: <==negation-removal== 32088 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #65115: <==closure== 78574 (pos)
                    (Pb_survivorat_s_p12)

                    ; #78574: origin
                    (Bb_survivorat_s_p12)

                    ; #56400: <==negation-removal== 65115 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #78566: <==negation-removal== 78574 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #32712: origin
                    (Bc_survivorat_s_p12)

                    ; #95178: <==closure== 32712 (pos)
                    (Pc_survivorat_s_p12)

                    ; #13166: <==negation-removal== 32712 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #40975: <==negation-removal== 95178 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #32088: <==closure== 62703 (pos)
                    (Pa_survivorat_s_p12)

                    ; #62703: origin
                    (Ba_survivorat_s_p12)

                    ; #33893: <==negation-removal== 62703 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #50511: <==negation-removal== 32088 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #65115: <==closure== 78574 (pos)
                    (Pb_survivorat_s_p12)

                    ; #78574: origin
                    (Bb_survivorat_s_p12)

                    ; #56400: <==negation-removal== 65115 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #78566: <==negation-removal== 78574 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (leader_c)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #32712: origin
                    (Bc_survivorat_s_p12)

                    ; #95178: <==closure== 32712 (pos)
                    (Pc_survivorat_s_p12)

                    ; #13166: <==negation-removal== 32712 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #40975: <==negation-removal== 95178 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_a)
                           (at_c_p12))
        :effect (and
                    ; #32088: <==closure== 62703 (pos)
                    (Pa_survivorat_s_p12)

                    ; #62703: origin
                    (Ba_survivorat_s_p12)

                    ; #33893: <==negation-removal== 62703 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #50511: <==negation-removal== 32088 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_b)
                           (at_c_p12))
        :effect (and
                    ; #65115: <==closure== 78574 (pos)
                    (Pb_survivorat_s_p12)

                    ; #78574: origin
                    (Bb_survivorat_s_p12)

                    ; #56400: <==negation-removal== 65115 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #78566: <==negation-removal== 78574 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_c)
                           (at_c_p12))
        :effect (and
                    ; #32712: origin
                    (Bc_survivorat_s_p12)

                    ; #95178: <==closure== 32712 (pos)
                    (Pc_survivorat_s_p12)

                    ; #13166: <==negation-removal== 32712 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #40975: <==negation-removal== 95178 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (leader_a))
        :effect (and
                    ; #31138: origin
                    (Ba_survivorat_s_p1)

                    ; #48054: <==closure== 31138 (pos)
                    (Pa_survivorat_s_p1)

                    ; #82024: <==negation-removal== 48054 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #86399: <==negation-removal== 31138 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (leader_b))
        :effect (and
                    ; #57737: origin
                    (Bb_survivorat_s_p1)

                    ; #91140: <==closure== 57737 (pos)
                    (Pb_survivorat_s_p1)

                    ; #26033: <==negation-removal== 91140 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #28596: <==negation-removal== 57737 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (leader_c))
        :effect (and
                    ; #39833: <==closure== 79389 (pos)
                    (Pc_survivorat_s_p1)

                    ; #79389: origin
                    (Bc_survivorat_s_p1)

                    ; #48101: <==negation-removal== 79389 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85100: <==negation-removal== 39833 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_a))
        :effect (and
                    ; #31138: origin
                    (Ba_survivorat_s_p1)

                    ; #48054: <==closure== 31138 (pos)
                    (Pa_survivorat_s_p1)

                    ; #82024: <==negation-removal== 48054 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #86399: <==negation-removal== 31138 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_b))
        :effect (and
                    ; #57737: origin
                    (Bb_survivorat_s_p1)

                    ; #91140: <==closure== 57737 (pos)
                    (Pb_survivorat_s_p1)

                    ; #26033: <==negation-removal== 91140 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #28596: <==negation-removal== 57737 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #39833: <==closure== 79389 (pos)
                    (Pc_survivorat_s_p1)

                    ; #79389: origin
                    (Bc_survivorat_s_p1)

                    ; #48101: <==negation-removal== 79389 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85100: <==negation-removal== 39833 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #31138: origin
                    (Ba_survivorat_s_p1)

                    ; #48054: <==closure== 31138 (pos)
                    (Pa_survivorat_s_p1)

                    ; #82024: <==negation-removal== 48054 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #86399: <==negation-removal== 31138 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #57737: origin
                    (Bb_survivorat_s_p1)

                    ; #91140: <==closure== 57737 (pos)
                    (Pb_survivorat_s_p1)

                    ; #26033: <==negation-removal== 91140 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #28596: <==negation-removal== 57737 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #39833: <==closure== 79389 (pos)
                    (Pc_survivorat_s_p1)

                    ; #79389: origin
                    (Bc_survivorat_s_p1)

                    ; #48101: <==negation-removal== 79389 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85100: <==negation-removal== 39833 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (at_a_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #33116: <==closure== 85887 (pos)
                    (Pa_survivorat_s_p2)

                    ; #85887: origin
                    (Ba_survivorat_s_p2)

                    ; #12413: <==negation-removal== 85887 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #75949: <==negation-removal== 33116 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (leader_b)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #46849: <==closure== 80844 (pos)
                    (Pb_survivorat_s_p2)

                    ; #80844: origin
                    (Bb_survivorat_s_p2)

                    ; #47425: <==negation-removal== 80844 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #68007: <==negation-removal== 46849 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #10562: origin
                    (Bc_survivorat_s_p2)

                    ; #58187: <==closure== 10562 (pos)
                    (Pc_survivorat_s_p2)

                    ; #35304: <==negation-removal== 58187 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #81471: <==negation-removal== 10562 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #33116: <==closure== 85887 (pos)
                    (Pa_survivorat_s_p2)

                    ; #85887: origin
                    (Ba_survivorat_s_p2)

                    ; #12413: <==negation-removal== 85887 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #75949: <==negation-removal== 33116 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #46849: <==closure== 80844 (pos)
                    (Pb_survivorat_s_p2)

                    ; #80844: origin
                    (Bb_survivorat_s_p2)

                    ; #47425: <==negation-removal== 80844 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #68007: <==negation-removal== 46849 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #10562: origin
                    (Bc_survivorat_s_p2)

                    ; #58187: <==closure== 10562 (pos)
                    (Pc_survivorat_s_p2)

                    ; #35304: <==negation-removal== 58187 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #81471: <==negation-removal== 10562 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #33116: <==closure== 85887 (pos)
                    (Pa_survivorat_s_p2)

                    ; #85887: origin
                    (Ba_survivorat_s_p2)

                    ; #12413: <==negation-removal== 85887 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #75949: <==negation-removal== 33116 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_b)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #46849: <==closure== 80844 (pos)
                    (Pb_survivorat_s_p2)

                    ; #80844: origin
                    (Bb_survivorat_s_p2)

                    ; #47425: <==negation-removal== 80844 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #68007: <==negation-removal== 46849 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (leader_c)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #10562: origin
                    (Bc_survivorat_s_p2)

                    ; #58187: <==closure== 10562 (pos)
                    (Pc_survivorat_s_p2)

                    ; #35304: <==negation-removal== 58187 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #81471: <==negation-removal== 10562 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #21350: <==closure== 58975 (pos)
                    (Pa_survivorat_s_p3)

                    ; #58975: origin
                    (Ba_survivorat_s_p3)

                    ; #41386: <==negation-removal== 58975 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #89069: <==negation-removal== 21350 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #13324: <==closure== 43896 (pos)
                    (Pb_survivorat_s_p3)

                    ; #43896: origin
                    (Bb_survivorat_s_p3)

                    ; #39418: <==negation-removal== 43896 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #55180: <==negation-removal== 13324 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #55315: <==closure== 90691 (pos)
                    (Pc_survivorat_s_p3)

                    ; #90691: origin
                    (Bc_survivorat_s_p3)

                    ; #76472: <==negation-removal== 55315 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #78818: <==negation-removal== 90691 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #21350: <==closure== 58975 (pos)
                    (Pa_survivorat_s_p3)

                    ; #58975: origin
                    (Ba_survivorat_s_p3)

                    ; #41386: <==negation-removal== 58975 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #89069: <==negation-removal== 21350 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (leader_b)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #13324: <==closure== 43896 (pos)
                    (Pb_survivorat_s_p3)

                    ; #43896: origin
                    (Bb_survivorat_s_p3)

                    ; #39418: <==negation-removal== 43896 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #55180: <==negation-removal== 13324 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (leader_c)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #55315: <==closure== 90691 (pos)
                    (Pc_survivorat_s_p3)

                    ; #90691: origin
                    (Bc_survivorat_s_p3)

                    ; #76472: <==negation-removal== 55315 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #78818: <==negation-removal== 90691 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (leader_a)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #21350: <==closure== 58975 (pos)
                    (Pa_survivorat_s_p3)

                    ; #58975: origin
                    (Ba_survivorat_s_p3)

                    ; #41386: <==negation-removal== 58975 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #89069: <==negation-removal== 21350 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #13324: <==closure== 43896 (pos)
                    (Pb_survivorat_s_p3)

                    ; #43896: origin
                    (Bb_survivorat_s_p3)

                    ; #39418: <==negation-removal== 43896 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #55180: <==negation-removal== 13324 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (leader_c)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #55315: <==closure== 90691 (pos)
                    (Pc_survivorat_s_p3)

                    ; #90691: origin
                    (Bc_survivorat_s_p3)

                    ; #76472: <==negation-removal== 55315 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #78818: <==negation-removal== 90691 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #45850: <==closure== 80898 (pos)
                    (Pa_survivorat_s_p4)

                    ; #80898: origin
                    (Ba_survivorat_s_p4)

                    ; #34448: <==negation-removal== 45850 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #50473: <==negation-removal== 80898 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #62533: <==closure== 67339 (pos)
                    (Pb_survivorat_s_p4)

                    ; #67339: origin
                    (Bb_survivorat_s_p4)

                    ; #23024: <==negation-removal== 62533 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #73029: <==negation-removal== 67339 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (leader_c)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #30938: <==closure== 79637 (pos)
                    (Pc_survivorat_s_p4)

                    ; #79637: origin
                    (Bc_survivorat_s_p4)

                    ; #26057: <==negation-removal== 30938 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #91085: <==negation-removal== 79637 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_a)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #45850: <==closure== 80898 (pos)
                    (Pa_survivorat_s_p4)

                    ; #80898: origin
                    (Ba_survivorat_s_p4)

                    ; #34448: <==negation-removal== 45850 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #50473: <==negation-removal== 80898 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #62533: <==closure== 67339 (pos)
                    (Pb_survivorat_s_p4)

                    ; #67339: origin
                    (Bb_survivorat_s_p4)

                    ; #23024: <==negation-removal== 62533 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #73029: <==negation-removal== 67339 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #30938: <==closure== 79637 (pos)
                    (Pc_survivorat_s_p4)

                    ; #79637: origin
                    (Bc_survivorat_s_p4)

                    ; #26057: <==negation-removal== 30938 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #91085: <==negation-removal== 79637 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #45850: <==closure== 80898 (pos)
                    (Pa_survivorat_s_p4)

                    ; #80898: origin
                    (Ba_survivorat_s_p4)

                    ; #34448: <==negation-removal== 45850 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #50473: <==negation-removal== 80898 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #62533: <==closure== 67339 (pos)
                    (Pb_survivorat_s_p4)

                    ; #67339: origin
                    (Bb_survivorat_s_p4)

                    ; #23024: <==negation-removal== 62533 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #73029: <==negation-removal== 67339 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #30938: <==closure== 79637 (pos)
                    (Pc_survivorat_s_p4)

                    ; #79637: origin
                    (Bc_survivorat_s_p4)

                    ; #26057: <==negation-removal== 30938 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #91085: <==negation-removal== 79637 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a)
                           (at_a_p5))
        :effect (and
                    ; #35703: <==closure== 40417 (pos)
                    (Pa_survivorat_s_p5)

                    ; #40417: origin
                    (Ba_survivorat_s_p5)

                    ; #36611: <==negation-removal== 35703 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #74992: <==negation-removal== 40417 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5))
        :effect (and
                    ; #38507: <==closure== 52781 (pos)
                    (Pb_survivorat_s_p5)

                    ; #52781: origin
                    (Bb_survivorat_s_p5)

                    ; #19818: <==negation-removal== 38507 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #63501: <==negation-removal== 52781 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c)
                           (at_a_p5))
        :effect (and
                    ; #46550: <==closure== 84704 (pos)
                    (Pc_survivorat_s_p5)

                    ; #84704: origin
                    (Bc_survivorat_s_p5)

                    ; #38759: <==negation-removal== 46550 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #51653: <==negation-removal== 84704 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #35703: <==closure== 40417 (pos)
                    (Pa_survivorat_s_p5)

                    ; #40417: origin
                    (Ba_survivorat_s_p5)

                    ; #36611: <==negation-removal== 35703 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #74992: <==negation-removal== 40417 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #38507: <==closure== 52781 (pos)
                    (Pb_survivorat_s_p5)

                    ; #52781: origin
                    (Bb_survivorat_s_p5)

                    ; #19818: <==negation-removal== 38507 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #63501: <==negation-removal== 52781 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #46550: <==closure== 84704 (pos)
                    (Pc_survivorat_s_p5)

                    ; #84704: origin
                    (Bc_survivorat_s_p5)

                    ; #38759: <==negation-removal== 46550 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #51653: <==negation-removal== 84704 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_a))
        :effect (and
                    ; #35703: <==closure== 40417 (pos)
                    (Pa_survivorat_s_p5)

                    ; #40417: origin
                    (Ba_survivorat_s_p5)

                    ; #36611: <==negation-removal== 35703 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #74992: <==negation-removal== 40417 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_b))
        :effect (and
                    ; #38507: <==closure== 52781 (pos)
                    (Pb_survivorat_s_p5)

                    ; #52781: origin
                    (Bb_survivorat_s_p5)

                    ; #19818: <==negation-removal== 38507 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #63501: <==negation-removal== 52781 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_c))
        :effect (and
                    ; #46550: <==closure== 84704 (pos)
                    (Pc_survivorat_s_p5)

                    ; #84704: origin
                    (Bc_survivorat_s_p5)

                    ; #38759: <==negation-removal== 46550 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #51653: <==negation-removal== 84704 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #18437: <==closure== 63678 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63678: origin
                    (Ba_survivorat_s_p6)

                    ; #84963: <==negation-removal== 63678 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #86817: <==negation-removal== 18437 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #22771: <==closure== 74362 (pos)
                    (Pb_survivorat_s_p6)

                    ; #74362: origin
                    (Bb_survivorat_s_p6)

                    ; #88181: <==negation-removal== 22771 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #96936: <==negation-removal== 74362 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #12655: origin
                    (Bc_survivorat_s_p6)

                    ; #56233: <==closure== 12655 (pos)
                    (Pc_survivorat_s_p6)

                    ; #27534: <==negation-removal== 12655 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #41218: <==negation-removal== 56233 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (at_b_p6)
                           (leader_a)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #18437: <==closure== 63678 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63678: origin
                    (Ba_survivorat_s_p6)

                    ; #84963: <==negation-removal== 63678 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #86817: <==negation-removal== 18437 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (leader_b)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #22771: <==closure== 74362 (pos)
                    (Pb_survivorat_s_p6)

                    ; #74362: origin
                    (Bb_survivorat_s_p6)

                    ; #88181: <==negation-removal== 22771 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #96936: <==negation-removal== 74362 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (leader_c)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #12655: origin
                    (Bc_survivorat_s_p6)

                    ; #56233: <==closure== 12655 (pos)
                    (Pc_survivorat_s_p6)

                    ; #27534: <==negation-removal== 12655 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #41218: <==negation-removal== 56233 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #18437: <==closure== 63678 (pos)
                    (Pa_survivorat_s_p6)

                    ; #63678: origin
                    (Ba_survivorat_s_p6)

                    ; #84963: <==negation-removal== 63678 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #86817: <==negation-removal== 18437 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (leader_b)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #22771: <==closure== 74362 (pos)
                    (Pb_survivorat_s_p6)

                    ; #74362: origin
                    (Bb_survivorat_s_p6)

                    ; #88181: <==negation-removal== 22771 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #96936: <==negation-removal== 74362 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (leader_c)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #12655: origin
                    (Bc_survivorat_s_p6)

                    ; #56233: <==closure== 12655 (pos)
                    (Pc_survivorat_s_p6)

                    ; #27534: <==negation-removal== 12655 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #41218: <==negation-removal== 56233 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #15954: origin
                    (Ba_survivorat_s_p7)

                    ; #55155: <==closure== 15954 (pos)
                    (Pa_survivorat_s_p7)

                    ; #44604: <==negation-removal== 15954 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #65875: <==negation-removal== 55155 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_b)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #36204: origin
                    (Bb_survivorat_s_p7)

                    ; #44950: <==closure== 36204 (pos)
                    (Pb_survivorat_s_p7)

                    ; #67929: <==negation-removal== 36204 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #76597: <==negation-removal== 44950 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (leader_c)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #17264: origin
                    (Bc_survivorat_s_p7)

                    ; #50406: <==closure== 17264 (pos)
                    (Pc_survivorat_s_p7)

                    ; #44100: <==negation-removal== 17264 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #58659: <==negation-removal== 50406 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #15954: origin
                    (Ba_survivorat_s_p7)

                    ; #55155: <==closure== 15954 (pos)
                    (Pa_survivorat_s_p7)

                    ; #44604: <==negation-removal== 15954 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #65875: <==negation-removal== 55155 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #36204: origin
                    (Bb_survivorat_s_p7)

                    ; #44950: <==closure== 36204 (pos)
                    (Pb_survivorat_s_p7)

                    ; #67929: <==negation-removal== 36204 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #76597: <==negation-removal== 44950 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (leader_c)
                           (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #17264: origin
                    (Bc_survivorat_s_p7)

                    ; #50406: <==closure== 17264 (pos)
                    (Pc_survivorat_s_p7)

                    ; #44100: <==negation-removal== 17264 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #58659: <==negation-removal== 50406 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (at_c_p7)
                           (leader_a)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #15954: origin
                    (Ba_survivorat_s_p7)

                    ; #55155: <==closure== 15954 (pos)
                    (Pa_survivorat_s_p7)

                    ; #44604: <==negation-removal== 15954 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #65875: <==negation-removal== 55155 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (leader_b)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #36204: origin
                    (Bb_survivorat_s_p7)

                    ; #44950: <==closure== 36204 (pos)
                    (Pb_survivorat_s_p7)

                    ; #67929: <==negation-removal== 36204 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #76597: <==negation-removal== 44950 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (leader_c)
                           (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #17264: origin
                    (Bc_survivorat_s_p7)

                    ; #50406: <==closure== 17264 (pos)
                    (Pc_survivorat_s_p7)

                    ; #44100: <==negation-removal== 17264 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #58659: <==negation-removal== 50406 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #15407: origin
                    (Ba_survivorat_s_p8)

                    ; #83940: <==closure== 15407 (pos)
                    (Pa_survivorat_s_p8)

                    ; #24990: <==negation-removal== 83940 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #26218: <==negation-removal== 15407 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #12859: <==closure== 47422 (pos)
                    (Pb_survivorat_s_p8)

                    ; #47422: origin
                    (Bb_survivorat_s_p8)

                    ; #39585: <==negation-removal== 12859 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #69464: <==negation-removal== 47422 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #43445: origin
                    (Bc_survivorat_s_p8)

                    ; #64743: <==closure== 43445 (pos)
                    (Pc_survivorat_s_p8)

                    ; #10214: <==negation-removal== 43445 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #78058: <==negation-removal== 64743 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_a))
        :effect (and
                    ; #15407: origin
                    (Ba_survivorat_s_p8)

                    ; #83940: <==closure== 15407 (pos)
                    (Pa_survivorat_s_p8)

                    ; #24990: <==negation-removal== 83940 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #26218: <==negation-removal== 15407 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #12859: <==closure== 47422 (pos)
                    (Pb_survivorat_s_p8)

                    ; #47422: origin
                    (Bb_survivorat_s_p8)

                    ; #39585: <==negation-removal== 12859 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #69464: <==negation-removal== 47422 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #43445: origin
                    (Bc_survivorat_s_p8)

                    ; #64743: <==closure== 43445 (pos)
                    (Pc_survivorat_s_p8)

                    ; #10214: <==negation-removal== 43445 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #78058: <==negation-removal== 64743 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #15407: origin
                    (Ba_survivorat_s_p8)

                    ; #83940: <==closure== 15407 (pos)
                    (Pa_survivorat_s_p8)

                    ; #24990: <==negation-removal== 83940 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #26218: <==negation-removal== 15407 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #12859: <==closure== 47422 (pos)
                    (Pb_survivorat_s_p8)

                    ; #47422: origin
                    (Bb_survivorat_s_p8)

                    ; #39585: <==negation-removal== 12859 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #69464: <==negation-removal== 47422 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #43445: origin
                    (Bc_survivorat_s_p8)

                    ; #64743: <==closure== 43445 (pos)
                    (Pc_survivorat_s_p8)

                    ; #10214: <==negation-removal== 43445 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #78058: <==negation-removal== 64743 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (leader_a))
        :effect (and
                    ; #75428: <==closure== 88532 (pos)
                    (Pa_survivorat_s_p9)

                    ; #88532: origin
                    (Ba_survivorat_s_p9)

                    ; #46017: <==negation-removal== 88532 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #91037: <==negation-removal== 75428 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (leader_b))
        :effect (and
                    ; #53063: origin
                    (Bb_survivorat_s_p9)

                    ; #53808: <==closure== 53063 (pos)
                    (Pb_survivorat_s_p9)

                    ; #32732: <==negation-removal== 53808 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #33457: <==negation-removal== 53063 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #21100: origin
                    (Bc_survivorat_s_p9)

                    ; #58552: <==closure== 21100 (pos)
                    (Pc_survivorat_s_p9)

                    ; #46395: <==negation-removal== 21100 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #60692: <==negation-removal== 58552 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #75428: <==closure== 88532 (pos)
                    (Pa_survivorat_s_p9)

                    ; #88532: origin
                    (Ba_survivorat_s_p9)

                    ; #46017: <==negation-removal== 88532 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #91037: <==negation-removal== 75428 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #53063: origin
                    (Bb_survivorat_s_p9)

                    ; #53808: <==closure== 53063 (pos)
                    (Pb_survivorat_s_p9)

                    ; #32732: <==negation-removal== 53808 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #33457: <==negation-removal== 53063 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (leader_c)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #21100: origin
                    (Bc_survivorat_s_p9)

                    ; #58552: <==closure== 21100 (pos)
                    (Pc_survivorat_s_p9)

                    ; #46395: <==negation-removal== 21100 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #60692: <==negation-removal== 58552 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_a))
        :effect (and
                    ; #75428: <==closure== 88532 (pos)
                    (Pa_survivorat_s_p9)

                    ; #88532: origin
                    (Ba_survivorat_s_p9)

                    ; #46017: <==negation-removal== 88532 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #91037: <==negation-removal== 75428 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_b)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #53063: origin
                    (Bb_survivorat_s_p9)

                    ; #53808: <==closure== 53063 (pos)
                    (Pb_survivorat_s_p9)

                    ; #32732: <==negation-removal== 53808 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #33457: <==negation-removal== 53063 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #21100: origin
                    (Bc_survivorat_s_p9)

                    ; #58552: <==closure== 21100 (pos)
                    (Pc_survivorat_s_p9)

                    ; #46395: <==negation-removal== 21100 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #60692: <==negation-removal== 58552 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #17142: origin
                    (at_a_p1)

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #31900: origin
                    (at_a_p10)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #52110: origin
                    (at_a_p11)

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #13213: origin
                    (at_a_p12)

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #71468: origin
                    (at_a_p2)

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #25710: origin
                    (at_a_p3)

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #83247: origin
                    (at_a_p4)

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #54683: origin
                    (at_a_p5)

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #41688: origin
                    (at_a_p6)

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #75203: origin
                    (at_a_p7)

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #18323: origin
                    (at_a_p8)

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12092: origin
                    (not_at_a_p10)

                    ; #30961: origin
                    (at_a_p9)

                    ; #31900: <==negation-removal== 12092 (pos)
                    (not (at_a_p10))

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31900: origin
                    (at_a_p10)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #52110: origin
                    (at_a_p11)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2)
                           (not (leader_a)))
        :effect (and
                    ; #71468: origin
                    (at_a_p2)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #25710: origin
                    (at_a_p3)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4)
                           (not (leader_a)))
        :effect (and
                    ; #83247: origin
                    (at_a_p4)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54683: origin
                    (at_a_p5)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41688: origin
                    (at_a_p6)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7)
                           (not (leader_a)))
        :effect (and
                    ; #75203: origin
                    (at_a_p7)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9)
                           (not (leader_a)))
        :effect (and
                    ; #30961: origin
                    (at_a_p9)

                    ; #87754: origin
                    (not_at_a_p11)

                    ; #52110: <==negation-removal== 87754 (pos)
                    (not (at_a_p11))

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #25322: origin
                    (not_at_a_p12)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #25322: origin
                    (not_at_a_p12)

                    ; #31900: origin
                    (at_a_p10)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #25322: origin
                    (not_at_a_p12)

                    ; #52110: origin
                    (at_a_p11)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #25322: origin
                    (not_at_a_p12)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #25322: origin
                    (not_at_a_p12)

                    ; #71468: origin
                    (at_a_p2)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #25322: origin
                    (not_at_a_p12)

                    ; #25710: origin
                    (at_a_p3)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #25322: origin
                    (not_at_a_p12)

                    ; #83247: origin
                    (at_a_p4)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #25322: origin
                    (not_at_a_p12)

                    ; #54683: origin
                    (at_a_p5)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #25322: origin
                    (not_at_a_p12)

                    ; #41688: origin
                    (at_a_p6)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #25322: origin
                    (not_at_a_p12)

                    ; #75203: origin
                    (at_a_p7)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #25322: origin
                    (not_at_a_p12)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #25322: origin
                    (not_at_a_p12)

                    ; #30961: origin
                    (at_a_p9)

                    ; #13213: <==negation-removal== 25322 (pos)
                    (not (at_a_p12))

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #59016: origin
                    (not_at_a_p1)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #31900: origin
                    (at_a_p10)

                    ; #59016: origin
                    (not_at_a_p1)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #52110: origin
                    (at_a_p11)

                    ; #59016: origin
                    (not_at_a_p1)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #59016: origin
                    (not_at_a_p1)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #59016: origin
                    (not_at_a_p1)

                    ; #71468: origin
                    (at_a_p2)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #25710: origin
                    (at_a_p3)

                    ; #59016: origin
                    (not_at_a_p1)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #59016: origin
                    (not_at_a_p1)

                    ; #83247: origin
                    (at_a_p4)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54683: origin
                    (at_a_p5)

                    ; #59016: origin
                    (not_at_a_p1)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41688: origin
                    (at_a_p6)

                    ; #59016: origin
                    (not_at_a_p1)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #59016: origin
                    (not_at_a_p1)

                    ; #75203: origin
                    (at_a_p7)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #59016: origin
                    (not_at_a_p1)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #30961: origin
                    (at_a_p9)

                    ; #59016: origin
                    (not_at_a_p1)

                    ; #17142: <==negation-removal== 59016 (pos)
                    (not (at_a_p1))

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #60580: origin
                    (not_at_a_p2)

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31900: origin
                    (at_a_p10)

                    ; #60580: origin
                    (not_at_a_p2)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11)
                           (not (leader_a)))
        :effect (and
                    ; #52110: origin
                    (at_a_p11)

                    ; #60580: origin
                    (not_at_a_p2)

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #60580: origin
                    (not_at_a_p2)

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #60580: origin
                    (not_at_a_p2)

                    ; #71468: origin
                    (at_a_p2)

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #25710: origin
                    (at_a_p3)

                    ; #60580: origin
                    (not_at_a_p2)

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #60580: origin
                    (not_at_a_p2)

                    ; #83247: origin
                    (at_a_p4)

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54683: origin
                    (at_a_p5)

                    ; #60580: origin
                    (not_at_a_p2)

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41688: origin
                    (at_a_p6)

                    ; #60580: origin
                    (not_at_a_p2)

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #60580: origin
                    (not_at_a_p2)

                    ; #75203: origin
                    (at_a_p7)

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #60580: origin
                    (not_at_a_p2)

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #30961: origin
                    (at_a_p9)

                    ; #60580: origin
                    (not_at_a_p2)

                    ; #71468: <==negation-removal== 60580 (pos)
                    (not (at_a_p2))

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #65824: origin
                    (not_at_a_p3)

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31900: origin
                    (at_a_p10)

                    ; #65824: origin
                    (not_at_a_p3)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #52110: origin
                    (at_a_p11)

                    ; #65824: origin
                    (not_at_a_p3)

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #65824: origin
                    (not_at_a_p3)

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #65824: origin
                    (not_at_a_p3)

                    ; #71468: origin
                    (at_a_p2)

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #25710: origin
                    (at_a_p3)

                    ; #65824: origin
                    (not_at_a_p3)

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #65824: origin
                    (not_at_a_p3)

                    ; #83247: origin
                    (at_a_p4)

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54683: origin
                    (at_a_p5)

                    ; #65824: origin
                    (not_at_a_p3)

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41688: origin
                    (at_a_p6)

                    ; #65824: origin
                    (not_at_a_p3)

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #65824: origin
                    (not_at_a_p3)

                    ; #75203: origin
                    (at_a_p7)

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #65824: origin
                    (not_at_a_p3)

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #30961: origin
                    (at_a_p9)

                    ; #65824: origin
                    (not_at_a_p3)

                    ; #25710: <==negation-removal== 65824 (pos)
                    (not (at_a_p3))

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #48517: origin
                    (not_at_a_p4)

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31900: origin
                    (at_a_p10)

                    ; #48517: origin
                    (not_at_a_p4)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11)
                           (not (leader_a)))
        :effect (and
                    ; #48517: origin
                    (not_at_a_p4)

                    ; #52110: origin
                    (at_a_p11)

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #48517: origin
                    (not_at_a_p4)

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #48517: origin
                    (not_at_a_p4)

                    ; #71468: origin
                    (at_a_p2)

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #25710: origin
                    (at_a_p3)

                    ; #48517: origin
                    (not_at_a_p4)

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4)
                           (not (leader_a)))
        :effect (and
                    ; #48517: origin
                    (not_at_a_p4)

                    ; #83247: origin
                    (at_a_p4)

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #48517: origin
                    (not_at_a_p4)

                    ; #54683: origin
                    (at_a_p5)

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41688: origin
                    (at_a_p6)

                    ; #48517: origin
                    (not_at_a_p4)

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #48517: origin
                    (not_at_a_p4)

                    ; #75203: origin
                    (at_a_p7)

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #48517: origin
                    (not_at_a_p4)

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #30961: origin
                    (at_a_p9)

                    ; #48517: origin
                    (not_at_a_p4)

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))

                    ; #83247: <==negation-removal== 48517 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #64341: origin
                    (not_at_a_p5)

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #31900: origin
                    (at_a_p10)

                    ; #64341: origin
                    (not_at_a_p5)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #52110: origin
                    (at_a_p11)

                    ; #64341: origin
                    (not_at_a_p5)

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #64341: origin
                    (not_at_a_p5)

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #64341: origin
                    (not_at_a_p5)

                    ; #71468: origin
                    (at_a_p2)

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #25710: origin
                    (at_a_p3)

                    ; #64341: origin
                    (not_at_a_p5)

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #64341: origin
                    (not_at_a_p5)

                    ; #83247: origin
                    (at_a_p4)

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54683: origin
                    (at_a_p5)

                    ; #64341: origin
                    (not_at_a_p5)

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #41688: origin
                    (at_a_p6)

                    ; #64341: origin
                    (not_at_a_p5)

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #64341: origin
                    (not_at_a_p5)

                    ; #75203: origin
                    (at_a_p7)

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #64341: origin
                    (not_at_a_p5)

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #30961: origin
                    (at_a_p9)

                    ; #64341: origin
                    (not_at_a_p5)

                    ; #54683: <==negation-removal== 64341 (pos)
                    (not (at_a_p5))

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #66160: origin
                    (not_at_a_p6)

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31900: origin
                    (at_a_p10)

                    ; #66160: origin
                    (not_at_a_p6)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11)
                           (not (leader_a)))
        :effect (and
                    ; #52110: origin
                    (at_a_p11)

                    ; #66160: origin
                    (not_at_a_p6)

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #66160: origin
                    (not_at_a_p6)

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2)
                           (not (leader_a)))
        :effect (and
                    ; #66160: origin
                    (not_at_a_p6)

                    ; #71468: origin
                    (at_a_p2)

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #25710: origin
                    (at_a_p3)

                    ; #66160: origin
                    (not_at_a_p6)

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4)
                           (not (leader_a)))
        :effect (and
                    ; #66160: origin
                    (not_at_a_p6)

                    ; #83247: origin
                    (at_a_p4)

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54683: origin
                    (at_a_p5)

                    ; #66160: origin
                    (not_at_a_p6)

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41688: origin
                    (at_a_p6)

                    ; #66160: origin
                    (not_at_a_p6)

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7)
                           (not (leader_a)))
        :effect (and
                    ; #66160: origin
                    (not_at_a_p6)

                    ; #75203: origin
                    (at_a_p7)

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #66160: origin
                    (not_at_a_p6)

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9)
                           (not (leader_a)))
        :effect (and
                    ; #30961: origin
                    (at_a_p9)

                    ; #66160: origin
                    (not_at_a_p6)

                    ; #41688: <==negation-removal== 66160 (pos)
                    (not (at_a_p6))

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #65224: origin
                    (not_at_a_p7)

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31900: origin
                    (at_a_p10)

                    ; #65224: origin
                    (not_at_a_p7)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #52110: origin
                    (at_a_p11)

                    ; #65224: origin
                    (not_at_a_p7)

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #65224: origin
                    (not_at_a_p7)

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #65224: origin
                    (not_at_a_p7)

                    ; #71468: origin
                    (at_a_p2)

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #25710: origin
                    (at_a_p3)

                    ; #65224: origin
                    (not_at_a_p7)

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #65224: origin
                    (not_at_a_p7)

                    ; #83247: origin
                    (at_a_p4)

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #54683: origin
                    (at_a_p5)

                    ; #65224: origin
                    (not_at_a_p7)

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41688: origin
                    (at_a_p6)

                    ; #65224: origin
                    (not_at_a_p7)

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #65224: origin
                    (not_at_a_p7)

                    ; #75203: origin
                    (at_a_p7)

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #65224: origin
                    (not_at_a_p7)

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #30961: origin
                    (at_a_p9)

                    ; #65224: origin
                    (not_at_a_p7)

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))

                    ; #75203: <==negation-removal== 65224 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #55611: origin
                    (not_at_a_p8)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #31900: origin
                    (at_a_p10)

                    ; #55611: origin
                    (not_at_a_p8)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #52110: origin
                    (at_a_p11)

                    ; #55611: origin
                    (not_at_a_p8)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #55611: origin
                    (not_at_a_p8)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #55611: origin
                    (not_at_a_p8)

                    ; #71468: origin
                    (at_a_p2)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #25710: origin
                    (at_a_p3)

                    ; #55611: origin
                    (not_at_a_p8)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #55611: origin
                    (not_at_a_p8)

                    ; #83247: origin
                    (at_a_p4)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54683: origin
                    (at_a_p5)

                    ; #55611: origin
                    (not_at_a_p8)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41688: origin
                    (at_a_p6)

                    ; #55611: origin
                    (not_at_a_p8)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #55611: origin
                    (not_at_a_p8)

                    ; #75203: origin
                    (at_a_p7)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #55611: origin
                    (not_at_a_p8)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9)
                           (not (leader_a)))
        :effect (and
                    ; #30961: origin
                    (at_a_p9)

                    ; #55611: origin
                    (not_at_a_p8)

                    ; #18323: <==negation-removal== 55611 (pos)
                    (not (at_a_p8))

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17142: origin
                    (at_a_p1)

                    ; #72051: origin
                    (not_at_a_p9)

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))

                    ; #59016: <==negation-removal== 17142 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #31900: origin
                    (at_a_p10)

                    ; #72051: origin
                    (not_at_a_p9)

                    ; #12092: <==negation-removal== 31900 (pos)
                    (not (not_at_a_p10))

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #52110: origin
                    (at_a_p11)

                    ; #72051: origin
                    (not_at_a_p9)

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))

                    ; #87754: <==negation-removal== 52110 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #13213: origin
                    (at_a_p12)

                    ; #72051: origin
                    (not_at_a_p9)

                    ; #25322: <==negation-removal== 13213 (pos)
                    (not (not_at_a_p12))

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2)
                           (not (leader_a)))
        :effect (and
                    ; #71468: origin
                    (at_a_p2)

                    ; #72051: origin
                    (not_at_a_p9)

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))

                    ; #60580: <==negation-removal== 71468 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #25710: origin
                    (at_a_p3)

                    ; #72051: origin
                    (not_at_a_p9)

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))

                    ; #65824: <==negation-removal== 25710 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #72051: origin
                    (not_at_a_p9)

                    ; #83247: origin
                    (at_a_p4)

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))

                    ; #48517: <==negation-removal== 83247 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #54683: origin
                    (at_a_p5)

                    ; #72051: origin
                    (not_at_a_p9)

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))

                    ; #64341: <==negation-removal== 54683 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41688: origin
                    (at_a_p6)

                    ; #72051: origin
                    (not_at_a_p9)

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))

                    ; #66160: <==negation-removal== 41688 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #72051: origin
                    (not_at_a_p9)

                    ; #75203: origin
                    (at_a_p7)

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))

                    ; #65224: <==negation-removal== 75203 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18323: origin
                    (at_a_p8)

                    ; #72051: origin
                    (not_at_a_p9)

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))

                    ; #55611: <==negation-removal== 18323 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9)
                           (not (leader_a)))
        :effect (and
                    ; #30961: origin
                    (at_a_p9)

                    ; #72051: origin
                    (not_at_a_p9)

                    ; #30961: <==negation-removal== 72051 (pos)
                    (not (at_a_p9))

                    ; #72051: <==negation-removal== 30961 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11)
                           (not (leader_b)))
        :effect (and
                    ; #53134: origin
                    (at_b_p11)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #49731: origin
                    (at_b_p2)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3)
                           (not (leader_b)))
        :effect (and
                    ; #43974: origin
                    (at_b_p3)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25892: origin
                    (at_b_p4)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #35851: origin
                    (at_b_p5)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #80101: origin
                    (at_b_p6)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7)
                           (not (leader_b)))
        :effect (and
                    ; #76948: origin
                    (at_b_p7)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #78553: origin
                    (at_b_p8)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #84456: origin
                    (at_b_p9)

                    ; #88601: origin
                    (not_at_b_p10)

                    ; #18226: <==negation-removal== 88601 (pos)
                    (not (at_b_p10))

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #47891: origin
                    (not_at_b_p11)

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #47891: origin
                    (not_at_b_p11)

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11)
                           (not (leader_b)))
        :effect (and
                    ; #47891: origin
                    (not_at_b_p11)

                    ; #53134: origin
                    (at_b_p11)

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #47891: origin
                    (not_at_b_p11)

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2)
                           (not (leader_b)))
        :effect (and
                    ; #47891: origin
                    (not_at_b_p11)

                    ; #49731: origin
                    (at_b_p2)

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3)
                           (not (leader_b)))
        :effect (and
                    ; #43974: origin
                    (at_b_p3)

                    ; #47891: origin
                    (not_at_b_p11)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25892: origin
                    (at_b_p4)

                    ; #47891: origin
                    (not_at_b_p11)

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35851: origin
                    (at_b_p5)

                    ; #47891: origin
                    (not_at_b_p11)

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6)
                           (not (leader_b)))
        :effect (and
                    ; #47891: origin
                    (not_at_b_p11)

                    ; #80101: origin
                    (at_b_p6)

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7)
                           (not (leader_b)))
        :effect (and
                    ; #47891: origin
                    (not_at_b_p11)

                    ; #76948: origin
                    (at_b_p7)

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8)
                           (not (leader_b)))
        :effect (and
                    ; #47891: origin
                    (not_at_b_p11)

                    ; #78553: origin
                    (at_b_p8)

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9)
                           (not (leader_b)))
        :effect (and
                    ; #47891: origin
                    (not_at_b_p11)

                    ; #84456: origin
                    (at_b_p9)

                    ; #53134: <==negation-removal== 47891 (pos)
                    (not (at_b_p11))

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #52698: origin
                    (not_at_b_p12)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #52698: origin
                    (not_at_b_p12)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #52698: origin
                    (not_at_b_p12)

                    ; #53134: origin
                    (at_b_p11)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #52698: origin
                    (not_at_b_p12)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #49731: origin
                    (at_b_p2)

                    ; #52698: origin
                    (not_at_b_p12)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3)
                           (not (leader_b)))
        :effect (and
                    ; #43974: origin
                    (at_b_p3)

                    ; #52698: origin
                    (not_at_b_p12)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25892: origin
                    (at_b_p4)

                    ; #52698: origin
                    (not_at_b_p12)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35851: origin
                    (at_b_p5)

                    ; #52698: origin
                    (not_at_b_p12)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #52698: origin
                    (not_at_b_p12)

                    ; #80101: origin
                    (at_b_p6)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7)
                           (not (leader_b)))
        :effect (and
                    ; #52698: origin
                    (not_at_b_p12)

                    ; #76948: origin
                    (at_b_p7)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #52698: origin
                    (not_at_b_p12)

                    ; #78553: origin
                    (at_b_p8)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #52698: origin
                    (not_at_b_p12)

                    ; #84456: origin
                    (at_b_p9)

                    ; #20195: <==negation-removal== 52698 (pos)
                    (not (at_b_p12))

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #66765: origin
                    (not_at_b_p1)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #66765: origin
                    (not_at_b_p1)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11)
                           (not (leader_b)))
        :effect (and
                    ; #53134: origin
                    (at_b_p11)

                    ; #66765: origin
                    (not_at_b_p1)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #66765: origin
                    (not_at_b_p1)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #49731: origin
                    (at_b_p2)

                    ; #66765: origin
                    (not_at_b_p1)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #43974: origin
                    (at_b_p3)

                    ; #66765: origin
                    (not_at_b_p1)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25892: origin
                    (at_b_p4)

                    ; #66765: origin
                    (not_at_b_p1)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35851: origin
                    (at_b_p5)

                    ; #66765: origin
                    (not_at_b_p1)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #66765: origin
                    (not_at_b_p1)

                    ; #80101: origin
                    (at_b_p6)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #66765: origin
                    (not_at_b_p1)

                    ; #76948: origin
                    (at_b_p7)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #66765: origin
                    (not_at_b_p1)

                    ; #78553: origin
                    (at_b_p8)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #66765: origin
                    (not_at_b_p1)

                    ; #84456: origin
                    (at_b_p9)

                    ; #17944: <==negation-removal== 66765 (pos)
                    (not (at_b_p1))

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #58347: origin
                    (not_at_b_p2)

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #58347: origin
                    (not_at_b_p2)

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #53134: origin
                    (at_b_p11)

                    ; #58347: origin
                    (not_at_b_p2)

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #58347: origin
                    (not_at_b_p2)

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49731: origin
                    (at_b_p2)

                    ; #58347: origin
                    (not_at_b_p2)

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #43974: origin
                    (at_b_p3)

                    ; #58347: origin
                    (not_at_b_p2)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25892: origin
                    (at_b_p4)

                    ; #58347: origin
                    (not_at_b_p2)

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35851: origin
                    (at_b_p5)

                    ; #58347: origin
                    (not_at_b_p2)

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6)
                           (not (leader_b)))
        :effect (and
                    ; #58347: origin
                    (not_at_b_p2)

                    ; #80101: origin
                    (at_b_p6)

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #58347: origin
                    (not_at_b_p2)

                    ; #76948: origin
                    (at_b_p7)

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #58347: origin
                    (not_at_b_p2)

                    ; #78553: origin
                    (at_b_p8)

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #58347: origin
                    (not_at_b_p2)

                    ; #84456: origin
                    (at_b_p9)

                    ; #49731: <==negation-removal== 58347 (pos)
                    (not (at_b_p2))

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #17944: origin
                    (at_b_p1)

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #18226: origin
                    (at_b_p10)

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #53134: origin
                    (at_b_p11)

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #20195: origin
                    (at_b_p12)

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #49731: origin
                    (at_b_p2)

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #43974: origin
                    (at_b_p3)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #25892: origin
                    (at_b_p4)

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #35851: origin
                    (at_b_p5)

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #80101: origin
                    (at_b_p6)

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #76948: origin
                    (at_b_p7)

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #78553: origin
                    (at_b_p8)

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #14667: origin
                    (not_at_b_p3)

                    ; #84456: origin
                    (at_b_p9)

                    ; #43974: <==negation-removal== 14667 (pos)
                    (not (at_b_p3))

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11)
                           (not (leader_b)))
        :effect (and
                    ; #53134: origin
                    (at_b_p11)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49731: origin
                    (at_b_p2)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #43974: origin
                    (at_b_p3)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25892: origin
                    (at_b_p4)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35851: origin
                    (at_b_p5)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #80101: origin
                    (at_b_p6)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #76948: origin
                    (at_b_p7)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8)
                           (not (leader_b)))
        :effect (and
                    ; #78553: origin
                    (at_b_p8)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #84456: origin
                    (at_b_p9)

                    ; #87799: origin
                    (not_at_b_p4)

                    ; #25892: <==negation-removal== 87799 (pos)
                    (not (at_b_p4))

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #25816: origin
                    (not_at_b_p5)

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #25816: origin
                    (not_at_b_p5)

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25816: origin
                    (not_at_b_p5)

                    ; #53134: origin
                    (at_b_p11)

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #25816: origin
                    (not_at_b_p5)

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25816: origin
                    (not_at_b_p5)

                    ; #49731: origin
                    (at_b_p2)

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25816: origin
                    (not_at_b_p5)

                    ; #43974: origin
                    (at_b_p3)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25816: origin
                    (not_at_b_p5)

                    ; #25892: origin
                    (at_b_p4)

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25816: origin
                    (not_at_b_p5)

                    ; #35851: origin
                    (at_b_p5)

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25816: origin
                    (not_at_b_p5)

                    ; #80101: origin
                    (at_b_p6)

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25816: origin
                    (not_at_b_p5)

                    ; #76948: origin
                    (at_b_p7)

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25816: origin
                    (not_at_b_p5)

                    ; #78553: origin
                    (at_b_p8)

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25816: origin
                    (not_at_b_p5)

                    ; #84456: origin
                    (at_b_p9)

                    ; #35851: <==negation-removal== 25816 (pos)
                    (not (at_b_p5))

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #50479: origin
                    (not_at_b_p6)

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #50479: origin
                    (not_at_b_p6)

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #50479: origin
                    (not_at_b_p6)

                    ; #53134: origin
                    (at_b_p11)

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #50479: origin
                    (not_at_b_p6)

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49731: origin
                    (at_b_p2)

                    ; #50479: origin
                    (not_at_b_p6)

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #43974: origin
                    (at_b_p3)

                    ; #50479: origin
                    (not_at_b_p6)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #25892: origin
                    (at_b_p4)

                    ; #50479: origin
                    (not_at_b_p6)

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35851: origin
                    (at_b_p5)

                    ; #50479: origin
                    (not_at_b_p6)

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #50479: origin
                    (not_at_b_p6)

                    ; #80101: origin
                    (at_b_p6)

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #50479: origin
                    (not_at_b_p6)

                    ; #76948: origin
                    (at_b_p7)

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #50479: origin
                    (not_at_b_p6)

                    ; #78553: origin
                    (at_b_p8)

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #50479: origin
                    (not_at_b_p6)

                    ; #84456: origin
                    (at_b_p9)

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))

                    ; #80101: <==negation-removal== 50479 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11)
                           (not (leader_b)))
        :effect (and
                    ; #53134: origin
                    (at_b_p11)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49731: origin
                    (at_b_p2)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #43974: origin
                    (at_b_p3)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25892: origin
                    (at_b_p4)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35851: origin
                    (at_b_p5)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6)
                           (not (leader_b)))
        :effect (and
                    ; #80101: origin
                    (at_b_p6)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #76948: origin
                    (at_b_p7)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #78553: origin
                    (at_b_p8)

                    ; #82456: origin
                    (not_at_b_p7)

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #82456: origin
                    (not_at_b_p7)

                    ; #84456: origin
                    (at_b_p9)

                    ; #76948: <==negation-removal== 82456 (pos)
                    (not (at_b_p7))

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #53134: origin
                    (at_b_p11)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #49731: origin
                    (at_b_p2)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #43974: origin
                    (at_b_p3)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #25892: origin
                    (at_b_p4)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #35851: origin
                    (at_b_p5)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #80101: origin
                    (at_b_p6)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #76948: origin
                    (at_b_p7)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #78553: origin
                    (at_b_p8)

                    ; #80346: origin
                    (not_at_b_p8)

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #80346: origin
                    (not_at_b_p8)

                    ; #84456: origin
                    (at_b_p9)

                    ; #78553: <==negation-removal== 80346 (pos)
                    (not (at_b_p8))

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #17944: origin
                    (at_b_p1)

                    ; #80089: origin
                    (not_at_b_p9)

                    ; #66765: <==negation-removal== 17944 (pos)
                    (not (not_at_b_p1))

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18226: origin
                    (at_b_p10)

                    ; #80089: origin
                    (not_at_b_p9)

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))

                    ; #88601: <==negation-removal== 18226 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #53134: origin
                    (at_b_p11)

                    ; #80089: origin
                    (not_at_b_p9)

                    ; #47891: <==negation-removal== 53134 (pos)
                    (not (not_at_b_p11))

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12)
                           (not (leader_b)))
        :effect (and
                    ; #20195: origin
                    (at_b_p12)

                    ; #80089: origin
                    (not_at_b_p9)

                    ; #52698: <==negation-removal== 20195 (pos)
                    (not (not_at_b_p12))

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #49731: origin
                    (at_b_p2)

                    ; #80089: origin
                    (not_at_b_p9)

                    ; #58347: <==negation-removal== 49731 (pos)
                    (not (not_at_b_p2))

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #43974: origin
                    (at_b_p3)

                    ; #80089: origin
                    (not_at_b_p9)

                    ; #14667: <==negation-removal== 43974 (pos)
                    (not (not_at_b_p3))

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #25892: origin
                    (at_b_p4)

                    ; #80089: origin
                    (not_at_b_p9)

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))

                    ; #87799: <==negation-removal== 25892 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35851: origin
                    (at_b_p5)

                    ; #80089: origin
                    (not_at_b_p9)

                    ; #25816: <==negation-removal== 35851 (pos)
                    (not (not_at_b_p5))

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6)
                           (not (leader_b)))
        :effect (and
                    ; #80089: origin
                    (not_at_b_p9)

                    ; #80101: origin
                    (at_b_p6)

                    ; #50479: <==negation-removal== 80101 (pos)
                    (not (not_at_b_p6))

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #76948: origin
                    (at_b_p7)

                    ; #80089: origin
                    (not_at_b_p9)

                    ; #82456: <==negation-removal== 76948 (pos)
                    (not (not_at_b_p7))

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #78553: origin
                    (at_b_p8)

                    ; #80089: origin
                    (not_at_b_p9)

                    ; #80346: <==negation-removal== 78553 (pos)
                    (not (not_at_b_p8))

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9)
                           (not (leader_b)))
        :effect (and
                    ; #80089: origin
                    (not_at_b_p9)

                    ; #84456: origin
                    (at_b_p9)

                    ; #80089: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p9))

                    ; #84456: <==negation-removal== 80089 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #30312: origin
                    (at_c_p1)

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #62363: origin
                    (at_c_p10)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #53585: origin
                    (at_c_p12)

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #86395: origin
                    (at_c_p2)

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #21200: origin
                    (not_at_c_p10)

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #71720: origin
                    (at_c_p4)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #34862: origin
                    (at_c_p5)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #49709: origin
                    (at_c_p6)

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #77875: origin
                    (at_c_p7)

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #36886: origin
                    (at_c_p8)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21200: origin
                    (not_at_c_p10)

                    ; #26441: origin
                    (at_c_p9)

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))

                    ; #62363: <==negation-removal== 21200 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26772: origin
                    (not_at_c_p11)

                    ; #30312: origin
                    (at_c_p1)

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26772: origin
                    (not_at_c_p11)

                    ; #62363: origin
                    (at_c_p10)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26772: origin
                    (not_at_c_p11)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26772: origin
                    (not_at_c_p11)

                    ; #53585: origin
                    (at_c_p12)

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26772: origin
                    (not_at_c_p11)

                    ; #86395: origin
                    (at_c_p2)

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #26772: origin
                    (not_at_c_p11)

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26772: origin
                    (not_at_c_p11)

                    ; #71720: origin
                    (at_c_p4)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26772: origin
                    (not_at_c_p11)

                    ; #34862: origin
                    (at_c_p5)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26772: origin
                    (not_at_c_p11)

                    ; #49709: origin
                    (at_c_p6)

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26772: origin
                    (not_at_c_p11)

                    ; #77875: origin
                    (at_c_p7)

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26772: origin
                    (not_at_c_p11)

                    ; #36886: origin
                    (at_c_p8)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26441: origin
                    (at_c_p9)

                    ; #26772: origin
                    (not_at_c_p11)

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))

                    ; #84853: <==negation-removal== 26772 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #30312: origin
                    (at_c_p1)

                    ; #55289: origin
                    (not_at_c_p12)

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #55289: origin
                    (not_at_c_p12)

                    ; #62363: origin
                    (at_c_p10)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #55289: origin
                    (not_at_c_p12)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #53585: origin
                    (at_c_p12)

                    ; #55289: origin
                    (not_at_c_p12)

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #55289: origin
                    (not_at_c_p12)

                    ; #86395: origin
                    (at_c_p2)

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #55289: origin
                    (not_at_c_p12)

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #55289: origin
                    (not_at_c_p12)

                    ; #71720: origin
                    (at_c_p4)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #34862: origin
                    (at_c_p5)

                    ; #55289: origin
                    (not_at_c_p12)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #49709: origin
                    (at_c_p6)

                    ; #55289: origin
                    (not_at_c_p12)

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #55289: origin
                    (not_at_c_p12)

                    ; #77875: origin
                    (at_c_p7)

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #36886: origin
                    (at_c_p8)

                    ; #55289: origin
                    (not_at_c_p12)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #26441: origin
                    (at_c_p9)

                    ; #55289: origin
                    (not_at_c_p12)

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))

                    ; #53585: <==negation-removal== 55289 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30312: origin
                    (at_c_p1)

                    ; #30361: origin
                    (not_at_c_p1)

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10)
                           (not (leader_c)))
        :effect (and
                    ; #30361: origin
                    (not_at_c_p1)

                    ; #62363: origin
                    (at_c_p10)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11)
                           (not (leader_c)))
        :effect (and
                    ; #30361: origin
                    (not_at_c_p1)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12)
                           (not (leader_c)))
        :effect (and
                    ; #30361: origin
                    (not_at_c_p1)

                    ; #53585: origin
                    (at_c_p12)

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #30361: origin
                    (not_at_c_p1)

                    ; #86395: origin
                    (at_c_p2)

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #30361: origin
                    (not_at_c_p1)

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #30361: origin
                    (not_at_c_p1)

                    ; #71720: origin
                    (at_c_p4)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #30361: origin
                    (not_at_c_p1)

                    ; #34862: origin
                    (at_c_p5)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6)
                           (not (leader_c)))
        :effect (and
                    ; #30361: origin
                    (not_at_c_p1)

                    ; #49709: origin
                    (at_c_p6)

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #30361: origin
                    (not_at_c_p1)

                    ; #77875: origin
                    (at_c_p7)

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30361: origin
                    (not_at_c_p1)

                    ; #36886: origin
                    (at_c_p8)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26441: origin
                    (at_c_p9)

                    ; #30361: origin
                    (not_at_c_p1)

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))

                    ; #30312: <==negation-removal== 30361 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30312: origin
                    (at_c_p1)

                    ; #77922: origin
                    (not_at_c_p2)

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10)
                           (not (leader_c)))
        :effect (and
                    ; #62363: origin
                    (at_c_p10)

                    ; #77922: origin
                    (not_at_c_p2)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #77922: origin
                    (not_at_c_p2)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12)
                           (not (leader_c)))
        :effect (and
                    ; #53585: origin
                    (at_c_p12)

                    ; #77922: origin
                    (not_at_c_p2)

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #77922: origin
                    (not_at_c_p2)

                    ; #86395: origin
                    (at_c_p2)

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #77922: origin
                    (not_at_c_p2)

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4)
                           (not (leader_c)))
        :effect (and
                    ; #71720: origin
                    (at_c_p4)

                    ; #77922: origin
                    (not_at_c_p2)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #34862: origin
                    (at_c_p5)

                    ; #77922: origin
                    (not_at_c_p2)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6)
                           (not (leader_c)))
        :effect (and
                    ; #49709: origin
                    (at_c_p6)

                    ; #77922: origin
                    (not_at_c_p2)

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #77875: origin
                    (at_c_p7)

                    ; #77922: origin
                    (not_at_c_p2)

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #36886: origin
                    (at_c_p8)

                    ; #77922: origin
                    (not_at_c_p2)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26441: origin
                    (at_c_p9)

                    ; #77922: origin
                    (not_at_c_p2)

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))

                    ; #86395: <==negation-removal== 77922 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30312: origin
                    (at_c_p1)

                    ; #65648: origin
                    (not_at_c_p3)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10)
                           (not (leader_c)))
        :effect (and
                    ; #62363: origin
                    (at_c_p10)

                    ; #65648: origin
                    (not_at_c_p3)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11)
                           (not (leader_c)))
        :effect (and
                    ; #65648: origin
                    (not_at_c_p3)

                    ; #84853: origin
                    (at_c_p11)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12)
                           (not (leader_c)))
        :effect (and
                    ; #53585: origin
                    (at_c_p12)

                    ; #65648: origin
                    (not_at_c_p3)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #65648: origin
                    (not_at_c_p3)

                    ; #86395: origin
                    (at_c_p2)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #65648: origin
                    (not_at_c_p3)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #65648: origin
                    (not_at_c_p3)

                    ; #71720: origin
                    (at_c_p4)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5)
                           (not (leader_c)))
        :effect (and
                    ; #34862: origin
                    (at_c_p5)

                    ; #65648: origin
                    (not_at_c_p3)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #49709: origin
                    (at_c_p6)

                    ; #65648: origin
                    (not_at_c_p3)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7)
                           (not (leader_c)))
        :effect (and
                    ; #65648: origin
                    (not_at_c_p3)

                    ; #77875: origin
                    (at_c_p7)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8)
                           (not (leader_c)))
        :effect (and
                    ; #36886: origin
                    (at_c_p8)

                    ; #65648: origin
                    (not_at_c_p3)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26441: origin
                    (at_c_p9)

                    ; #65648: origin
                    (not_at_c_p3)

                    ; #11609: <==negation-removal== 65648 (pos)
                    (not (at_c_p3))

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #30312: origin
                    (at_c_p1)

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #62363: origin
                    (at_c_p10)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #53585: origin
                    (at_c_p12)

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #86395: origin
                    (at_c_p2)

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #25067: origin
                    (not_at_c_p4)

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #71720: origin
                    (at_c_p4)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #34862: origin
                    (at_c_p5)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #49709: origin
                    (at_c_p6)

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #77875: origin
                    (at_c_p7)

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #36886: origin
                    (at_c_p8)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9)
                           (not (leader_c)))
        :effect (and
                    ; #25067: origin
                    (not_at_c_p4)

                    ; #26441: origin
                    (at_c_p9)

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))

                    ; #71720: <==negation-removal== 25067 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #30312: origin
                    (at_c_p1)

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #62363: origin
                    (at_c_p10)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #53585: origin
                    (at_c_p12)

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #86395: origin
                    (at_c_p2)

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #23430: origin
                    (not_at_c_p5)

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #71720: origin
                    (at_c_p4)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #34862: origin
                    (at_c_p5)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #49709: origin
                    (at_c_p6)

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #77875: origin
                    (at_c_p7)

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #36886: origin
                    (at_c_p8)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #23430: origin
                    (not_at_c_p5)

                    ; #26441: origin
                    (at_c_p9)

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))

                    ; #34862: <==negation-removal== 23430 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #30312: origin
                    (at_c_p1)

                    ; #75487: origin
                    (not_at_c_p6)

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #62363: origin
                    (at_c_p10)

                    ; #75487: origin
                    (not_at_c_p6)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #75487: origin
                    (not_at_c_p6)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #53585: origin
                    (at_c_p12)

                    ; #75487: origin
                    (not_at_c_p6)

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #75487: origin
                    (not_at_c_p6)

                    ; #86395: origin
                    (at_c_p2)

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #75487: origin
                    (not_at_c_p6)

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #71720: origin
                    (at_c_p4)

                    ; #75487: origin
                    (not_at_c_p6)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #34862: origin
                    (at_c_p5)

                    ; #75487: origin
                    (not_at_c_p6)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #49709: origin
                    (at_c_p6)

                    ; #75487: origin
                    (not_at_c_p6)

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #75487: origin
                    (not_at_c_p6)

                    ; #77875: origin
                    (at_c_p7)

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #36886: origin
                    (at_c_p8)

                    ; #75487: origin
                    (not_at_c_p6)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #26441: origin
                    (at_c_p9)

                    ; #75487: origin
                    (not_at_c_p6)

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))

                    ; #49709: <==negation-removal== 75487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #30312: origin
                    (at_c_p1)

                    ; #39395: origin
                    (not_at_c_p7)

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10)
                           (not (leader_c)))
        :effect (and
                    ; #39395: origin
                    (not_at_c_p7)

                    ; #62363: origin
                    (at_c_p10)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11)
                           (not (leader_c)))
        :effect (and
                    ; #39395: origin
                    (not_at_c_p7)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12)
                           (not (leader_c)))
        :effect (and
                    ; #39395: origin
                    (not_at_c_p7)

                    ; #53585: origin
                    (at_c_p12)

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #39395: origin
                    (not_at_c_p7)

                    ; #86395: origin
                    (at_c_p2)

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #39395: origin
                    (not_at_c_p7)

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #39395: origin
                    (not_at_c_p7)

                    ; #71720: origin
                    (at_c_p4)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #34862: origin
                    (at_c_p5)

                    ; #39395: origin
                    (not_at_c_p7)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6)
                           (not (leader_c)))
        :effect (and
                    ; #39395: origin
                    (not_at_c_p7)

                    ; #49709: origin
                    (at_c_p6)

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #39395: origin
                    (not_at_c_p7)

                    ; #77875: origin
                    (at_c_p7)

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #36886: origin
                    (at_c_p8)

                    ; #39395: origin
                    (not_at_c_p7)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #26441: origin
                    (at_c_p9)

                    ; #39395: origin
                    (not_at_c_p7)

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))

                    ; #77875: <==negation-removal== 39395 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #30312: origin
                    (at_c_p1)

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #62363: origin
                    (at_c_p10)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #53585: origin
                    (at_c_p12)

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #86395: origin
                    (at_c_p2)

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #21792: origin
                    (not_at_c_p8)

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #71720: origin
                    (at_c_p4)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #34862: origin
                    (at_c_p5)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #49709: origin
                    (at_c_p6)

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #77875: origin
                    (at_c_p7)

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #36886: origin
                    (at_c_p8)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21792: origin
                    (not_at_c_p8)

                    ; #26441: origin
                    (at_c_p9)

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))

                    ; #36886: <==negation-removal== 21792 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30067: origin
                    (not_at_c_p9)

                    ; #30312: origin
                    (at_c_p1)

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))

                    ; #30361: <==negation-removal== 30312 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #30067: origin
                    (not_at_c_p9)

                    ; #62363: origin
                    (at_c_p10)

                    ; #21200: <==negation-removal== 62363 (pos)
                    (not (not_at_c_p10))

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #30067: origin
                    (not_at_c_p9)

                    ; #84853: origin
                    (at_c_p11)

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))

                    ; #26772: <==negation-removal== 84853 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #30067: origin
                    (not_at_c_p9)

                    ; #53585: origin
                    (at_c_p12)

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))

                    ; #55289: <==negation-removal== 53585 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #30067: origin
                    (not_at_c_p9)

                    ; #86395: origin
                    (at_c_p2)

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))

                    ; #77922: <==negation-removal== 86395 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11609: origin
                    (at_c_p3)

                    ; #30067: origin
                    (not_at_c_p9)

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))

                    ; #65648: <==negation-removal== 11609 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #30067: origin
                    (not_at_c_p9)

                    ; #71720: origin
                    (at_c_p4)

                    ; #25067: <==negation-removal== 71720 (pos)
                    (not (not_at_c_p4))

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #30067: origin
                    (not_at_c_p9)

                    ; #34862: origin
                    (at_c_p5)

                    ; #23430: <==negation-removal== 34862 (pos)
                    (not (not_at_c_p5))

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #30067: origin
                    (not_at_c_p9)

                    ; #49709: origin
                    (at_c_p6)

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))

                    ; #75487: <==negation-removal== 49709 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #30067: origin
                    (not_at_c_p9)

                    ; #77875: origin
                    (at_c_p7)

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))

                    ; #39395: <==negation-removal== 77875 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #30067: origin
                    (not_at_c_p9)

                    ; #36886: origin
                    (at_c_p8)

                    ; #21792: <==negation-removal== 36886 (pos)
                    (not (not_at_c_p8))

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26441: origin
                    (at_c_p9)

                    ; #30067: origin
                    (not_at_c_p9)

                    ; #26441: <==negation-removal== 30067 (pos)
                    (not (at_c_p9))

                    ; #30067: <==negation-removal== 26441 (pos)
                    (not (not_at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #14719: <==closure== 20766 (pos)
                    (Pc_checked_p10)

                    ; #20766: <==commonly_known== 62006 (pos)
                    (Bc_checked_p10)

                    ; #40828: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #41098: <==commonly_known== 62006 (pos)
                    (Ba_checked_p10)

                    ; #46166: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #62006: origin
                    (checked_p10)

                    ; #62177: <==closure== 66745 (pos)
                    (Pb_checked_p10)

                    ; #63005: <==closure== 46166 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #66745: <==commonly_known== 62006 (pos)
                    (Bb_checked_p10)

                    ; #67294: <==closure== 40828 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #77111: <==closure== 41098 (pos)
                    (Pa_checked_p10)

                    ; #14343: <==negation-removal== 14719 (pos)
                    (not (Bc_not_checked_p10))

                    ; #15899: <==negation-removal== 67294 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #24924: <==unclosure== 73459 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #26224: <==negation-removal== 66745 (pos)
                    (not (Pb_not_checked_p10))

                    ; #56139: <==negation-removal== 62006 (pos)
                    (not (not_checked_p10))

                    ; #61999: <==negation-removal== 40828 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #68920: <==negation-removal== 46166 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #70364: <==negation-removal== 62177 (pos)
                    (not (Bb_not_checked_p10))

                    ; #71273: <==uncertain_firing== 46166 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #73459: <==uncertain_firing== 40828 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #79464: <==negation-removal== 77111 (pos)
                    (not (Ba_not_checked_p10))

                    ; #83536: <==negation-removal== 20766 (pos)
                    (not (Pc_not_checked_p10))

                    ; #84118: <==unclosure== 71273 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #84694: <==negation-removal== 63005 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #91105: <==negation-removal== 41098 (pos)
                    (not (Pa_not_checked_p10))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #22502: <==closure== 28991 (pos)
                    (Pc_checked_p11)

                    ; #23029: <==closure== 66548 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #28991: <==commonly_known== 83251 (pos)
                    (Bc_checked_p11)

                    ; #32804: <==closure== 43085 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #39308: <==commonly_known== 83251 (pos)
                    (Bb_checked_p11)

                    ; #43085: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #50294: <==closure== 84051 (pos)
                    (Pa_checked_p11)

                    ; #66548: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #82267: <==closure== 39308 (pos)
                    (Pb_checked_p11)

                    ; #83251: origin
                    (checked_p11)

                    ; #84051: <==commonly_known== 83251 (pos)
                    (Ba_checked_p11)

                    ; #10407: <==negation-removal== 50294 (pos)
                    (not (Ba_not_checked_p11))

                    ; #15819: <==negation-removal== 66548 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #18248: <==negation-removal== 83251 (pos)
                    (not (not_checked_p11))

                    ; #21502: <==negation-removal== 22502 (pos)
                    (not (Bc_not_checked_p11))

                    ; #32483: <==negation-removal== 39308 (pos)
                    (not (Pb_not_checked_p11))

                    ; #43276: <==unclosure== 54094 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #44759: <==negation-removal== 32804 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #52552: <==negation-removal== 84051 (pos)
                    (not (Pa_not_checked_p11))

                    ; #54094: <==uncertain_firing== 66548 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #59047: <==negation-removal== 82267 (pos)
                    (not (Bb_not_checked_p11))

                    ; #63027: <==uncertain_firing== 43085 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #63242: <==unclosure== 63027 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #73153: <==negation-removal== 43085 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #73808: <==negation-removal== 28991 (pos)
                    (not (Pc_not_checked_p11))

                    ; #87534: <==negation-removal== 23029 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #10783: <==closure== 57728 (pos)
                    (Pc_checked_p12)

                    ; #24219: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #29259: <==commonly_known== 46853 (pos)
                    (Bb_checked_p12)

                    ; #46853: origin
                    (checked_p12)

                    ; #52636: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #53627: <==closure== 24219 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #57728: <==commonly_known== 46853 (pos)
                    (Bc_checked_p12)

                    ; #68198: <==commonly_known== 46853 (pos)
                    (Ba_checked_p12)

                    ; #75270: <==closure== 29259 (pos)
                    (Pb_checked_p12)

                    ; #83180: <==closure== 68198 (pos)
                    (Pa_checked_p12)

                    ; #91051: <==closure== 52636 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #11010: <==negation-removal== 53627 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #19927: <==negation-removal== 83180 (pos)
                    (not (Ba_not_checked_p12))

                    ; #20479: <==uncertain_firing== 24219 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #23442: <==negation-removal== 29259 (pos)
                    (not (Pb_not_checked_p12))

                    ; #29114: <==unclosure== 20479 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #40630: <==negation-removal== 52636 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #46546: <==negation-removal== 75270 (pos)
                    (not (Bb_not_checked_p12))

                    ; #50167: <==negation-removal== 91051 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #55228: <==uncertain_firing== 52636 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #62042: <==negation-removal== 46853 (pos)
                    (not (not_checked_p12))

                    ; #63424: <==negation-removal== 57728 (pos)
                    (not (Pc_not_checked_p12))

                    ; #81946: <==negation-removal== 10783 (pos)
                    (not (Bc_not_checked_p12))

                    ; #88965: <==negation-removal== 24219 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #90757: <==negation-removal== 68198 (pos)
                    (not (Pa_not_checked_p12))

                    ; #95777: <==unclosure== 55228 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #28862: <==closure== 89707 (pos)
                    (Pb_checked_p1)

                    ; #44833: <==commonly_known== 58073 (pos)
                    (Ba_checked_p1)

                    ; #58073: origin
                    (checked_p1)

                    ; #58543: <==closure== 65212 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #63201: <==closure== 80001 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #65211: <==commonly_known== 58073 (pos)
                    (Bc_checked_p1)

                    ; #65212: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #73044: <==closure== 65211 (pos)
                    (Pc_checked_p1)

                    ; #78118: <==closure== 44833 (pos)
                    (Pa_checked_p1)

                    ; #80001: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #89707: <==commonly_known== 58073 (pos)
                    (Bb_checked_p1)

                    ; #11592: <==negation-removal== 73044 (pos)
                    (not (Bc_not_checked_p1))

                    ; #31814: <==negation-removal== 65211 (pos)
                    (not (Pc_not_checked_p1))

                    ; #34141: <==unclosure== 77674 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #41477: <==negation-removal== 78118 (pos)
                    (not (Ba_not_checked_p1))

                    ; #52450: <==uncertain_firing== 65212 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #61206: <==negation-removal== 28862 (pos)
                    (not (Bb_not_checked_p1))

                    ; #70644: <==negation-removal== 80001 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #77182: <==negation-removal== 89707 (pos)
                    (not (Pb_not_checked_p1))

                    ; #77674: <==uncertain_firing== 80001 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #82500: <==negation-removal== 58073 (pos)
                    (not (not_checked_p1))

                    ; #83696: <==negation-removal== 65212 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #83719: <==negation-removal== 63201 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #85113: <==unclosure== 52450 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #86213: <==negation-removal== 44833 (pos)
                    (not (Pa_not_checked_p1))

                    ; #86952: <==negation-removal== 58543 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14415: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #14983: <==closure== 17286 (pos)
                    (Pc_checked_p2)

                    ; #17286: <==commonly_known== 42681 (pos)
                    (Bc_checked_p2)

                    ; #37679: <==closure== 14415 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #42681: origin
                    (checked_p2)

                    ; #46558: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #46682: <==closure== 61128 (pos)
                    (Pb_checked_p2)

                    ; #52955: <==closure== 66533 (pos)
                    (Pa_checked_p2)

                    ; #61128: <==commonly_known== 42681 (pos)
                    (Bb_checked_p2)

                    ; #66533: <==commonly_known== 42681 (pos)
                    (Ba_checked_p2)

                    ; #76969: <==closure== 46558 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #22014: <==negation-removal== 14983 (pos)
                    (not (Bc_not_checked_p2))

                    ; #22475: <==negation-removal== 14415 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #25915: <==unclosure== 54980 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #26426: <==negation-removal== 46558 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #30383: <==negation-removal== 66533 (pos)
                    (not (Pa_not_checked_p2))

                    ; #30955: <==negation-removal== 52955 (pos)
                    (not (Ba_not_checked_p2))

                    ; #31591: <==negation-removal== 42681 (pos)
                    (not (not_checked_p2))

                    ; #35522: <==uncertain_firing== 14415 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #44530: <==negation-removal== 17286 (pos)
                    (not (Pc_not_checked_p2))

                    ; #50072: <==negation-removal== 61128 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54980: <==uncertain_firing== 46558 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #78398: <==negation-removal== 46682 (pos)
                    (not (Bb_not_checked_p2))

                    ; #85262: <==negation-removal== 37679 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #86643: <==negation-removal== 76969 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #87263: <==unclosure== 35522 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #13885: <==commonly_known== 64811 (pos)
                    (Bc_checked_p3)

                    ; #40078: <==closure== 66372 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #53143: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #63452: <==commonly_known== 64811 (pos)
                    (Ba_checked_p3)

                    ; #64108: <==commonly_known== 64811 (pos)
                    (Bb_checked_p3)

                    ; #64811: origin
                    (checked_p3)

                    ; #65218: <==closure== 13885 (pos)
                    (Pc_checked_p3)

                    ; #66372: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #70202: <==closure== 63452 (pos)
                    (Pa_checked_p3)

                    ; #74395: <==closure== 64108 (pos)
                    (Pb_checked_p3)

                    ; #81425: <==closure== 53143 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #11443: <==unclosure== 75918 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #13541: <==negation-removal== 40078 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #13990: <==negation-removal== 81425 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #25643: <==negation-removal== 64108 (pos)
                    (not (Pb_not_checked_p3))

                    ; #34850: <==negation-removal== 66372 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #45325: <==negation-removal== 65218 (pos)
                    (not (Bc_not_checked_p3))

                    ; #47569: <==negation-removal== 13885 (pos)
                    (not (Pc_not_checked_p3))

                    ; #49367: <==negation-removal== 70202 (pos)
                    (not (Ba_not_checked_p3))

                    ; #64855: <==unclosure== 72890 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #72890: <==uncertain_firing== 53143 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #75918: <==uncertain_firing== 66372 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #76144: <==negation-removal== 63452 (pos)
                    (not (Pa_not_checked_p3))

                    ; #79284: <==negation-removal== 74395 (pos)
                    (not (Bb_not_checked_p3))

                    ; #80606: <==negation-removal== 53143 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86872: <==negation-removal== 64811 (pos)
                    (not (not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #16749: <==closure== 21180 (pos)
                    (Pa_checked_p4)

                    ; #21180: <==commonly_known== 47470 (pos)
                    (Ba_checked_p4)

                    ; #26694: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #40242: <==closure== 67010 (pos)
                    (Pc_checked_p4)

                    ; #41132: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #44937: <==closure== 55587 (pos)
                    (Pb_checked_p4)

                    ; #47470: origin
                    (checked_p4)

                    ; #55587: <==commonly_known== 47470 (pos)
                    (Bb_checked_p4)

                    ; #58046: <==closure== 41132 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #67010: <==commonly_known== 47470 (pos)
                    (Bc_checked_p4)

                    ; #71143: <==closure== 26694 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #16717: <==uncertain_firing== 41132 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #22400: <==negation-removal== 26694 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #22754: <==negation-removal== 67010 (pos)
                    (not (Pc_not_checked_p4))

                    ; #23754: <==negation-removal== 58046 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #36362: <==negation-removal== 41132 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #44098: <==negation-removal== 44937 (pos)
                    (not (Bb_not_checked_p4))

                    ; #48435: <==negation-removal== 16749 (pos)
                    (not (Ba_not_checked_p4))

                    ; #50221: <==unclosure== 16717 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #61243: <==negation-removal== 55587 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61759: <==negation-removal== 21180 (pos)
                    (not (Pa_not_checked_p4))

                    ; #65141: <==uncertain_firing== 26694 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #73766: <==negation-removal== 47470 (pos)
                    (not (not_checked_p4))

                    ; #80329: <==unclosure== 65141 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #86479: <==negation-removal== 40242 (pos)
                    (not (Bc_not_checked_p4))

                    ; #91990: <==negation-removal== 71143 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #29788: <==closure== 38516 (pos)
                    (Pa_checked_p5)

                    ; #38516: <==commonly_known== 70355 (pos)
                    (Ba_checked_p5)

                    ; #53474: <==commonly_known== 70355 (pos)
                    (Bc_checked_p5)

                    ; #66470: <==commonly_known== 70355 (pos)
                    (Bb_checked_p5)

                    ; #67726: <==closure== 66470 (pos)
                    (Pb_checked_p5)

                    ; #69212: <==closure== 81183 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #70355: origin
                    (checked_p5)

                    ; #76649: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #77582: <==closure== 76649 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #81183: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #83088: <==closure== 53474 (pos)
                    (Pc_checked_p5)

                    ; #10459: <==negation-removal== 38516 (pos)
                    (not (Pa_not_checked_p5))

                    ; #17845: <==negation-removal== 81183 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #18428: <==negation-removal== 76649 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #20247: <==negation-removal== 77582 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #28280: <==negation-removal== 70355 (pos)
                    (not (not_checked_p5))

                    ; #29364: <==uncertain_firing== 81183 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #48182: <==negation-removal== 67726 (pos)
                    (not (Bb_not_checked_p5))

                    ; #55020: <==negation-removal== 29788 (pos)
                    (not (Ba_not_checked_p5))

                    ; #55538: <==negation-removal== 69212 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #56075: <==negation-removal== 66470 (pos)
                    (not (Pb_not_checked_p5))

                    ; #56522: <==unclosure== 78010 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #62257: <==negation-removal== 53474 (pos)
                    (not (Pc_not_checked_p5))

                    ; #78010: <==uncertain_firing== 76649 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #86146: <==unclosure== 29364 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #89883: <==negation-removal== 83088 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #10351: <==closure== 14831 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #11042: <==closure== 92152 (pos)
                    (Pb_checked_p6)

                    ; #11573: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #14831: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #17722: <==closure== 11573 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #19229: <==closure== 61987 (pos)
                    (Pc_checked_p6)

                    ; #34165: origin
                    (checked_p6)

                    ; #34638: <==closure== 51897 (pos)
                    (Pa_checked_p6)

                    ; #51897: <==commonly_known== 34165 (pos)
                    (Ba_checked_p6)

                    ; #61987: <==commonly_known== 34165 (pos)
                    (Bc_checked_p6)

                    ; #92152: <==commonly_known== 34165 (pos)
                    (Bb_checked_p6)

                    ; #20011: <==unclosure== 63077 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #26639: <==negation-removal== 19229 (pos)
                    (not (Bc_not_checked_p6))

                    ; #31355: <==negation-removal== 14831 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #31668: <==unclosure== 87086 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #32796: <==negation-removal== 34165 (pos)
                    (not (not_checked_p6))

                    ; #46436: <==negation-removal== 11573 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #50660: <==negation-removal== 51897 (pos)
                    (not (Pa_not_checked_p6))

                    ; #57441: <==negation-removal== 17722 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #59842: <==negation-removal== 11042 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63077: <==uncertain_firing== 11573 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #69945: <==negation-removal== 61987 (pos)
                    (not (Pc_not_checked_p6))

                    ; #70854: <==negation-removal== 34638 (pos)
                    (not (Ba_not_checked_p6))

                    ; #72292: <==negation-removal== 92152 (pos)
                    (not (Pb_not_checked_p6))

                    ; #85092: <==negation-removal== 10351 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #87086: <==uncertain_firing== 14831 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #13551: <==closure== 64614 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #35681: <==closure== 42340 (pos)
                    (Pa_checked_p7)

                    ; #39694: <==commonly_known== 80243 (pos)
                    (Bb_checked_p7)

                    ; #42340: <==commonly_known== 80243 (pos)
                    (Ba_checked_p7)

                    ; #47933: <==commonly_known== 80243 (pos)
                    (Bc_checked_p7)

                    ; #49640: <==closure== 83190 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #64614: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #75118: <==closure== 47933 (pos)
                    (Pc_checked_p7)

                    ; #80243: origin
                    (checked_p7)

                    ; #83190: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #85662: <==closure== 39694 (pos)
                    (Pb_checked_p7)

                    ; #13668: <==negation-removal== 35681 (pos)
                    (not (Ba_not_checked_p7))

                    ; #25012: <==uncertain_firing== 83190 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #31483: <==negation-removal== 13551 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #32486: <==negation-removal== 42340 (pos)
                    (not (Pa_not_checked_p7))

                    ; #42399: <==negation-removal== 47933 (pos)
                    (not (Pc_not_checked_p7))

                    ; #42803: <==unclosure== 88973 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #44462: <==negation-removal== 39694 (pos)
                    (not (Pb_not_checked_p7))

                    ; #49079: <==negation-removal== 80243 (pos)
                    (not (not_checked_p7))

                    ; #49145: <==negation-removal== 75118 (pos)
                    (not (Bc_not_checked_p7))

                    ; #50264: <==negation-removal== 64614 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #50584: <==negation-removal== 85662 (pos)
                    (not (Bb_not_checked_p7))

                    ; #56495: <==unclosure== 25012 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #84858: <==negation-removal== 49640 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #87913: <==negation-removal== 83190 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #88973: <==uncertain_firing== 64614 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11278: <==commonly_known== 31697 (pos)
                    (Ba_checked_p8)

                    ; #16023: <==closure== 37668 (pos)
                    (Pb_checked_p8)

                    ; #31697: origin
                    (checked_p8)

                    ; #37668: <==commonly_known== 31697 (pos)
                    (Bb_checked_p8)

                    ; #52525: <==closure== 11278 (pos)
                    (Pa_checked_p8)

                    ; #53030: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #55888: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #72467: <==closure== 55888 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #81642: <==closure== 88857 (pos)
                    (Pc_checked_p8)

                    ; #88857: <==commonly_known== 31697 (pos)
                    (Bc_checked_p8)

                    ; #97771: <==closure== 53030 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #12310: <==uncertain_firing== 55888 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #22323: <==negation-removal== 16023 (pos)
                    (not (Bb_not_checked_p8))

                    ; #35001: <==negation-removal== 52525 (pos)
                    (not (Ba_not_checked_p8))

                    ; #48149: <==negation-removal== 11278 (pos)
                    (not (Pa_not_checked_p8))

                    ; #49238: <==unclosure== 85815 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #51639: <==negation-removal== 97771 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #59524: <==negation-removal== 53030 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #60039: <==negation-removal== 55888 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #73643: <==negation-removal== 81642 (pos)
                    (not (Bc_not_checked_p8))

                    ; #74038: <==negation-removal== 88857 (pos)
                    (not (Pc_not_checked_p8))

                    ; #76116: <==negation-removal== 37668 (pos)
                    (not (Pb_not_checked_p8))

                    ; #82219: <==negation-removal== 31697 (pos)
                    (not (not_checked_p8))

                    ; #85815: <==uncertain_firing== 53030 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #88073: <==unclosure== 12310 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #89995: <==negation-removal== 72467 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11430: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #12608: <==commonly_known== 19406 (pos)
                    (Bb_checked_p9)

                    ; #19406: origin
                    (checked_p9)

                    ; #42529: <==closure== 12608 (pos)
                    (Pb_checked_p9)

                    ; #49611: <==closure== 11430 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #68100: <==commonly_known== 19406 (pos)
                    (Ba_checked_p9)

                    ; #68376: <==closure== 84700 (pos)
                    (Pc_checked_p9)

                    ; #74277: <==closure== 68100 (pos)
                    (Pa_checked_p9)

                    ; #84637: <==closure== 88529 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #84700: <==commonly_known== 19406 (pos)
                    (Bc_checked_p9)

                    ; #88529: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #13943: <==negation-removal== 12608 (pos)
                    (not (Pb_not_checked_p9))

                    ; #20370: <==unclosure== 30737 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #30737: <==uncertain_firing== 11430 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #39948: <==negation-removal== 19406 (pos)
                    (not (not_checked_p9))

                    ; #45315: <==negation-removal== 49611 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #50817: <==negation-removal== 68376 (pos)
                    (not (Bc_not_checked_p9))

                    ; #63134: <==unclosure== 86404 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #67284: <==negation-removal== 68100 (pos)
                    (not (Pa_not_checked_p9))

                    ; #67622: <==negation-removal== 11430 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #67761: <==negation-removal== 84700 (pos)
                    (not (Pc_not_checked_p9))

                    ; #69507: <==negation-removal== 88529 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #76308: <==negation-removal== 84637 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #82305: <==negation-removal== 74277 (pos)
                    (not (Ba_not_checked_p9))

                    ; #85196: <==negation-removal== 42529 (pos)
                    (not (Bb_not_checked_p9))

                    ; #86404: <==uncertain_firing== 88529 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #14719: <==closure== 20766 (pos)
                    (Pc_checked_p10)

                    ; #20766: <==commonly_known== 62006 (pos)
                    (Bc_checked_p10)

                    ; #41098: <==commonly_known== 62006 (pos)
                    (Ba_checked_p10)

                    ; #51918: <==closure== 82123 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #62006: origin
                    (checked_p10)

                    ; #62177: <==closure== 66745 (pos)
                    (Pb_checked_p10)

                    ; #64839: <==closure== 85379 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #66745: <==commonly_known== 62006 (pos)
                    (Bb_checked_p10)

                    ; #77111: <==closure== 41098 (pos)
                    (Pa_checked_p10)

                    ; #82123: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #85379: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #14343: <==negation-removal== 14719 (pos)
                    (not (Bc_not_checked_p10))

                    ; #21144: <==negation-removal== 51918 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #26224: <==negation-removal== 66745 (pos)
                    (not (Pb_not_checked_p10))

                    ; #32034: <==unclosure== 80931 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #37584: <==uncertain_firing== 85379 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #44901: <==unclosure== 37584 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #46352: <==negation-removal== 64839 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #56139: <==negation-removal== 62006 (pos)
                    (not (not_checked_p10))

                    ; #70364: <==negation-removal== 62177 (pos)
                    (not (Bb_not_checked_p10))

                    ; #79464: <==negation-removal== 77111 (pos)
                    (not (Ba_not_checked_p10))

                    ; #80931: <==uncertain_firing== 82123 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #83536: <==negation-removal== 20766 (pos)
                    (not (Pc_not_checked_p10))

                    ; #86849: <==negation-removal== 85379 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #89912: <==negation-removal== 82123 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #91105: <==negation-removal== 41098 (pos)
                    (not (Pa_not_checked_p10))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #22502: <==closure== 28991 (pos)
                    (Pc_checked_p11)

                    ; #24197: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #28991: <==commonly_known== 83251 (pos)
                    (Bc_checked_p11)

                    ; #32918: <==closure== 24197 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #39308: <==commonly_known== 83251 (pos)
                    (Bb_checked_p11)

                    ; #50294: <==closure== 84051 (pos)
                    (Pa_checked_p11)

                    ; #77679: <==closure== 91135 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #82267: <==closure== 39308 (pos)
                    (Pb_checked_p11)

                    ; #83251: origin
                    (checked_p11)

                    ; #84051: <==commonly_known== 83251 (pos)
                    (Ba_checked_p11)

                    ; #91135: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #10407: <==negation-removal== 50294 (pos)
                    (not (Ba_not_checked_p11))

                    ; #18248: <==negation-removal== 83251 (pos)
                    (not (not_checked_p11))

                    ; #21502: <==negation-removal== 22502 (pos)
                    (not (Bc_not_checked_p11))

                    ; #22531: <==negation-removal== 77679 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #25808: <==negation-removal== 32918 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #32483: <==negation-removal== 39308 (pos)
                    (not (Pb_not_checked_p11))

                    ; #45668: <==unclosure== 59205 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #46325: <==uncertain_firing== 91135 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #51167: <==negation-removal== 24197 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #52552: <==negation-removal== 84051 (pos)
                    (not (Pa_not_checked_p11))

                    ; #52625: <==negation-removal== 91135 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #59047: <==negation-removal== 82267 (pos)
                    (not (Bb_not_checked_p11))

                    ; #59205: <==uncertain_firing== 24197 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #73808: <==negation-removal== 28991 (pos)
                    (not (Pc_not_checked_p11))

                    ; #79568: <==unclosure== 46325 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #10783: <==closure== 57728 (pos)
                    (Pc_checked_p12)

                    ; #23129: <==closure== 43550 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #29206: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #29259: <==commonly_known== 46853 (pos)
                    (Bb_checked_p12)

                    ; #43550: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #46853: origin
                    (checked_p12)

                    ; #57728: <==commonly_known== 46853 (pos)
                    (Bc_checked_p12)

                    ; #67280: <==closure== 29206 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #68198: <==commonly_known== 46853 (pos)
                    (Ba_checked_p12)

                    ; #75270: <==closure== 29259 (pos)
                    (Pb_checked_p12)

                    ; #83180: <==closure== 68198 (pos)
                    (Pa_checked_p12)

                    ; #14807: <==unclosure== 73732 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #19927: <==negation-removal== 83180 (pos)
                    (not (Ba_not_checked_p12))

                    ; #23442: <==negation-removal== 29259 (pos)
                    (not (Pb_not_checked_p12))

                    ; #46546: <==negation-removal== 75270 (pos)
                    (not (Bb_not_checked_p12))

                    ; #47248: <==uncertain_firing== 43550 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #50055: <==negation-removal== 23129 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #62042: <==negation-removal== 46853 (pos)
                    (not (not_checked_p12))

                    ; #63424: <==negation-removal== 57728 (pos)
                    (not (Pc_not_checked_p12))

                    ; #63934: <==negation-removal== 43550 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #65167: <==negation-removal== 67280 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #73732: <==uncertain_firing== 29206 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #81040: <==unclosure== 47248 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #81946: <==negation-removal== 10783 (pos)
                    (not (Bc_not_checked_p12))

                    ; #85357: <==negation-removal== 29206 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #90757: <==negation-removal== 68198 (pos)
                    (not (Pa_not_checked_p12))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #22270: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #28862: <==closure== 89707 (pos)
                    (Pb_checked_p1)

                    ; #44833: <==commonly_known== 58073 (pos)
                    (Ba_checked_p1)

                    ; #47456: <==closure== 22270 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #58073: origin
                    (checked_p1)

                    ; #64998: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #65211: <==commonly_known== 58073 (pos)
                    (Bc_checked_p1)

                    ; #69892: <==closure== 64998 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #73044: <==closure== 65211 (pos)
                    (Pc_checked_p1)

                    ; #78118: <==closure== 44833 (pos)
                    (Pa_checked_p1)

                    ; #89707: <==commonly_known== 58073 (pos)
                    (Bb_checked_p1)

                    ; #11592: <==negation-removal== 73044 (pos)
                    (not (Bc_not_checked_p1))

                    ; #17606: <==negation-removal== 64998 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #31814: <==negation-removal== 65211 (pos)
                    (not (Pc_not_checked_p1))

                    ; #34299: <==negation-removal== 69892 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #39784: <==uncertain_firing== 22270 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #41477: <==negation-removal== 78118 (pos)
                    (not (Ba_not_checked_p1))

                    ; #53977: <==negation-removal== 47456 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #61206: <==negation-removal== 28862 (pos)
                    (not (Bb_not_checked_p1))

                    ; #67391: <==unclosure== 78509 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #77182: <==negation-removal== 89707 (pos)
                    (not (Pb_not_checked_p1))

                    ; #78509: <==uncertain_firing== 64998 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #80214: <==unclosure== 39784 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #81105: <==negation-removal== 22270 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #82500: <==negation-removal== 58073 (pos)
                    (not (not_checked_p1))

                    ; #86213: <==negation-removal== 44833 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11648: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #14983: <==closure== 17286 (pos)
                    (Pc_checked_p2)

                    ; #17286: <==commonly_known== 42681 (pos)
                    (Bc_checked_p2)

                    ; #17650: <==closure== 11648 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #31451: <==closure== 90788 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #42681: origin
                    (checked_p2)

                    ; #46682: <==closure== 61128 (pos)
                    (Pb_checked_p2)

                    ; #52955: <==closure== 66533 (pos)
                    (Pa_checked_p2)

                    ; #61128: <==commonly_known== 42681 (pos)
                    (Bb_checked_p2)

                    ; #66533: <==commonly_known== 42681 (pos)
                    (Ba_checked_p2)

                    ; #90788: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #11601: <==unclosure== 74232 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #21000: <==unclosure== 86830 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #22014: <==negation-removal== 14983 (pos)
                    (not (Bc_not_checked_p2))

                    ; #30383: <==negation-removal== 66533 (pos)
                    (not (Pa_not_checked_p2))

                    ; #30955: <==negation-removal== 52955 (pos)
                    (not (Ba_not_checked_p2))

                    ; #31591: <==negation-removal== 42681 (pos)
                    (not (not_checked_p2))

                    ; #44530: <==negation-removal== 17286 (pos)
                    (not (Pc_not_checked_p2))

                    ; #49161: <==negation-removal== 31451 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #50072: <==negation-removal== 61128 (pos)
                    (not (Pb_not_checked_p2))

                    ; #58081: <==negation-removal== 90788 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62206: <==negation-removal== 11648 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #72579: <==negation-removal== 17650 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #74232: <==uncertain_firing== 11648 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #78398: <==negation-removal== 46682 (pos)
                    (not (Bb_not_checked_p2))

                    ; #86830: <==uncertain_firing== 90788 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #13885: <==commonly_known== 64811 (pos)
                    (Bc_checked_p3)

                    ; #56809: <==closure== 72694 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #63452: <==commonly_known== 64811 (pos)
                    (Ba_checked_p3)

                    ; #64108: <==commonly_known== 64811 (pos)
                    (Bb_checked_p3)

                    ; #64811: origin
                    (checked_p3)

                    ; #65218: <==closure== 13885 (pos)
                    (Pc_checked_p3)

                    ; #70202: <==closure== 63452 (pos)
                    (Pa_checked_p3)

                    ; #72694: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #74395: <==closure== 64108 (pos)
                    (Pb_checked_p3)

                    ; #76192: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #78076: <==closure== 76192 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #24079: <==unclosure== 90123 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #25643: <==negation-removal== 64108 (pos)
                    (not (Pb_not_checked_p3))

                    ; #27990: <==negation-removal== 72694 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #34754: <==negation-removal== 78076 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #45325: <==negation-removal== 65218 (pos)
                    (not (Bc_not_checked_p3))

                    ; #47569: <==negation-removal== 13885 (pos)
                    (not (Pc_not_checked_p3))

                    ; #49367: <==negation-removal== 70202 (pos)
                    (not (Ba_not_checked_p3))

                    ; #76144: <==negation-removal== 63452 (pos)
                    (not (Pa_not_checked_p3))

                    ; #79284: <==negation-removal== 74395 (pos)
                    (not (Bb_not_checked_p3))

                    ; #86872: <==negation-removal== 64811 (pos)
                    (not (not_checked_p3))

                    ; #87390: <==negation-removal== 56809 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #89475: <==uncertain_firing== 76192 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #90123: <==uncertain_firing== 72694 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #91596: <==negation-removal== 76192 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #91626: <==unclosure== 89475 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #14761: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #16749: <==closure== 21180 (pos)
                    (Pa_checked_p4)

                    ; #21180: <==commonly_known== 47470 (pos)
                    (Ba_checked_p4)

                    ; #31374: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #40242: <==closure== 67010 (pos)
                    (Pc_checked_p4)

                    ; #44937: <==closure== 55587 (pos)
                    (Pb_checked_p4)

                    ; #47470: origin
                    (checked_p4)

                    ; #55587: <==commonly_known== 47470 (pos)
                    (Bb_checked_p4)

                    ; #65404: <==closure== 14761 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #67010: <==commonly_known== 47470 (pos)
                    (Bc_checked_p4)

                    ; #75431: <==closure== 31374 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #13284: <==negation-removal== 14761 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #22754: <==negation-removal== 67010 (pos)
                    (not (Pc_not_checked_p4))

                    ; #27084: <==negation-removal== 75431 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #42882: <==unclosure== 65221 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #44098: <==negation-removal== 44937 (pos)
                    (not (Bb_not_checked_p4))

                    ; #45774: <==uncertain_firing== 31374 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #48435: <==negation-removal== 16749 (pos)
                    (not (Ba_not_checked_p4))

                    ; #52302: <==negation-removal== 65404 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #61243: <==negation-removal== 55587 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61759: <==negation-removal== 21180 (pos)
                    (not (Pa_not_checked_p4))

                    ; #65221: <==uncertain_firing== 14761 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #68909: <==negation-removal== 31374 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #73766: <==negation-removal== 47470 (pos)
                    (not (not_checked_p4))

                    ; #86479: <==negation-removal== 40242 (pos)
                    (not (Bc_not_checked_p4))

                    ; #91247: <==unclosure== 45774 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #15593: <==closure== 46405 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #29788: <==closure== 38516 (pos)
                    (Pa_checked_p5)

                    ; #38516: <==commonly_known== 70355 (pos)
                    (Ba_checked_p5)

                    ; #46405: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #53474: <==commonly_known== 70355 (pos)
                    (Bc_checked_p5)

                    ; #55955: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #66470: <==commonly_known== 70355 (pos)
                    (Bb_checked_p5)

                    ; #67726: <==closure== 66470 (pos)
                    (Pb_checked_p5)

                    ; #70355: origin
                    (checked_p5)

                    ; #77410: <==closure== 55955 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #83088: <==closure== 53474 (pos)
                    (Pc_checked_p5)

                    ; #10459: <==negation-removal== 38516 (pos)
                    (not (Pa_not_checked_p5))

                    ; #28280: <==negation-removal== 70355 (pos)
                    (not (not_checked_p5))

                    ; #40286: <==negation-removal== 46405 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #48182: <==negation-removal== 67726 (pos)
                    (not (Bb_not_checked_p5))

                    ; #49717: <==uncertain_firing== 55955 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #55020: <==negation-removal== 29788 (pos)
                    (not (Ba_not_checked_p5))

                    ; #56075: <==negation-removal== 66470 (pos)
                    (not (Pb_not_checked_p5))

                    ; #58586: <==uncertain_firing== 46405 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #62257: <==negation-removal== 53474 (pos)
                    (not (Pc_not_checked_p5))

                    ; #63094: <==negation-removal== 77410 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #70738: <==negation-removal== 15593 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #73026: <==unclosure== 49717 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #81770: <==unclosure== 58586 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #85033: <==negation-removal== 55955 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #89883: <==negation-removal== 83088 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #11042: <==closure== 92152 (pos)
                    (Pb_checked_p6)

                    ; #19229: <==closure== 61987 (pos)
                    (Pc_checked_p6)

                    ; #34165: origin
                    (checked_p6)

                    ; #34638: <==closure== 51897 (pos)
                    (Pa_checked_p6)

                    ; #37592: <==closure== 52303 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #51897: <==commonly_known== 34165 (pos)
                    (Ba_checked_p6)

                    ; #52303: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #58334: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #61987: <==commonly_known== 34165 (pos)
                    (Bc_checked_p6)

                    ; #65324: <==closure== 58334 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #92152: <==commonly_known== 34165 (pos)
                    (Bb_checked_p6)

                    ; #11315: <==negation-removal== 65324 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #18646: <==unclosure== 51603 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #20186: <==negation-removal== 58334 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #22026: <==uncertain_firing== 52303 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #26639: <==negation-removal== 19229 (pos)
                    (not (Bc_not_checked_p6))

                    ; #32185: <==negation-removal== 37592 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #32796: <==negation-removal== 34165 (pos)
                    (not (not_checked_p6))

                    ; #39263: <==negation-removal== 52303 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #50660: <==negation-removal== 51897 (pos)
                    (not (Pa_not_checked_p6))

                    ; #51603: <==uncertain_firing== 58334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #59842: <==negation-removal== 11042 (pos)
                    (not (Bb_not_checked_p6))

                    ; #66158: <==unclosure== 22026 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #69945: <==negation-removal== 61987 (pos)
                    (not (Pc_not_checked_p6))

                    ; #70854: <==negation-removal== 34638 (pos)
                    (not (Ba_not_checked_p6))

                    ; #72292: <==negation-removal== 92152 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #18081: <==closure== 78729 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #20005: <==closure== 47388 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #35681: <==closure== 42340 (pos)
                    (Pa_checked_p7)

                    ; #39694: <==commonly_known== 80243 (pos)
                    (Bb_checked_p7)

                    ; #42340: <==commonly_known== 80243 (pos)
                    (Ba_checked_p7)

                    ; #47388: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #47933: <==commonly_known== 80243 (pos)
                    (Bc_checked_p7)

                    ; #75118: <==closure== 47933 (pos)
                    (Pc_checked_p7)

                    ; #78729: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #80243: origin
                    (checked_p7)

                    ; #85662: <==closure== 39694 (pos)
                    (Pb_checked_p7)

                    ; #13668: <==negation-removal== 35681 (pos)
                    (not (Ba_not_checked_p7))

                    ; #16239: <==uncertain_firing== 47388 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #32486: <==negation-removal== 42340 (pos)
                    (not (Pa_not_checked_p7))

                    ; #42399: <==negation-removal== 47933 (pos)
                    (not (Pc_not_checked_p7))

                    ; #44462: <==negation-removal== 39694 (pos)
                    (not (Pb_not_checked_p7))

                    ; #46514: <==unclosure== 82899 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #48816: <==negation-removal== 78729 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #49079: <==negation-removal== 80243 (pos)
                    (not (not_checked_p7))

                    ; #49145: <==negation-removal== 75118 (pos)
                    (not (Bc_not_checked_p7))

                    ; #50584: <==negation-removal== 85662 (pos)
                    (not (Bb_not_checked_p7))

                    ; #57632: <==negation-removal== 47388 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #70393: <==unclosure== 16239 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #71703: <==negation-removal== 20005 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #79675: <==negation-removal== 18081 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #82899: <==uncertain_firing== 78729 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #11278: <==commonly_known== 31697 (pos)
                    (Ba_checked_p8)

                    ; #16023: <==closure== 37668 (pos)
                    (Pb_checked_p8)

                    ; #17035: <==closure== 28051 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #28051: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #31697: origin
                    (checked_p8)

                    ; #33952: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #37668: <==commonly_known== 31697 (pos)
                    (Bb_checked_p8)

                    ; #52525: <==closure== 11278 (pos)
                    (Pa_checked_p8)

                    ; #68080: <==closure== 33952 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #81642: <==closure== 88857 (pos)
                    (Pc_checked_p8)

                    ; #88857: <==commonly_known== 31697 (pos)
                    (Bc_checked_p8)

                    ; #12308: <==negation-removal== 33952 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #22323: <==negation-removal== 16023 (pos)
                    (not (Bb_not_checked_p8))

                    ; #35001: <==negation-removal== 52525 (pos)
                    (not (Ba_not_checked_p8))

                    ; #38416: <==uncertain_firing== 28051 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #39628: <==negation-removal== 28051 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48149: <==negation-removal== 11278 (pos)
                    (not (Pa_not_checked_p8))

                    ; #63253: <==unclosure== 38416 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #69763: <==negation-removal== 68080 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #73643: <==negation-removal== 81642 (pos)
                    (not (Bc_not_checked_p8))

                    ; #74038: <==negation-removal== 88857 (pos)
                    (not (Pc_not_checked_p8))

                    ; #76116: <==negation-removal== 37668 (pos)
                    (not (Pb_not_checked_p8))

                    ; #82168: <==negation-removal== 17035 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #82219: <==negation-removal== 31697 (pos)
                    (not (not_checked_p8))

                    ; #85898: <==uncertain_firing== 33952 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #90680: <==unclosure== 85898 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12608: <==commonly_known== 19406 (pos)
                    (Bb_checked_p9)

                    ; #19406: origin
                    (checked_p9)

                    ; #42529: <==closure== 12608 (pos)
                    (Pb_checked_p9)

                    ; #60182: <==closure== 61246 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #61246: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #65796: <==closure== 84924 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #68100: <==commonly_known== 19406 (pos)
                    (Ba_checked_p9)

                    ; #68376: <==closure== 84700 (pos)
                    (Pc_checked_p9)

                    ; #74277: <==closure== 68100 (pos)
                    (Pa_checked_p9)

                    ; #84700: <==commonly_known== 19406 (pos)
                    (Bc_checked_p9)

                    ; #84924: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #13943: <==negation-removal== 12608 (pos)
                    (not (Pb_not_checked_p9))

                    ; #18687: <==uncertain_firing== 84924 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #27844: <==negation-removal== 84924 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #39948: <==negation-removal== 19406 (pos)
                    (not (not_checked_p9))

                    ; #50337: <==unclosure== 79159 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #50817: <==negation-removal== 68376 (pos)
                    (not (Bc_not_checked_p9))

                    ; #51223: <==unclosure== 18687 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #57677: <==negation-removal== 60182 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #67284: <==negation-removal== 68100 (pos)
                    (not (Pa_not_checked_p9))

                    ; #67761: <==negation-removal== 84700 (pos)
                    (not (Pc_not_checked_p9))

                    ; #79159: <==uncertain_firing== 61246 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #82305: <==negation-removal== 74277 (pos)
                    (not (Ba_not_checked_p9))

                    ; #82402: <==negation-removal== 65796 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #85196: <==negation-removal== 42529 (pos)
                    (not (Bb_not_checked_p9))

                    ; #89068: <==negation-removal== 61246 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #14719: <==closure== 20766 (pos)
                    (Pc_checked_p10)

                    ; #20766: <==commonly_known== 62006 (pos)
                    (Bc_checked_p10)

                    ; #31406: <==closure== 69211 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #41098: <==commonly_known== 62006 (pos)
                    (Ba_checked_p10)

                    ; #42276: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #53008: <==closure== 42276 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #62006: origin
                    (checked_p10)

                    ; #62177: <==closure== 66745 (pos)
                    (Pb_checked_p10)

                    ; #66745: <==commonly_known== 62006 (pos)
                    (Bb_checked_p10)

                    ; #69211: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #77111: <==closure== 41098 (pos)
                    (Pa_checked_p10)

                    ; #12507: <==negation-removal== 69211 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #14343: <==negation-removal== 14719 (pos)
                    (not (Bc_not_checked_p10))

                    ; #26224: <==negation-removal== 66745 (pos)
                    (not (Pb_not_checked_p10))

                    ; #33050: <==negation-removal== 42276 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #47043: <==uncertain_firing== 42276 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #48857: <==negation-removal== 31406 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #56139: <==negation-removal== 62006 (pos)
                    (not (not_checked_p10))

                    ; #70364: <==negation-removal== 62177 (pos)
                    (not (Bb_not_checked_p10))

                    ; #71651: <==negation-removal== 53008 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #79464: <==negation-removal== 77111 (pos)
                    (not (Ba_not_checked_p10))

                    ; #79610: <==unclosure== 47043 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #83536: <==negation-removal== 20766 (pos)
                    (not (Pc_not_checked_p10))

                    ; #87677: <==uncertain_firing== 69211 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #89935: <==unclosure== 87677 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #91105: <==negation-removal== 41098 (pos)
                    (not (Pa_not_checked_p10))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #22502: <==closure== 28991 (pos)
                    (Pc_checked_p11)

                    ; #28991: <==commonly_known== 83251 (pos)
                    (Bc_checked_p11)

                    ; #34969: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #39308: <==commonly_known== 83251 (pos)
                    (Bb_checked_p11)

                    ; #50294: <==closure== 84051 (pos)
                    (Pa_checked_p11)

                    ; #54512: <==closure== 34969 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #60982: <==closure== 78269 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #78269: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #82267: <==closure== 39308 (pos)
                    (Pb_checked_p11)

                    ; #83251: origin
                    (checked_p11)

                    ; #84051: <==commonly_known== 83251 (pos)
                    (Ba_checked_p11)

                    ; #10407: <==negation-removal== 50294 (pos)
                    (not (Ba_not_checked_p11))

                    ; #11137: <==negation-removal== 34969 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #18248: <==negation-removal== 83251 (pos)
                    (not (not_checked_p11))

                    ; #21502: <==negation-removal== 22502 (pos)
                    (not (Bc_not_checked_p11))

                    ; #25721: <==negation-removal== 54512 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #32483: <==negation-removal== 39308 (pos)
                    (not (Pb_not_checked_p11))

                    ; #33035: <==unclosure== 74597 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #49121: <==negation-removal== 60982 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #52552: <==negation-removal== 84051 (pos)
                    (not (Pa_not_checked_p11))

                    ; #59047: <==negation-removal== 82267 (pos)
                    (not (Bb_not_checked_p11))

                    ; #61682: <==negation-removal== 78269 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #62586: <==unclosure== 83975 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #73808: <==negation-removal== 28991 (pos)
                    (not (Pc_not_checked_p11))

                    ; #74597: <==uncertain_firing== 34969 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #83975: <==uncertain_firing== 78269 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #10783: <==closure== 57728 (pos)
                    (Pc_checked_p12)

                    ; #29259: <==commonly_known== 46853 (pos)
                    (Bb_checked_p12)

                    ; #29721: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #34724: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #39490: <==closure== 29721 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #46853: origin
                    (checked_p12)

                    ; #53275: <==closure== 34724 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #57728: <==commonly_known== 46853 (pos)
                    (Bc_checked_p12)

                    ; #68198: <==commonly_known== 46853 (pos)
                    (Ba_checked_p12)

                    ; #75270: <==closure== 29259 (pos)
                    (Pb_checked_p12)

                    ; #83180: <==closure== 68198 (pos)
                    (Pa_checked_p12)

                    ; #13289: <==negation-removal== 34724 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #16076: <==unclosure== 26342 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #19927: <==negation-removal== 83180 (pos)
                    (not (Ba_not_checked_p12))

                    ; #23442: <==negation-removal== 29259 (pos)
                    (not (Pb_not_checked_p12))

                    ; #23928: <==uncertain_firing== 34724 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #26342: <==uncertain_firing== 29721 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #30306: <==negation-removal== 53275 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #44187: <==negation-removal== 29721 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #46546: <==negation-removal== 75270 (pos)
                    (not (Bb_not_checked_p12))

                    ; #62042: <==negation-removal== 46853 (pos)
                    (not (not_checked_p12))

                    ; #63424: <==negation-removal== 57728 (pos)
                    (not (Pc_not_checked_p12))

                    ; #81946: <==negation-removal== 10783 (pos)
                    (not (Bc_not_checked_p12))

                    ; #82311: <==unclosure== 23928 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #83268: <==negation-removal== 39490 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #90757: <==negation-removal== 68198 (pos)
                    (not (Pa_not_checked_p12))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #28862: <==closure== 89707 (pos)
                    (Pb_checked_p1)

                    ; #29425: <==closure== 65288 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #44833: <==commonly_known== 58073 (pos)
                    (Ba_checked_p1)

                    ; #57376: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #58073: origin
                    (checked_p1)

                    ; #65211: <==commonly_known== 58073 (pos)
                    (Bc_checked_p1)

                    ; #65288: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #73044: <==closure== 65211 (pos)
                    (Pc_checked_p1)

                    ; #78118: <==closure== 44833 (pos)
                    (Pa_checked_p1)

                    ; #89707: <==commonly_known== 58073 (pos)
                    (Bb_checked_p1)

                    ; #91256: <==closure== 57376 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #11592: <==negation-removal== 73044 (pos)
                    (not (Bc_not_checked_p1))

                    ; #13277: <==negation-removal== 57376 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #16743: <==unclosure== 70123 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #29986: <==uncertain_firing== 65288 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #31814: <==negation-removal== 65211 (pos)
                    (not (Pc_not_checked_p1))

                    ; #41477: <==negation-removal== 78118 (pos)
                    (not (Ba_not_checked_p1))

                    ; #44917: <==negation-removal== 29425 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #46424: <==unclosure== 29986 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #59776: <==negation-removal== 91256 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #61206: <==negation-removal== 28862 (pos)
                    (not (Bb_not_checked_p1))

                    ; #70123: <==uncertain_firing== 57376 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #77182: <==negation-removal== 89707 (pos)
                    (not (Pb_not_checked_p1))

                    ; #82500: <==negation-removal== 58073 (pos)
                    (not (not_checked_p1))

                    ; #86213: <==negation-removal== 44833 (pos)
                    (not (Pa_not_checked_p1))

                    ; #90752: <==negation-removal== 65288 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #14983: <==closure== 17286 (pos)
                    (Pc_checked_p2)

                    ; #15831: <==closure== 76841 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #17286: <==commonly_known== 42681 (pos)
                    (Bc_checked_p2)

                    ; #42681: origin
                    (checked_p2)

                    ; #44696: <==closure== 68433 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #46682: <==closure== 61128 (pos)
                    (Pb_checked_p2)

                    ; #52955: <==closure== 66533 (pos)
                    (Pa_checked_p2)

                    ; #61128: <==commonly_known== 42681 (pos)
                    (Bb_checked_p2)

                    ; #66533: <==commonly_known== 42681 (pos)
                    (Ba_checked_p2)

                    ; #68433: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #76841: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #20495: <==unclosure== 58530 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #22014: <==negation-removal== 14983 (pos)
                    (not (Bc_not_checked_p2))

                    ; #30383: <==negation-removal== 66533 (pos)
                    (not (Pa_not_checked_p2))

                    ; #30955: <==negation-removal== 52955 (pos)
                    (not (Ba_not_checked_p2))

                    ; #31591: <==negation-removal== 42681 (pos)
                    (not (not_checked_p2))

                    ; #35362: <==negation-removal== 76841 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #36002: <==negation-removal== 15831 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #42158: <==uncertain_firing== 76841 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #44530: <==negation-removal== 17286 (pos)
                    (not (Pc_not_checked_p2))

                    ; #46647: <==negation-removal== 68433 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #50072: <==negation-removal== 61128 (pos)
                    (not (Pb_not_checked_p2))

                    ; #51249: <==negation-removal== 44696 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #58530: <==uncertain_firing== 68433 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #70691: <==unclosure== 42158 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #78398: <==negation-removal== 46682 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #13885: <==commonly_known== 64811 (pos)
                    (Bc_checked_p3)

                    ; #34053: <==closure== 37082 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #37082: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #37886: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #63452: <==commonly_known== 64811 (pos)
                    (Ba_checked_p3)

                    ; #64108: <==commonly_known== 64811 (pos)
                    (Bb_checked_p3)

                    ; #64811: origin
                    (checked_p3)

                    ; #65218: <==closure== 13885 (pos)
                    (Pc_checked_p3)

                    ; #70202: <==closure== 63452 (pos)
                    (Pa_checked_p3)

                    ; #74395: <==closure== 64108 (pos)
                    (Pb_checked_p3)

                    ; #83755: <==closure== 37886 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #25643: <==negation-removal== 64108 (pos)
                    (not (Pb_not_checked_p3))

                    ; #36821: <==negation-removal== 83755 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #45325: <==negation-removal== 65218 (pos)
                    (not (Bc_not_checked_p3))

                    ; #47569: <==negation-removal== 13885 (pos)
                    (not (Pc_not_checked_p3))

                    ; #49367: <==negation-removal== 70202 (pos)
                    (not (Ba_not_checked_p3))

                    ; #53108: <==unclosure== 91128 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #59493: <==negation-removal== 37082 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #67133: <==negation-removal== 34053 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #68396: <==unclosure== 82795 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #76144: <==negation-removal== 63452 (pos)
                    (not (Pa_not_checked_p3))

                    ; #79284: <==negation-removal== 74395 (pos)
                    (not (Bb_not_checked_p3))

                    ; #82795: <==uncertain_firing== 37886 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #86872: <==negation-removal== 64811 (pos)
                    (not (not_checked_p3))

                    ; #91128: <==uncertain_firing== 37082 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #98965: <==negation-removal== 37886 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #11649: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #16749: <==closure== 21180 (pos)
                    (Pa_checked_p4)

                    ; #16759: <==closure== 60263 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #21180: <==commonly_known== 47470 (pos)
                    (Ba_checked_p4)

                    ; #40242: <==closure== 67010 (pos)
                    (Pc_checked_p4)

                    ; #44937: <==closure== 55587 (pos)
                    (Pb_checked_p4)

                    ; #47470: origin
                    (checked_p4)

                    ; #55587: <==commonly_known== 47470 (pos)
                    (Bb_checked_p4)

                    ; #60263: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #65687: <==closure== 11649 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #67010: <==commonly_known== 47470 (pos)
                    (Bc_checked_p4)

                    ; #10147: <==negation-removal== 65687 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #18533: <==negation-removal== 16759 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #22754: <==negation-removal== 67010 (pos)
                    (not (Pc_not_checked_p4))

                    ; #29133: <==negation-removal== 60263 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #39569: <==negation-removal== 11649 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39666: <==uncertain_firing== 60263 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #44098: <==negation-removal== 44937 (pos)
                    (not (Bb_not_checked_p4))

                    ; #48435: <==negation-removal== 16749 (pos)
                    (not (Ba_not_checked_p4))

                    ; #61243: <==negation-removal== 55587 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61759: <==negation-removal== 21180 (pos)
                    (not (Pa_not_checked_p4))

                    ; #73766: <==negation-removal== 47470 (pos)
                    (not (not_checked_p4))

                    ; #75281: <==unclosure== 85858 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #85858: <==uncertain_firing== 11649 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #86479: <==negation-removal== 40242 (pos)
                    (not (Bc_not_checked_p4))

                    ; #90162: <==unclosure== 39666 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #29208: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #29788: <==closure== 38516 (pos)
                    (Pa_checked_p5)

                    ; #35553: <==closure== 91429 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #38516: <==commonly_known== 70355 (pos)
                    (Ba_checked_p5)

                    ; #52035: <==closure== 29208 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #53474: <==commonly_known== 70355 (pos)
                    (Bc_checked_p5)

                    ; #66470: <==commonly_known== 70355 (pos)
                    (Bb_checked_p5)

                    ; #67726: <==closure== 66470 (pos)
                    (Pb_checked_p5)

                    ; #70355: origin
                    (checked_p5)

                    ; #83088: <==closure== 53474 (pos)
                    (Pc_checked_p5)

                    ; #91429: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #10459: <==negation-removal== 38516 (pos)
                    (not (Pa_not_checked_p5))

                    ; #12410: <==negation-removal== 35553 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #26882: <==uncertain_firing== 29208 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #28280: <==negation-removal== 70355 (pos)
                    (not (not_checked_p5))

                    ; #30143: <==uncertain_firing== 91429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #37654: <==negation-removal== 91429 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #40787: <==negation-removal== 52035 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #46828: <==unclosure== 26882 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #48182: <==negation-removal== 67726 (pos)
                    (not (Bb_not_checked_p5))

                    ; #55020: <==negation-removal== 29788 (pos)
                    (not (Ba_not_checked_p5))

                    ; #56075: <==negation-removal== 66470 (pos)
                    (not (Pb_not_checked_p5))

                    ; #59305: <==unclosure== 30143 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62257: <==negation-removal== 53474 (pos)
                    (not (Pc_not_checked_p5))

                    ; #63619: <==negation-removal== 29208 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #89883: <==negation-removal== 83088 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #11042: <==closure== 92152 (pos)
                    (Pb_checked_p6)

                    ; #19229: <==closure== 61987 (pos)
                    (Pc_checked_p6)

                    ; #32499: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #34165: origin
                    (checked_p6)

                    ; #34638: <==closure== 51897 (pos)
                    (Pa_checked_p6)

                    ; #42761: <==closure== 32499 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #51897: <==commonly_known== 34165 (pos)
                    (Ba_checked_p6)

                    ; #61987: <==commonly_known== 34165 (pos)
                    (Bc_checked_p6)

                    ; #89027: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #89861: <==closure== 89027 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #92152: <==commonly_known== 34165 (pos)
                    (Bb_checked_p6)

                    ; #13701: <==negation-removal== 32499 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #19686: <==negation-removal== 89861 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #26639: <==negation-removal== 19229 (pos)
                    (not (Bc_not_checked_p6))

                    ; #32796: <==negation-removal== 34165 (pos)
                    (not (not_checked_p6))

                    ; #34761: <==negation-removal== 42761 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #36754: <==uncertain_firing== 32499 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #42259: <==unclosure== 89642 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #50295: <==unclosure== 36754 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #50660: <==negation-removal== 51897 (pos)
                    (not (Pa_not_checked_p6))

                    ; #59842: <==negation-removal== 11042 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63009: <==negation-removal== 89027 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #69945: <==negation-removal== 61987 (pos)
                    (not (Pc_not_checked_p6))

                    ; #70854: <==negation-removal== 34638 (pos)
                    (not (Ba_not_checked_p6))

                    ; #72292: <==negation-removal== 92152 (pos)
                    (not (Pb_not_checked_p6))

                    ; #89642: <==uncertain_firing== 89027 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #35681: <==closure== 42340 (pos)
                    (Pa_checked_p7)

                    ; #39694: <==commonly_known== 80243 (pos)
                    (Bb_checked_p7)

                    ; #42340: <==commonly_known== 80243 (pos)
                    (Ba_checked_p7)

                    ; #47933: <==commonly_known== 80243 (pos)
                    (Bc_checked_p7)

                    ; #52683: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #73868: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #75118: <==closure== 47933 (pos)
                    (Pc_checked_p7)

                    ; #76990: <==closure== 73868 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #80243: origin
                    (checked_p7)

                    ; #84154: <==closure== 52683 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #85662: <==closure== 39694 (pos)
                    (Pb_checked_p7)

                    ; #13668: <==negation-removal== 35681 (pos)
                    (not (Ba_not_checked_p7))

                    ; #26425: <==uncertain_firing== 73868 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #32486: <==negation-removal== 42340 (pos)
                    (not (Pa_not_checked_p7))

                    ; #42399: <==negation-removal== 47933 (pos)
                    (not (Pc_not_checked_p7))

                    ; #44462: <==negation-removal== 39694 (pos)
                    (not (Pb_not_checked_p7))

                    ; #49079: <==negation-removal== 80243 (pos)
                    (not (not_checked_p7))

                    ; #49145: <==negation-removal== 75118 (pos)
                    (not (Bc_not_checked_p7))

                    ; #50584: <==negation-removal== 85662 (pos)
                    (not (Bb_not_checked_p7))

                    ; #59394: <==negation-removal== 73868 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #67958: <==negation-removal== 52683 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #70274: <==negation-removal== 76990 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #75821: <==negation-removal== 84154 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #80638: <==unclosure== 81973 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #81973: <==uncertain_firing== 52683 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #93063: <==unclosure== 26425 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11278: <==commonly_known== 31697 (pos)
                    (Ba_checked_p8)

                    ; #16023: <==closure== 37668 (pos)
                    (Pb_checked_p8)

                    ; #29259: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #31697: origin
                    (checked_p8)

                    ; #37668: <==commonly_known== 31697 (pos)
                    (Bb_checked_p8)

                    ; #52525: <==closure== 11278 (pos)
                    (Pa_checked_p8)

                    ; #54079: <==closure== 29259 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #74602: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #79756: <==closure== 74602 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #81642: <==closure== 88857 (pos)
                    (Pc_checked_p8)

                    ; #88857: <==commonly_known== 31697 (pos)
                    (Bc_checked_p8)

                    ; #17033: <==negation-removal== 29259 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #22323: <==negation-removal== 16023 (pos)
                    (not (Bb_not_checked_p8))

                    ; #35001: <==negation-removal== 52525 (pos)
                    (not (Ba_not_checked_p8))

                    ; #35540: <==negation-removal== 79756 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #40318: <==negation-removal== 54079 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #48149: <==negation-removal== 11278 (pos)
                    (not (Pa_not_checked_p8))

                    ; #49635: <==unclosure== 69942 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #55954: <==uncertain_firing== 74602 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #64541: <==unclosure== 55954 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #69942: <==uncertain_firing== 29259 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #72538: <==negation-removal== 74602 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #73643: <==negation-removal== 81642 (pos)
                    (not (Bc_not_checked_p8))

                    ; #74038: <==negation-removal== 88857 (pos)
                    (not (Pc_not_checked_p8))

                    ; #76116: <==negation-removal== 37668 (pos)
                    (not (Pb_not_checked_p8))

                    ; #82219: <==negation-removal== 31697 (pos)
                    (not (not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12608: <==commonly_known== 19406 (pos)
                    (Bb_checked_p9)

                    ; #19406: origin
                    (checked_p9)

                    ; #42529: <==closure== 12608 (pos)
                    (Pb_checked_p9)

                    ; #43019: <==closure== 66804 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #54398: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #61459: <==closure== 54398 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #66804: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #68100: <==commonly_known== 19406 (pos)
                    (Ba_checked_p9)

                    ; #68376: <==closure== 84700 (pos)
                    (Pc_checked_p9)

                    ; #74277: <==closure== 68100 (pos)
                    (Pa_checked_p9)

                    ; #84700: <==commonly_known== 19406 (pos)
                    (Bc_checked_p9)

                    ; #13943: <==negation-removal== 12608 (pos)
                    (not (Pb_not_checked_p9))

                    ; #17371: <==uncertain_firing== 66804 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #25968: <==negation-removal== 61459 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #39948: <==negation-removal== 19406 (pos)
                    (not (not_checked_p9))

                    ; #49839: <==negation-removal== 43019 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #50817: <==negation-removal== 68376 (pos)
                    (not (Bc_not_checked_p9))

                    ; #62317: <==negation-removal== 54398 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #66421: <==unclosure== 17371 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #67284: <==negation-removal== 68100 (pos)
                    (not (Pa_not_checked_p9))

                    ; #67761: <==negation-removal== 84700 (pos)
                    (not (Pc_not_checked_p9))

                    ; #69278: <==uncertain_firing== 54398 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #78044: <==unclosure== 69278 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #82305: <==negation-removal== 74277 (pos)
                    (not (Ba_not_checked_p9))

                    ; #85196: <==negation-removal== 42529 (pos)
                    (not (Bb_not_checked_p9))

                    ; #91772: <==negation-removal== 66804 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))))

)