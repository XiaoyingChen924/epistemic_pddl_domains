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

    (:action comm_p10_a_a_s
        :precondition (and (leader_a)
                           (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #39306: origin
                    (Ba_survivorat_s_p10)

                    ; #71911: <==closure== 39306 (pos)
                    (Pa_survivorat_s_p10)

                    ; #19872: <==negation-removal== 39306 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #90201: <==negation-removal== 71911 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (leader_b)
                           (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #53807: origin
                    (Bb_survivorat_s_p10)

                    ; #60560: <==closure== 53807 (pos)
                    (Pb_survivorat_s_p10)

                    ; #66163: <==negation-removal== 53807 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #71020: <==negation-removal== 60560 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #36272: <==closure== 40884 (pos)
                    (Pc_survivorat_s_p10)

                    ; #40884: origin
                    (Bc_survivorat_s_p10)

                    ; #44055: <==negation-removal== 36272 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #66116: <==negation-removal== 40884 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_a)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #39306: origin
                    (Ba_survivorat_s_p10)

                    ; #71911: <==closure== 39306 (pos)
                    (Pa_survivorat_s_p10)

                    ; #19872: <==negation-removal== 39306 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #90201: <==negation-removal== 71911 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (leader_b)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #53807: origin
                    (Bb_survivorat_s_p10)

                    ; #60560: <==closure== 53807 (pos)
                    (Pb_survivorat_s_p10)

                    ; #66163: <==negation-removal== 53807 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #71020: <==negation-removal== 60560 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_c)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #36272: <==closure== 40884 (pos)
                    (Pc_survivorat_s_p10)

                    ; #40884: origin
                    (Bc_survivorat_s_p10)

                    ; #44055: <==negation-removal== 36272 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #66116: <==negation-removal== 40884 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (leader_a)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #39306: origin
                    (Ba_survivorat_s_p10)

                    ; #71911: <==closure== 39306 (pos)
                    (Pa_survivorat_s_p10)

                    ; #19872: <==negation-removal== 39306 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #90201: <==negation-removal== 71911 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #53807: origin
                    (Bb_survivorat_s_p10)

                    ; #60560: <==closure== 53807 (pos)
                    (Pb_survivorat_s_p10)

                    ; #66163: <==negation-removal== 53807 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #71020: <==negation-removal== 60560 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #36272: <==closure== 40884 (pos)
                    (Pc_survivorat_s_p10)

                    ; #40884: origin
                    (Bc_survivorat_s_p10)

                    ; #44055: <==negation-removal== 36272 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #66116: <==negation-removal== 40884 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #23313: <==closure== 79622 (pos)
                    (Pa_survivorat_s_p11)

                    ; #79622: origin
                    (Ba_survivorat_s_p11)

                    ; #58953: <==negation-removal== 79622 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #71389: <==negation-removal== 23313 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #18695: <==closure== 20266 (pos)
                    (Pb_survivorat_s_p11)

                    ; #20266: origin
                    (Bb_survivorat_s_p11)

                    ; #46460: <==negation-removal== 20266 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #91313: <==negation-removal== 18695 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_c))
        :effect (and
                    ; #33767: <==closure== 38355 (pos)
                    (Pc_survivorat_s_p11)

                    ; #38355: origin
                    (Bc_survivorat_s_p11)

                    ; #60809: <==negation-removal== 33767 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #78366: <==negation-removal== 38355 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #23313: <==closure== 79622 (pos)
                    (Pa_survivorat_s_p11)

                    ; #79622: origin
                    (Ba_survivorat_s_p11)

                    ; #58953: <==negation-removal== 79622 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #71389: <==negation-removal== 23313 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #18695: <==closure== 20266 (pos)
                    (Pb_survivorat_s_p11)

                    ; #20266: origin
                    (Bb_survivorat_s_p11)

                    ; #46460: <==negation-removal== 20266 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #91313: <==negation-removal== 18695 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #33767: <==closure== 38355 (pos)
                    (Pc_survivorat_s_p11)

                    ; #38355: origin
                    (Bc_survivorat_s_p11)

                    ; #60809: <==negation-removal== 33767 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #78366: <==negation-removal== 38355 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (leader_a)
                           (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #23313: <==closure== 79622 (pos)
                    (Pa_survivorat_s_p11)

                    ; #79622: origin
                    (Ba_survivorat_s_p11)

                    ; #58953: <==negation-removal== 79622 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #71389: <==negation-removal== 23313 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (leader_b)
                           (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #18695: <==closure== 20266 (pos)
                    (Pb_survivorat_s_p11)

                    ; #20266: origin
                    (Bb_survivorat_s_p11)

                    ; #46460: <==negation-removal== 20266 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #91313: <==negation-removal== 18695 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_c)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #33767: <==closure== 38355 (pos)
                    (Pc_survivorat_s_p11)

                    ; #38355: origin
                    (Bc_survivorat_s_p11)

                    ; #60809: <==negation-removal== 33767 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #78366: <==negation-removal== 38355 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_a)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #20056: origin
                    (Ba_survivorat_s_p12)

                    ; #62748: <==closure== 20056 (pos)
                    (Pa_survivorat_s_p12)

                    ; #44578: <==negation-removal== 62748 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #65564: <==negation-removal== 20056 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (Pa_survivorat_s_p12)
                           (leader_b)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #64198: origin
                    (Bb_survivorat_s_p12)

                    ; #81175: <==closure== 64198 (pos)
                    (Pb_survivorat_s_p12)

                    ; #19782: <==negation-removal== 64198 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #22978: <==negation-removal== 81175 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (leader_c)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #88488: origin
                    (Bc_survivorat_s_p12)

                    ; #90852: <==closure== 88488 (pos)
                    (Pc_survivorat_s_p12)

                    ; #54138: <==negation-removal== 90852 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #91120: <==negation-removal== 88488 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (leader_a)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #20056: origin
                    (Ba_survivorat_s_p12)

                    ; #62748: <==closure== 20056 (pos)
                    (Pa_survivorat_s_p12)

                    ; #44578: <==negation-removal== 62748 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #65564: <==negation-removal== 20056 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (leader_b)
                           (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #64198: origin
                    (Bb_survivorat_s_p12)

                    ; #81175: <==closure== 64198 (pos)
                    (Pb_survivorat_s_p12)

                    ; #19782: <==negation-removal== 64198 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #22978: <==negation-removal== 81175 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (leader_c)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #88488: origin
                    (Bc_survivorat_s_p12)

                    ; #90852: <==closure== 88488 (pos)
                    (Pc_survivorat_s_p12)

                    ; #54138: <==negation-removal== 90852 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #91120: <==negation-removal== 88488 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #20056: origin
                    (Ba_survivorat_s_p12)

                    ; #62748: <==closure== 20056 (pos)
                    (Pa_survivorat_s_p12)

                    ; #44578: <==negation-removal== 62748 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #65564: <==negation-removal== 20056 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #64198: origin
                    (Bb_survivorat_s_p12)

                    ; #81175: <==closure== 64198 (pos)
                    (Pb_survivorat_s_p12)

                    ; #19782: <==negation-removal== 64198 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #22978: <==negation-removal== 81175 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #88488: origin
                    (Bc_survivorat_s_p12)

                    ; #90852: <==closure== 88488 (pos)
                    (Pc_survivorat_s_p12)

                    ; #54138: <==negation-removal== 90852 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #91120: <==negation-removal== 88488 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (leader_a)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #22371: origin
                    (Ba_survivorat_s_p1)

                    ; #89128: <==closure== 22371 (pos)
                    (Pa_survivorat_s_p1)

                    ; #17010: <==negation-removal== 89128 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #75524: <==negation-removal== 22371 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (leader_b)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #38237: origin
                    (Bb_survivorat_s_p1)

                    ; #82601: <==closure== 38237 (pos)
                    (Pb_survivorat_s_p1)

                    ; #52904: <==negation-removal== 82601 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #89192: <==negation-removal== 38237 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #42779: <==closure== 67007 (pos)
                    (Pc_survivorat_s_p1)

                    ; #67007: origin
                    (Bc_survivorat_s_p1)

                    ; #75533: <==negation-removal== 67007 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85912: <==negation-removal== 42779 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #22371: origin
                    (Ba_survivorat_s_p1)

                    ; #89128: <==closure== 22371 (pos)
                    (Pa_survivorat_s_p1)

                    ; #17010: <==negation-removal== 89128 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #75524: <==negation-removal== 22371 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #38237: origin
                    (Bb_survivorat_s_p1)

                    ; #82601: <==closure== 38237 (pos)
                    (Pb_survivorat_s_p1)

                    ; #52904: <==negation-removal== 82601 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #89192: <==negation-removal== 38237 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #42779: <==closure== 67007 (pos)
                    (Pc_survivorat_s_p1)

                    ; #67007: origin
                    (Bc_survivorat_s_p1)

                    ; #75533: <==negation-removal== 67007 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85912: <==negation-removal== 42779 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (Pc_survivorat_s_p1)
                           (leader_a)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #22371: origin
                    (Ba_survivorat_s_p1)

                    ; #89128: <==closure== 22371 (pos)
                    (Pa_survivorat_s_p1)

                    ; #17010: <==negation-removal== 89128 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #75524: <==negation-removal== 22371 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Pc_survivorat_s_p1)
                           (leader_b)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #38237: origin
                    (Bb_survivorat_s_p1)

                    ; #82601: <==closure== 38237 (pos)
                    (Pb_survivorat_s_p1)

                    ; #52904: <==negation-removal== 82601 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #89192: <==negation-removal== 38237 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_c))
        :effect (and
                    ; #42779: <==closure== 67007 (pos)
                    (Pc_survivorat_s_p1)

                    ; #67007: origin
                    (Bc_survivorat_s_p1)

                    ; #75533: <==negation-removal== 67007 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85912: <==negation-removal== 42779 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #34753: origin
                    (Ba_survivorat_s_p2)

                    ; #37800: <==closure== 34753 (pos)
                    (Pa_survivorat_s_p2)

                    ; #15155: <==negation-removal== 34753 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #85017: <==negation-removal== 37800 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #54168: origin
                    (Bb_survivorat_s_p2)

                    ; #67545: <==closure== 54168 (pos)
                    (Pb_survivorat_s_p2)

                    ; #69994: <==negation-removal== 54168 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #80776: <==negation-removal== 67545 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_c))
        :effect (and
                    ; #11373: <==closure== 49582 (pos)
                    (Pc_survivorat_s_p2)

                    ; #49582: origin
                    (Bc_survivorat_s_p2)

                    ; #14542: <==negation-removal== 49582 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #76565: <==negation-removal== 11373 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (leader_a)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #34753: origin
                    (Ba_survivorat_s_p2)

                    ; #37800: <==closure== 34753 (pos)
                    (Pa_survivorat_s_p2)

                    ; #15155: <==negation-removal== 34753 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #85017: <==negation-removal== 37800 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (leader_b)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #54168: origin
                    (Bb_survivorat_s_p2)

                    ; #67545: <==closure== 54168 (pos)
                    (Pb_survivorat_s_p2)

                    ; #69994: <==negation-removal== 54168 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #80776: <==negation-removal== 67545 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (leader_c)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #11373: <==closure== 49582 (pos)
                    (Pc_survivorat_s_p2)

                    ; #49582: origin
                    (Bc_survivorat_s_p2)

                    ; #14542: <==negation-removal== 49582 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #76565: <==negation-removal== 11373 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #34753: origin
                    (Ba_survivorat_s_p2)

                    ; #37800: <==closure== 34753 (pos)
                    (Pa_survivorat_s_p2)

                    ; #15155: <==negation-removal== 34753 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #85017: <==negation-removal== 37800 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #54168: origin
                    (Bb_survivorat_s_p2)

                    ; #67545: <==closure== 54168 (pos)
                    (Pb_survivorat_s_p2)

                    ; #69994: <==negation-removal== 54168 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #80776: <==negation-removal== 67545 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_c))
        :effect (and
                    ; #11373: <==closure== 49582 (pos)
                    (Pc_survivorat_s_p2)

                    ; #49582: origin
                    (Bc_survivorat_s_p2)

                    ; #14542: <==negation-removal== 49582 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #76565: <==negation-removal== 11373 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #18391: origin
                    (Ba_survivorat_s_p3)

                    ; #64340: <==closure== 18391 (pos)
                    (Pa_survivorat_s_p3)

                    ; #40563: <==negation-removal== 18391 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #49038: <==negation-removal== 64340 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (leader_b)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #31631: <==closure== 52195 (pos)
                    (Pb_survivorat_s_p3)

                    ; #52195: origin
                    (Bb_survivorat_s_p3)

                    ; #56089: <==negation-removal== 31631 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #66801: <==negation-removal== 52195 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #42510: <==closure== 48804 (pos)
                    (Pc_survivorat_s_p3)

                    ; #48804: origin
                    (Bc_survivorat_s_p3)

                    ; #34788: <==negation-removal== 48804 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #61269: <==negation-removal== 42510 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (leader_a)
                           (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #18391: origin
                    (Ba_survivorat_s_p3)

                    ; #64340: <==closure== 18391 (pos)
                    (Pa_survivorat_s_p3)

                    ; #40563: <==negation-removal== 18391 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #49038: <==negation-removal== 64340 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (leader_b)
                           (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #31631: <==closure== 52195 (pos)
                    (Pb_survivorat_s_p3)

                    ; #52195: origin
                    (Bb_survivorat_s_p3)

                    ; #56089: <==negation-removal== 31631 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #66801: <==negation-removal== 52195 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #42510: <==closure== 48804 (pos)
                    (Pc_survivorat_s_p3)

                    ; #48804: origin
                    (Bc_survivorat_s_p3)

                    ; #34788: <==negation-removal== 48804 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #61269: <==negation-removal== 42510 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #18391: origin
                    (Ba_survivorat_s_p3)

                    ; #64340: <==closure== 18391 (pos)
                    (Pa_survivorat_s_p3)

                    ; #40563: <==negation-removal== 18391 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #49038: <==negation-removal== 64340 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #31631: <==closure== 52195 (pos)
                    (Pb_survivorat_s_p3)

                    ; #52195: origin
                    (Bb_survivorat_s_p3)

                    ; #56089: <==negation-removal== 31631 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #66801: <==negation-removal== 52195 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (leader_c)
                           (at_c_p3))
        :effect (and
                    ; #42510: <==closure== 48804 (pos)
                    (Pc_survivorat_s_p3)

                    ; #48804: origin
                    (Bc_survivorat_s_p3)

                    ; #34788: <==negation-removal== 48804 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #61269: <==negation-removal== 42510 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (at_a_p4)
                           (leader_a)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #43370: <==closure== 72865 (pos)
                    (Pa_survivorat_s_p4)

                    ; #72865: origin
                    (Ba_survivorat_s_p4)

                    ; #25736: <==negation-removal== 43370 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #52523: <==negation-removal== 72865 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (leader_b)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #31420: <==closure== 80243 (pos)
                    (Pb_survivorat_s_p4)

                    ; #80243: origin
                    (Bb_survivorat_s_p4)

                    ; #20653: <==negation-removal== 80243 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #59978: <==negation-removal== 31420 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #30164: origin
                    (Bc_survivorat_s_p4)

                    ; #70047: <==closure== 30164 (pos)
                    (Pc_survivorat_s_p4)

                    ; #43278: <==negation-removal== 70047 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #88919: <==negation-removal== 30164 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #43370: <==closure== 72865 (pos)
                    (Pa_survivorat_s_p4)

                    ; #72865: origin
                    (Ba_survivorat_s_p4)

                    ; #25736: <==negation-removal== 43370 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #52523: <==negation-removal== 72865 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #31420: <==closure== 80243 (pos)
                    (Pb_survivorat_s_p4)

                    ; #80243: origin
                    (Bb_survivorat_s_p4)

                    ; #20653: <==negation-removal== 80243 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #59978: <==negation-removal== 31420 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #30164: origin
                    (Bc_survivorat_s_p4)

                    ; #70047: <==closure== 30164 (pos)
                    (Pc_survivorat_s_p4)

                    ; #43278: <==negation-removal== 70047 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #88919: <==negation-removal== 30164 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (leader_a)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #43370: <==closure== 72865 (pos)
                    (Pa_survivorat_s_p4)

                    ; #72865: origin
                    (Ba_survivorat_s_p4)

                    ; #25736: <==negation-removal== 43370 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #52523: <==negation-removal== 72865 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (leader_b)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #31420: <==closure== 80243 (pos)
                    (Pb_survivorat_s_p4)

                    ; #80243: origin
                    (Bb_survivorat_s_p4)

                    ; #20653: <==negation-removal== 80243 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #59978: <==negation-removal== 31420 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (leader_c)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #30164: origin
                    (Bc_survivorat_s_p4)

                    ; #70047: <==closure== 30164 (pos)
                    (Pc_survivorat_s_p4)

                    ; #43278: <==negation-removal== 70047 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #88919: <==negation-removal== 30164 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (at_a_p5)
                           (leader_a)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #13536: origin
                    (Ba_survivorat_s_p5)

                    ; #20937: <==closure== 13536 (pos)
                    (Pa_survivorat_s_p5)

                    ; #15247: <==negation-removal== 20937 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #45571: <==negation-removal== 13536 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (at_a_p5)
                           (leader_b)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #10565: origin
                    (Bb_survivorat_s_p5)

                    ; #80593: <==closure== 10565 (pos)
                    (Pb_survivorat_s_p5)

                    ; #36567: <==negation-removal== 80593 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #54708: <==negation-removal== 10565 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #46494: origin
                    (Bc_survivorat_s_p5)

                    ; #54215: <==closure== 46494 (pos)
                    (Pc_survivorat_s_p5)

                    ; #31474: <==negation-removal== 46494 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #40163: <==negation-removal== 54215 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #13536: origin
                    (Ba_survivorat_s_p5)

                    ; #20937: <==closure== 13536 (pos)
                    (Pa_survivorat_s_p5)

                    ; #15247: <==negation-removal== 20937 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #45571: <==negation-removal== 13536 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #10565: origin
                    (Bb_survivorat_s_p5)

                    ; #80593: <==closure== 10565 (pos)
                    (Pb_survivorat_s_p5)

                    ; #36567: <==negation-removal== 80593 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #54708: <==negation-removal== 10565 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #46494: origin
                    (Bc_survivorat_s_p5)

                    ; #54215: <==closure== 46494 (pos)
                    (Pc_survivorat_s_p5)

                    ; #31474: <==negation-removal== 46494 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #40163: <==negation-removal== 54215 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_a)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #13536: origin
                    (Ba_survivorat_s_p5)

                    ; #20937: <==closure== 13536 (pos)
                    (Pa_survivorat_s_p5)

                    ; #15247: <==negation-removal== 20937 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #45571: <==negation-removal== 13536 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (leader_b)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #10565: origin
                    (Bb_survivorat_s_p5)

                    ; #80593: <==closure== 10565 (pos)
                    (Pb_survivorat_s_p5)

                    ; #36567: <==negation-removal== 80593 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #54708: <==negation-removal== 10565 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #46494: origin
                    (Bc_survivorat_s_p5)

                    ; #54215: <==closure== 46494 (pos)
                    (Pc_survivorat_s_p5)

                    ; #31474: <==negation-removal== 46494 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #40163: <==negation-removal== 54215 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #22300: <==closure== 41067 (pos)
                    (Pa_survivorat_s_p6)

                    ; #41067: origin
                    (Ba_survivorat_s_p6)

                    ; #18520: <==negation-removal== 41067 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #76150: <==negation-removal== 22300 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #14619: <==closure== 16606 (pos)
                    (Pb_survivorat_s_p6)

                    ; #16606: origin
                    (Bb_survivorat_s_p6)

                    ; #14609: <==negation-removal== 16606 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #51108: <==negation-removal== 14619 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_c))
        :effect (and
                    ; #25778: <==closure== 91884 (pos)
                    (Pc_survivorat_s_p6)

                    ; #91884: origin
                    (Bc_survivorat_s_p6)

                    ; #35833: <==negation-removal== 91884 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #86562: <==negation-removal== 25778 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (leader_a)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #22300: <==closure== 41067 (pos)
                    (Pa_survivorat_s_p6)

                    ; #41067: origin
                    (Ba_survivorat_s_p6)

                    ; #18520: <==negation-removal== 41067 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #76150: <==negation-removal== 22300 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (leader_b)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #14619: <==closure== 16606 (pos)
                    (Pb_survivorat_s_p6)

                    ; #16606: origin
                    (Bb_survivorat_s_p6)

                    ; #14609: <==negation-removal== 16606 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #51108: <==negation-removal== 14619 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #25778: <==closure== 91884 (pos)
                    (Pc_survivorat_s_p6)

                    ; #91884: origin
                    (Bc_survivorat_s_p6)

                    ; #35833: <==negation-removal== 91884 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #86562: <==negation-removal== 25778 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_a)
                           (at_c_p6))
        :effect (and
                    ; #22300: <==closure== 41067 (pos)
                    (Pa_survivorat_s_p6)

                    ; #41067: origin
                    (Ba_survivorat_s_p6)

                    ; #18520: <==negation-removal== 41067 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #76150: <==negation-removal== 22300 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_b))
        :effect (and
                    ; #14619: <==closure== 16606 (pos)
                    (Pb_survivorat_s_p6)

                    ; #16606: origin
                    (Bb_survivorat_s_p6)

                    ; #14609: <==negation-removal== 16606 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #51108: <==negation-removal== 14619 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (leader_c))
        :effect (and
                    ; #25778: <==closure== 91884 (pos)
                    (Pc_survivorat_s_p6)

                    ; #91884: origin
                    (Bc_survivorat_s_p6)

                    ; #35833: <==negation-removal== 91884 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #86562: <==negation-removal== 25778 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #16371: <==closure== 54179 (pos)
                    (Pa_survivorat_s_p7)

                    ; #54179: origin
                    (Ba_survivorat_s_p7)

                    ; #12423: <==negation-removal== 16371 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #75685: <==negation-removal== 54179 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #29547: origin
                    (Bb_survivorat_s_p7)

                    ; #57929: <==closure== 29547 (pos)
                    (Pb_survivorat_s_p7)

                    ; #13609: <==negation-removal== 57929 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #39886: <==negation-removal== 29547 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #71429: origin
                    (Bc_survivorat_s_p7)

                    ; #79205: <==closure== 71429 (pos)
                    (Pc_survivorat_s_p7)

                    ; #40166: <==negation-removal== 79205 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #54131: <==negation-removal== 71429 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #16371: <==closure== 54179 (pos)
                    (Pa_survivorat_s_p7)

                    ; #54179: origin
                    (Ba_survivorat_s_p7)

                    ; #12423: <==negation-removal== 16371 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #75685: <==negation-removal== 54179 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #29547: origin
                    (Bb_survivorat_s_p7)

                    ; #57929: <==closure== 29547 (pos)
                    (Pb_survivorat_s_p7)

                    ; #13609: <==negation-removal== 57929 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #39886: <==negation-removal== 29547 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_c)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #71429: origin
                    (Bc_survivorat_s_p7)

                    ; #79205: <==closure== 71429 (pos)
                    (Pc_survivorat_s_p7)

                    ; #40166: <==negation-removal== 79205 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #54131: <==negation-removal== 71429 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #16371: <==closure== 54179 (pos)
                    (Pa_survivorat_s_p7)

                    ; #54179: origin
                    (Ba_survivorat_s_p7)

                    ; #12423: <==negation-removal== 16371 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #75685: <==negation-removal== 54179 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #29547: origin
                    (Bb_survivorat_s_p7)

                    ; #57929: <==closure== 29547 (pos)
                    (Pb_survivorat_s_p7)

                    ; #13609: <==negation-removal== 57929 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #39886: <==negation-removal== 29547 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_c)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #71429: origin
                    (Bc_survivorat_s_p7)

                    ; #79205: <==closure== 71429 (pos)
                    (Pc_survivorat_s_p7)

                    ; #40166: <==negation-removal== 79205 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #54131: <==negation-removal== 71429 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #62108: origin
                    (Ba_survivorat_s_p8)

                    ; #91532: <==closure== 62108 (pos)
                    (Pa_survivorat_s_p8)

                    ; #49177: <==negation-removal== 62108 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69773: <==negation-removal== 91532 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #62655: <==closure== 78341 (pos)
                    (Pb_survivorat_s_p8)

                    ; #78341: origin
                    (Bb_survivorat_s_p8)

                    ; #11151: <==negation-removal== 62655 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #54774: <==negation-removal== 78341 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (leader_c))
        :effect (and
                    ; #65105: <==closure== 89546 (pos)
                    (Pc_survivorat_s_p8)

                    ; #89546: origin
                    (Bc_survivorat_s_p8)

                    ; #36728: <==negation-removal== 89546 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #91116: <==negation-removal== 65105 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_a)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #62108: origin
                    (Ba_survivorat_s_p8)

                    ; #91532: <==closure== 62108 (pos)
                    (Pa_survivorat_s_p8)

                    ; #49177: <==negation-removal== 62108 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69773: <==negation-removal== 91532 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_b)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #62655: <==closure== 78341 (pos)
                    (Pb_survivorat_s_p8)

                    ; #78341: origin
                    (Bb_survivorat_s_p8)

                    ; #11151: <==negation-removal== 62655 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #54774: <==negation-removal== 78341 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #65105: <==closure== 89546 (pos)
                    (Pc_survivorat_s_p8)

                    ; #89546: origin
                    (Bc_survivorat_s_p8)

                    ; #36728: <==negation-removal== 89546 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #91116: <==negation-removal== 65105 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_a)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #62108: origin
                    (Ba_survivorat_s_p8)

                    ; #91532: <==closure== 62108 (pos)
                    (Pa_survivorat_s_p8)

                    ; #49177: <==negation-removal== 62108 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69773: <==negation-removal== 91532 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #62655: <==closure== 78341 (pos)
                    (Pb_survivorat_s_p8)

                    ; #78341: origin
                    (Bb_survivorat_s_p8)

                    ; #11151: <==negation-removal== 62655 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #54774: <==negation-removal== 78341 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_c)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #65105: <==closure== 89546 (pos)
                    (Pc_survivorat_s_p8)

                    ; #89546: origin
                    (Bc_survivorat_s_p8)

                    ; #36728: <==negation-removal== 89546 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #91116: <==negation-removal== 65105 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_a)
                           (at_a_p9))
        :effect (and
                    ; #76192: <==closure== 81828 (pos)
                    (Pa_survivorat_s_p9)

                    ; #81828: origin
                    (Ba_survivorat_s_p9)

                    ; #33911: <==negation-removal== 81828 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #60921: <==negation-removal== 76192 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Ba_survivorat_s_p9)
                           (leader_b)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #52276: <==closure== 62983 (pos)
                    (Pb_survivorat_s_p9)

                    ; #62983: origin
                    (Bb_survivorat_s_p9)

                    ; #64672: <==negation-removal== 52276 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #92045: <==negation-removal== 62983 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c)
                           (at_a_p9))
        :effect (and
                    ; #11254: origin
                    (Bc_survivorat_s_p9)

                    ; #26157: <==closure== 11254 (pos)
                    (Pc_survivorat_s_p9)

                    ; #72917: <==negation-removal== 11254 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #87623: <==negation-removal== 26157 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #76192: <==closure== 81828 (pos)
                    (Pa_survivorat_s_p9)

                    ; #81828: origin
                    (Ba_survivorat_s_p9)

                    ; #33911: <==negation-removal== 81828 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #60921: <==negation-removal== 76192 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #52276: <==closure== 62983 (pos)
                    (Pb_survivorat_s_p9)

                    ; #62983: origin
                    (Bb_survivorat_s_p9)

                    ; #64672: <==negation-removal== 52276 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #92045: <==negation-removal== 62983 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #11254: origin
                    (Bc_survivorat_s_p9)

                    ; #26157: <==closure== 11254 (pos)
                    (Pc_survivorat_s_p9)

                    ; #72917: <==negation-removal== 11254 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #87623: <==negation-removal== 26157 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #76192: <==closure== 81828 (pos)
                    (Pa_survivorat_s_p9)

                    ; #81828: origin
                    (Ba_survivorat_s_p9)

                    ; #33911: <==negation-removal== 81828 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #60921: <==negation-removal== 76192 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #52276: <==closure== 62983 (pos)
                    (Pb_survivorat_s_p9)

                    ; #62983: origin
                    (Bb_survivorat_s_p9)

                    ; #64672: <==negation-removal== 52276 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #92045: <==negation-removal== 62983 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_c)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #11254: origin
                    (Bc_survivorat_s_p9)

                    ; #26157: <==closure== 11254 (pos)
                    (Pc_survivorat_s_p9)

                    ; #72917: <==negation-removal== 11254 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #87623: <==negation-removal== 26157 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11)
                           (not (leader_a)))
        :effect (and
                    ; #43525: origin
                    (at_a_p11)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12)
                           (not (leader_a)))
        :effect (and
                    ; #35857: origin
                    (at_a_p12)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2)
                           (not (leader_a)))
        :effect (and
                    ; #29020: origin
                    (at_a_p2)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3)
                           (not (leader_a)))
        :effect (and
                    ; #82831: origin
                    (not_at_a_p10)

                    ; #86070: origin
                    (at_a_p3)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #46681: origin
                    (at_a_p4)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6)
                           (not (leader_a)))
        :effect (and
                    ; #80996: origin
                    (at_a_p6)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7)
                           (not (leader_a)))
        :effect (and
                    ; #62976: origin
                    (at_a_p7)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8)
                           (not (leader_a)))
        :effect (and
                    ; #45488: origin
                    (at_a_p8)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #68970: origin
                    (at_a_p9)

                    ; #82831: origin
                    (not_at_a_p10)

                    ; #16215: <==negation-removal== 82831 (pos)
                    (not (at_a_p10))

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #43525: origin
                    (at_a_p11)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #35857: origin
                    (at_a_p12)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #29020: origin
                    (at_a_p2)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #82213: origin
                    (not_at_a_p11)

                    ; #86070: origin
                    (at_a_p3)

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4)
                           (not (leader_a)))
        :effect (and
                    ; #46681: origin
                    (at_a_p4)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #80996: origin
                    (at_a_p6)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7)
                           (not (leader_a)))
        :effect (and
                    ; #62976: origin
                    (at_a_p7)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #45488: origin
                    (at_a_p8)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9)
                           (not (leader_a)))
        :effect (and
                    ; #68970: origin
                    (at_a_p9)

                    ; #82213: origin
                    (not_at_a_p11)

                    ; #43525: <==negation-removal== 82213 (pos)
                    (not (at_a_p11))

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #38197: origin
                    (not_at_a_p12)

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #38197: origin
                    (not_at_a_p12)

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11)
                           (not (leader_a)))
        :effect (and
                    ; #38197: origin
                    (not_at_a_p12)

                    ; #43525: origin
                    (at_a_p11)

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12)
                           (not (leader_a)))
        :effect (and
                    ; #35857: origin
                    (at_a_p12)

                    ; #38197: origin
                    (not_at_a_p12)

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #29020: origin
                    (at_a_p2)

                    ; #38197: origin
                    (not_at_a_p12)

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #38197: origin
                    (not_at_a_p12)

                    ; #86070: origin
                    (at_a_p3)

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4)
                           (not (leader_a)))
        :effect (and
                    ; #38197: origin
                    (not_at_a_p12)

                    ; #46681: origin
                    (at_a_p4)

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #38197: origin
                    (not_at_a_p12)

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #38197: origin
                    (not_at_a_p12)

                    ; #80996: origin
                    (at_a_p6)

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7)
                           (not (leader_a)))
        :effect (and
                    ; #38197: origin
                    (not_at_a_p12)

                    ; #62976: origin
                    (at_a_p7)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #38197: origin
                    (not_at_a_p12)

                    ; #45488: origin
                    (at_a_p8)

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9)
                           (not (leader_a)))
        :effect (and
                    ; #38197: origin
                    (not_at_a_p12)

                    ; #68970: origin
                    (at_a_p9)

                    ; #35857: <==negation-removal== 38197 (pos)
                    (not (at_a_p12))

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #41339: origin
                    (not_at_a_p1)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #41339: origin
                    (not_at_a_p1)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #41339: origin
                    (not_at_a_p1)

                    ; #43525: origin
                    (at_a_p11)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #35857: origin
                    (at_a_p12)

                    ; #41339: origin
                    (not_at_a_p1)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #29020: origin
                    (at_a_p2)

                    ; #41339: origin
                    (not_at_a_p1)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #41339: origin
                    (not_at_a_p1)

                    ; #86070: origin
                    (at_a_p3)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #41339: origin
                    (not_at_a_p1)

                    ; #46681: origin
                    (at_a_p4)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #41339: origin
                    (not_at_a_p1)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #41339: origin
                    (not_at_a_p1)

                    ; #80996: origin
                    (at_a_p6)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #41339: origin
                    (not_at_a_p1)

                    ; #62976: origin
                    (at_a_p7)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41339: origin
                    (not_at_a_p1)

                    ; #45488: origin
                    (at_a_p8)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #41339: origin
                    (not_at_a_p1)

                    ; #68970: origin
                    (at_a_p9)

                    ; #13776: <==negation-removal== 41339 (pos)
                    (not (at_a_p1))

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #28847: origin
                    (not_at_a_p2)

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #28847: origin
                    (not_at_a_p2)

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #28847: origin
                    (not_at_a_p2)

                    ; #43525: origin
                    (at_a_p11)

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #28847: origin
                    (not_at_a_p2)

                    ; #35857: origin
                    (at_a_p12)

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #28847: origin
                    (not_at_a_p2)

                    ; #29020: origin
                    (at_a_p2)

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #28847: origin
                    (not_at_a_p2)

                    ; #86070: origin
                    (at_a_p3)

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #28847: origin
                    (not_at_a_p2)

                    ; #46681: origin
                    (at_a_p4)

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #28847: origin
                    (not_at_a_p2)

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #28847: origin
                    (not_at_a_p2)

                    ; #80996: origin
                    (at_a_p6)

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #28847: origin
                    (not_at_a_p2)

                    ; #62976: origin
                    (at_a_p7)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #28847: origin
                    (not_at_a_p2)

                    ; #45488: origin
                    (at_a_p8)

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #28847: origin
                    (not_at_a_p2)

                    ; #68970: origin
                    (at_a_p9)

                    ; #29020: <==negation-removal== 28847 (pos)
                    (not (at_a_p2))

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #47207: origin
                    (not_at_a_p3)

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #47207: origin
                    (not_at_a_p3)

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #43525: origin
                    (at_a_p11)

                    ; #47207: origin
                    (not_at_a_p3)

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #35857: origin
                    (at_a_p12)

                    ; #47207: origin
                    (not_at_a_p3)

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #29020: origin
                    (at_a_p2)

                    ; #47207: origin
                    (not_at_a_p3)

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #47207: origin
                    (not_at_a_p3)

                    ; #86070: origin
                    (at_a_p3)

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #46681: origin
                    (at_a_p4)

                    ; #47207: origin
                    (not_at_a_p3)

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #47207: origin
                    (not_at_a_p3)

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #47207: origin
                    (not_at_a_p3)

                    ; #80996: origin
                    (at_a_p6)

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #47207: origin
                    (not_at_a_p3)

                    ; #62976: origin
                    (at_a_p7)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #45488: origin
                    (at_a_p8)

                    ; #47207: origin
                    (not_at_a_p3)

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #47207: origin
                    (not_at_a_p3)

                    ; #68970: origin
                    (at_a_p9)

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))

                    ; #86070: <==negation-removal== 47207 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11)
                           (not (leader_a)))
        :effect (and
                    ; #43525: origin
                    (at_a_p11)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12)
                           (not (leader_a)))
        :effect (and
                    ; #35857: origin
                    (at_a_p12)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #29020: origin
                    (at_a_p2)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #82136: origin
                    (not_at_a_p4)

                    ; #86070: origin
                    (at_a_p3)

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4)
                           (not (leader_a)))
        :effect (and
                    ; #46681: origin
                    (at_a_p4)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #80996: origin
                    (at_a_p6)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #62976: origin
                    (at_a_p7)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #45488: origin
                    (at_a_p8)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #68970: origin
                    (at_a_p9)

                    ; #82136: origin
                    (not_at_a_p4)

                    ; #46681: <==negation-removal== 82136 (pos)
                    (not (at_a_p4))

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #56068: origin
                    (not_at_a_p5)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #56068: origin
                    (not_at_a_p5)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11)
                           (not (leader_a)))
        :effect (and
                    ; #43525: origin
                    (at_a_p11)

                    ; #56068: origin
                    (not_at_a_p5)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12)
                           (not (leader_a)))
        :effect (and
                    ; #35857: origin
                    (at_a_p12)

                    ; #56068: origin
                    (not_at_a_p5)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #29020: origin
                    (at_a_p2)

                    ; #56068: origin
                    (not_at_a_p5)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #56068: origin
                    (not_at_a_p5)

                    ; #86070: origin
                    (at_a_p3)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4)
                           (not (leader_a)))
        :effect (and
                    ; #46681: origin
                    (at_a_p4)

                    ; #56068: origin
                    (not_at_a_p5)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #56068: origin
                    (not_at_a_p5)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #56068: origin
                    (not_at_a_p5)

                    ; #80996: origin
                    (at_a_p6)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7)
                           (not (leader_a)))
        :effect (and
                    ; #56068: origin
                    (not_at_a_p5)

                    ; #62976: origin
                    (at_a_p7)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #45488: origin
                    (at_a_p8)

                    ; #56068: origin
                    (not_at_a_p5)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #56068: origin
                    (not_at_a_p5)

                    ; #68970: origin
                    (at_a_p9)

                    ; #12456: <==negation-removal== 56068 (pos)
                    (not (at_a_p5))

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #75816: origin
                    (not_at_a_p6)

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #75816: origin
                    (not_at_a_p6)

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #43525: origin
                    (at_a_p11)

                    ; #75816: origin
                    (not_at_a_p6)

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12)
                           (not (leader_a)))
        :effect (and
                    ; #35857: origin
                    (at_a_p12)

                    ; #75816: origin
                    (not_at_a_p6)

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #29020: origin
                    (at_a_p2)

                    ; #75816: origin
                    (not_at_a_p6)

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #75816: origin
                    (not_at_a_p6)

                    ; #86070: origin
                    (at_a_p3)

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #46681: origin
                    (at_a_p4)

                    ; #75816: origin
                    (not_at_a_p6)

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #75816: origin
                    (not_at_a_p6)

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #75816: origin
                    (not_at_a_p6)

                    ; #80996: origin
                    (at_a_p6)

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #62976: origin
                    (at_a_p7)

                    ; #75816: origin
                    (not_at_a_p6)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #45488: origin
                    (at_a_p8)

                    ; #75816: origin
                    (not_at_a_p6)

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9)
                           (not (leader_a)))
        :effect (and
                    ; #68970: origin
                    (at_a_p9)

                    ; #75816: origin
                    (not_at_a_p6)

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))

                    ; #80996: <==negation-removal== 75816 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #13776: origin
                    (at_a_p1)

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #16215: origin
                    (at_a_p10)

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #43525: origin
                    (at_a_p11)

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #35857: origin
                    (at_a_p12)

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #29020: origin
                    (at_a_p2)

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #86070: origin
                    (at_a_p3)

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #46681: origin
                    (at_a_p4)

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #12456: origin
                    (at_a_p5)

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #80996: origin
                    (at_a_p6)

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #62976: origin
                    (at_a_p7)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #45488: origin
                    (at_a_p8)

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12393: origin
                    (not_at_a_p7)

                    ; #68970: origin
                    (at_a_p9)

                    ; #62976: <==negation-removal== 12393 (pos)
                    (not (at_a_p7))

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #43525: origin
                    (at_a_p11)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #35857: origin
                    (at_a_p12)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #29020: origin
                    (at_a_p2)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #86070: origin
                    (at_a_p3)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #46681: origin
                    (at_a_p4)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #80996: origin
                    (at_a_p6)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #62976: origin
                    (at_a_p7)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #45488: origin
                    (at_a_p8)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #68970: origin
                    (at_a_p9)

                    ; #90752: origin
                    (not_at_a_p8)

                    ; #45488: <==negation-removal== 90752 (pos)
                    (not (at_a_p8))

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #13776: origin
                    (at_a_p1)

                    ; #75824: origin
                    (not_at_a_p9)

                    ; #41339: <==negation-removal== 13776 (pos)
                    (not (not_at_a_p1))

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #16215: origin
                    (at_a_p10)

                    ; #75824: origin
                    (not_at_a_p9)

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))

                    ; #82831: <==negation-removal== 16215 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #43525: origin
                    (at_a_p11)

                    ; #75824: origin
                    (not_at_a_p9)

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))

                    ; #82213: <==negation-removal== 43525 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #35857: origin
                    (at_a_p12)

                    ; #75824: origin
                    (not_at_a_p9)

                    ; #38197: <==negation-removal== 35857 (pos)
                    (not (not_at_a_p12))

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #29020: origin
                    (at_a_p2)

                    ; #75824: origin
                    (not_at_a_p9)

                    ; #28847: <==negation-removal== 29020 (pos)
                    (not (not_at_a_p2))

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #75824: origin
                    (not_at_a_p9)

                    ; #86070: origin
                    (at_a_p3)

                    ; #47207: <==negation-removal== 86070 (pos)
                    (not (not_at_a_p3))

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #46681: origin
                    (at_a_p4)

                    ; #75824: origin
                    (not_at_a_p9)

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))

                    ; #82136: <==negation-removal== 46681 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12456: origin
                    (at_a_p5)

                    ; #75824: origin
                    (not_at_a_p9)

                    ; #56068: <==negation-removal== 12456 (pos)
                    (not (not_at_a_p5))

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #75824: origin
                    (not_at_a_p9)

                    ; #80996: origin
                    (at_a_p6)

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))

                    ; #75816: <==negation-removal== 80996 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #62976: origin
                    (at_a_p7)

                    ; #75824: origin
                    (not_at_a_p9)

                    ; #12393: <==negation-removal== 62976 (pos)
                    (not (not_at_a_p7))

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #45488: origin
                    (at_a_p8)

                    ; #75824: origin
                    (not_at_a_p9)

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))

                    ; #90752: <==negation-removal== 45488 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #68970: origin
                    (at_a_p9)

                    ; #75824: origin
                    (not_at_a_p9)

                    ; #68970: <==negation-removal== 75824 (pos)
                    (not (at_a_p9))

                    ; #75824: <==negation-removal== 68970 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #58484: origin
                    (not_at_b_p10)

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10)
                           (not (leader_b)))
        :effect (and
                    ; #58484: origin
                    (not_at_b_p10)

                    ; #85343: origin
                    (at_b_p10)

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11)
                           (not (leader_b)))
        :effect (and
                    ; #44735: origin
                    (at_b_p11)

                    ; #58484: origin
                    (not_at_b_p10)

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #58484: origin
                    (not_at_b_p10)

                    ; #76327: origin
                    (at_b_p12)

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #58484: origin
                    (not_at_b_p10)

                    ; #90696: origin
                    (at_b_p2)

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3)
                           (not (leader_b)))
        :effect (and
                    ; #58484: origin
                    (not_at_b_p10)

                    ; #81347: origin
                    (at_b_p3)

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #58484: origin
                    (not_at_b_p10)

                    ; #78896: origin
                    (at_b_p4)

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5)
                           (not (leader_b)))
        :effect (and
                    ; #58484: origin
                    (not_at_b_p10)

                    ; #73962: origin
                    (at_b_p5)

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #58484: origin
                    (not_at_b_p10)

                    ; #70710: origin
                    (at_b_p6)

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7)
                           (not (leader_b)))
        :effect (and
                    ; #58484: origin
                    (not_at_b_p10)

                    ; #84456: origin
                    (at_b_p7)

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #58484: origin
                    (not_at_b_p10)

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #58484: origin
                    (not_at_b_p10)

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))

                    ; #85343: <==negation-removal== 58484 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #28736: origin
                    (not_at_b_p11)

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p11)

                    ; #85343: origin
                    (at_b_p10)

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11)
                           (not (leader_b)))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p11)

                    ; #44735: origin
                    (at_b_p11)

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p11)

                    ; #76327: origin
                    (at_b_p12)

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2)
                           (not (leader_b)))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p11)

                    ; #90696: origin
                    (at_b_p2)

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3)
                           (not (leader_b)))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p11)

                    ; #81347: origin
                    (at_b_p3)

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4)
                           (not (leader_b)))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p11)

                    ; #78896: origin
                    (at_b_p4)

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5)
                           (not (leader_b)))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p11)

                    ; #73962: origin
                    (at_b_p5)

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p11)

                    ; #70710: origin
                    (at_b_p6)

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7)
                           (not (leader_b)))
        :effect (and
                    ; #28736: origin
                    (not_at_b_p11)

                    ; #84456: origin
                    (at_b_p7)

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #28736: origin
                    (not_at_b_p11)

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #28736: origin
                    (not_at_b_p11)

                    ; #44735: <==negation-removal== 28736 (pos)
                    (not (at_b_p11))

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #85343: origin
                    (at_b_p10)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #44735: origin
                    (at_b_p11)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #76327: origin
                    (at_b_p12)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #90183: origin
                    (not_at_b_p12)

                    ; #90696: origin
                    (at_b_p2)

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #81347: origin
                    (at_b_p3)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4)
                           (not (leader_b)))
        :effect (and
                    ; #78896: origin
                    (at_b_p4)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5)
                           (not (leader_b)))
        :effect (and
                    ; #73962: origin
                    (at_b_p5)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #70710: origin
                    (at_b_p6)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7)
                           (not (leader_b)))
        :effect (and
                    ; #84456: origin
                    (at_b_p7)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #90183: origin
                    (not_at_b_p12)

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))

                    ; #76327: <==negation-removal== 90183 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #82090: origin
                    (not_at_b_p1)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #82090: origin
                    (not_at_b_p1)

                    ; #85343: origin
                    (at_b_p10)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #44735: origin
                    (at_b_p11)

                    ; #82090: origin
                    (not_at_b_p1)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #76327: origin
                    (at_b_p12)

                    ; #82090: origin
                    (not_at_b_p1)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #82090: origin
                    (not_at_b_p1)

                    ; #90696: origin
                    (at_b_p2)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #81347: origin
                    (at_b_p3)

                    ; #82090: origin
                    (not_at_b_p1)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #78896: origin
                    (at_b_p4)

                    ; #82090: origin
                    (not_at_b_p1)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #73962: origin
                    (at_b_p5)

                    ; #82090: origin
                    (not_at_b_p1)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #70710: origin
                    (at_b_p6)

                    ; #82090: origin
                    (not_at_b_p1)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #82090: origin
                    (not_at_b_p1)

                    ; #84456: origin
                    (at_b_p7)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #82090: origin
                    (not_at_b_p1)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #82090: origin
                    (not_at_b_p1)

                    ; #14818: <==negation-removal== 82090 (pos)
                    (not (at_b_p1))

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #75552: origin
                    (not_at_b_p2)

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10)
                           (not (leader_b)))
        :effect (and
                    ; #75552: origin
                    (not_at_b_p2)

                    ; #85343: origin
                    (at_b_p10)

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11)
                           (not (leader_b)))
        :effect (and
                    ; #44735: origin
                    (at_b_p11)

                    ; #75552: origin
                    (not_at_b_p2)

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #75552: origin
                    (not_at_b_p2)

                    ; #76327: origin
                    (at_b_p12)

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #75552: origin
                    (not_at_b_p2)

                    ; #90696: origin
                    (at_b_p2)

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #75552: origin
                    (not_at_b_p2)

                    ; #81347: origin
                    (at_b_p3)

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #75552: origin
                    (not_at_b_p2)

                    ; #78896: origin
                    (at_b_p4)

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #73962: origin
                    (at_b_p5)

                    ; #75552: origin
                    (not_at_b_p2)

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6)
                           (not (leader_b)))
        :effect (and
                    ; #70710: origin
                    (at_b_p6)

                    ; #75552: origin
                    (not_at_b_p2)

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #75552: origin
                    (not_at_b_p2)

                    ; #84456: origin
                    (at_b_p7)

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #75552: origin
                    (not_at_b_p2)

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #75552: origin
                    (not_at_b_p2)

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))

                    ; #90696: <==negation-removal== 75552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #53073: origin
                    (not_at_b_p3)

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #53073: origin
                    (not_at_b_p3)

                    ; #85343: origin
                    (at_b_p10)

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11)
                           (not (leader_b)))
        :effect (and
                    ; #44735: origin
                    (at_b_p11)

                    ; #53073: origin
                    (not_at_b_p3)

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #53073: origin
                    (not_at_b_p3)

                    ; #76327: origin
                    (at_b_p12)

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #53073: origin
                    (not_at_b_p3)

                    ; #90696: origin
                    (at_b_p2)

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #53073: origin
                    (not_at_b_p3)

                    ; #81347: origin
                    (at_b_p3)

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #53073: origin
                    (not_at_b_p3)

                    ; #78896: origin
                    (at_b_p4)

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #53073: origin
                    (not_at_b_p3)

                    ; #73962: origin
                    (at_b_p5)

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #53073: origin
                    (not_at_b_p3)

                    ; #70710: origin
                    (at_b_p6)

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #53073: origin
                    (not_at_b_p3)

                    ; #84456: origin
                    (at_b_p7)

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #53073: origin
                    (not_at_b_p3)

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #53073: origin
                    (not_at_b_p3)

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))

                    ; #81347: <==negation-removal== 53073 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #73516: origin
                    (not_at_b_p4)

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10)
                           (not (leader_b)))
        :effect (and
                    ; #73516: origin
                    (not_at_b_p4)

                    ; #85343: origin
                    (at_b_p10)

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #44735: origin
                    (at_b_p11)

                    ; #73516: origin
                    (not_at_b_p4)

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12)
                           (not (leader_b)))
        :effect (and
                    ; #73516: origin
                    (not_at_b_p4)

                    ; #76327: origin
                    (at_b_p12)

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #73516: origin
                    (not_at_b_p4)

                    ; #90696: origin
                    (at_b_p2)

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #73516: origin
                    (not_at_b_p4)

                    ; #81347: origin
                    (at_b_p3)

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #73516: origin
                    (not_at_b_p4)

                    ; #78896: origin
                    (at_b_p4)

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #73516: origin
                    (not_at_b_p4)

                    ; #73962: origin
                    (at_b_p5)

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #70710: origin
                    (at_b_p6)

                    ; #73516: origin
                    (not_at_b_p4)

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #73516: origin
                    (not_at_b_p4)

                    ; #84456: origin
                    (at_b_p7)

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #73516: origin
                    (not_at_b_p4)

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #73516: origin
                    (not_at_b_p4)

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))

                    ; #78896: <==negation-removal== 73516 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #40764: origin
                    (not_at_b_p5)

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #40764: origin
                    (not_at_b_p5)

                    ; #85343: origin
                    (at_b_p10)

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11)
                           (not (leader_b)))
        :effect (and
                    ; #40764: origin
                    (not_at_b_p5)

                    ; #44735: origin
                    (at_b_p11)

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12)
                           (not (leader_b)))
        :effect (and
                    ; #40764: origin
                    (not_at_b_p5)

                    ; #76327: origin
                    (at_b_p12)

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #40764: origin
                    (not_at_b_p5)

                    ; #90696: origin
                    (at_b_p2)

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #40764: origin
                    (not_at_b_p5)

                    ; #81347: origin
                    (at_b_p3)

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #40764: origin
                    (not_at_b_p5)

                    ; #78896: origin
                    (at_b_p4)

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #40764: origin
                    (not_at_b_p5)

                    ; #73962: origin
                    (at_b_p5)

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #40764: origin
                    (not_at_b_p5)

                    ; #70710: origin
                    (at_b_p6)

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #40764: origin
                    (not_at_b_p5)

                    ; #84456: origin
                    (at_b_p7)

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #40764: origin
                    (not_at_b_p5)

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #40764: origin
                    (not_at_b_p5)

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))

                    ; #73962: <==negation-removal== 40764 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #25089: origin
                    (not_at_b_p6)

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10)
                           (not (leader_b)))
        :effect (and
                    ; #25089: origin
                    (not_at_b_p6)

                    ; #85343: origin
                    (at_b_p10)

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11)
                           (not (leader_b)))
        :effect (and
                    ; #25089: origin
                    (not_at_b_p6)

                    ; #44735: origin
                    (at_b_p11)

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25089: origin
                    (not_at_b_p6)

                    ; #76327: origin
                    (at_b_p12)

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #25089: origin
                    (not_at_b_p6)

                    ; #90696: origin
                    (at_b_p2)

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #25089: origin
                    (not_at_b_p6)

                    ; #81347: origin
                    (at_b_p3)

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25089: origin
                    (not_at_b_p6)

                    ; #78896: origin
                    (at_b_p4)

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25089: origin
                    (not_at_b_p6)

                    ; #73962: origin
                    (at_b_p5)

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #25089: origin
                    (not_at_b_p6)

                    ; #70710: origin
                    (at_b_p6)

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25089: origin
                    (not_at_b_p6)

                    ; #84456: origin
                    (at_b_p7)

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #25089: origin
                    (not_at_b_p6)

                    ; #26026: origin
                    (at_b_p8)

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #25089: origin
                    (not_at_b_p6)

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))

                    ; #70710: <==negation-removal== 25089 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #38745: origin
                    (not_at_b_p7)

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38745: origin
                    (not_at_b_p7)

                    ; #85343: origin
                    (at_b_p10)

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11)
                           (not (leader_b)))
        :effect (and
                    ; #38745: origin
                    (not_at_b_p7)

                    ; #44735: origin
                    (at_b_p11)

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38745: origin
                    (not_at_b_p7)

                    ; #76327: origin
                    (at_b_p12)

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38745: origin
                    (not_at_b_p7)

                    ; #90696: origin
                    (at_b_p2)

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38745: origin
                    (not_at_b_p7)

                    ; #81347: origin
                    (at_b_p3)

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38745: origin
                    (not_at_b_p7)

                    ; #78896: origin
                    (at_b_p4)

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38745: origin
                    (not_at_b_p7)

                    ; #73962: origin
                    (at_b_p5)

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38745: origin
                    (not_at_b_p7)

                    ; #70710: origin
                    (at_b_p6)

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38745: origin
                    (not_at_b_p7)

                    ; #84456: origin
                    (at_b_p7)

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #38745: origin
                    (not_at_b_p7)

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #38745: origin
                    (not_at_b_p7)

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))

                    ; #84456: <==negation-removal== 38745 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #55048: origin
                    (not_at_b_p8)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10)
                           (not (leader_b)))
        :effect (and
                    ; #55048: origin
                    (not_at_b_p8)

                    ; #85343: origin
                    (at_b_p10)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11)
                           (not (leader_b)))
        :effect (and
                    ; #44735: origin
                    (at_b_p11)

                    ; #55048: origin
                    (not_at_b_p8)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12)
                           (not (leader_b)))
        :effect (and
                    ; #55048: origin
                    (not_at_b_p8)

                    ; #76327: origin
                    (at_b_p12)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2)
                           (not (leader_b)))
        :effect (and
                    ; #55048: origin
                    (not_at_b_p8)

                    ; #90696: origin
                    (at_b_p2)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #55048: origin
                    (not_at_b_p8)

                    ; #81347: origin
                    (at_b_p3)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #55048: origin
                    (not_at_b_p8)

                    ; #78896: origin
                    (at_b_p4)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #55048: origin
                    (not_at_b_p8)

                    ; #73962: origin
                    (at_b_p5)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6)
                           (not (leader_b)))
        :effect (and
                    ; #55048: origin
                    (not_at_b_p8)

                    ; #70710: origin
                    (at_b_p6)

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #55048: origin
                    (not_at_b_p8)

                    ; #84456: origin
                    (at_b_p7)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #55048: origin
                    (not_at_b_p8)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #55048: origin
                    (not_at_b_p8)

                    ; #26026: <==negation-removal== 55048 (pos)
                    (not (at_b_p8))

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #14818: origin
                    (at_b_p1)

                    ; #48961: origin
                    (not_at_b_p9)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #82090: <==negation-removal== 14818 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48961: origin
                    (not_at_b_p9)

                    ; #85343: origin
                    (at_b_p10)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #58484: <==negation-removal== 85343 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #44735: origin
                    (at_b_p11)

                    ; #48961: origin
                    (not_at_b_p9)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #28736: <==negation-removal== 44735 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48961: origin
                    (not_at_b_p9)

                    ; #76327: origin
                    (at_b_p12)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #90183: <==negation-removal== 76327 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48961: origin
                    (not_at_b_p9)

                    ; #90696: origin
                    (at_b_p2)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #75552: <==negation-removal== 90696 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48961: origin
                    (not_at_b_p9)

                    ; #81347: origin
                    (at_b_p3)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #53073: <==negation-removal== 81347 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48961: origin
                    (not_at_b_p9)

                    ; #78896: origin
                    (at_b_p4)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #73516: <==negation-removal== 78896 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48961: origin
                    (not_at_b_p9)

                    ; #73962: origin
                    (at_b_p5)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #40764: <==negation-removal== 73962 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48961: origin
                    (not_at_b_p9)

                    ; #70710: origin
                    (at_b_p6)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #25089: <==negation-removal== 70710 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48961: origin
                    (not_at_b_p9)

                    ; #84456: origin
                    (at_b_p7)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #38745: <==negation-removal== 84456 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #26026: origin
                    (at_b_p8)

                    ; #48961: origin
                    (not_at_b_p9)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #55048: <==negation-removal== 26026 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #13497: origin
                    (at_b_p9)

                    ; #48961: origin
                    (not_at_b_p9)

                    ; #13497: <==negation-removal== 48961 (pos)
                    (not (at_b_p9))

                    ; #48961: <==negation-removal== 13497 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #66740: origin
                    (not_at_c_p10)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #66740: origin
                    (not_at_c_p10)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #66740: origin
                    (not_at_c_p10)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #66740: origin
                    (not_at_c_p10)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #66740: origin
                    (not_at_c_p10)

                    ; #80410: origin
                    (at_c_p2)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3)
                           (not (leader_c)))
        :effect (and
                    ; #57554: origin
                    (at_c_p3)

                    ; #66740: origin
                    (not_at_c_p10)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4)
                           (not (leader_c)))
        :effect (and
                    ; #65095: origin
                    (at_c_p4)

                    ; #66740: origin
                    (not_at_c_p10)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45133: origin
                    (at_c_p5)

                    ; #66740: origin
                    (not_at_c_p10)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6)
                           (not (leader_c)))
        :effect (and
                    ; #66740: origin
                    (not_at_c_p10)

                    ; #69462: origin
                    (at_c_p6)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50947: origin
                    (at_c_p7)

                    ; #66740: origin
                    (not_at_c_p10)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #66740: origin
                    (not_at_c_p10)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #66740: origin
                    (not_at_c_p10)

                    ; #29581: <==negation-removal== 66740 (pos)
                    (not (at_c_p10))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2)
                           (not (leader_c)))
        :effect (and
                    ; #74554: origin
                    (not_at_c_p11)

                    ; #80410: origin
                    (at_c_p2)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3)
                           (not (leader_c)))
        :effect (and
                    ; #57554: origin
                    (at_c_p3)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4)
                           (not (leader_c)))
        :effect (and
                    ; #65095: origin
                    (at_c_p4)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45133: origin
                    (at_c_p5)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #69462: origin
                    (at_c_p6)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50947: origin
                    (at_c_p7)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #74554: origin
                    (not_at_c_p11)

                    ; #21540: <==negation-removal== 74554 (pos)
                    (not (at_c_p11))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #46444: origin
                    (not_at_c_p12)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #46444: origin
                    (not_at_c_p12)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #46444: origin
                    (not_at_c_p12)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #46444: origin
                    (not_at_c_p12)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #46444: origin
                    (not_at_c_p12)

                    ; #80410: origin
                    (at_c_p2)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #46444: origin
                    (not_at_c_p12)

                    ; #57554: origin
                    (at_c_p3)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4)
                           (not (leader_c)))
        :effect (and
                    ; #46444: origin
                    (not_at_c_p12)

                    ; #65095: origin
                    (at_c_p4)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45133: origin
                    (at_c_p5)

                    ; #46444: origin
                    (not_at_c_p12)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6)
                           (not (leader_c)))
        :effect (and
                    ; #46444: origin
                    (not_at_c_p12)

                    ; #69462: origin
                    (at_c_p6)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7)
                           (not (leader_c)))
        :effect (and
                    ; #46444: origin
                    (not_at_c_p12)

                    ; #50947: origin
                    (at_c_p7)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #46444: origin
                    (not_at_c_p12)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #46444: origin
                    (not_at_c_p12)

                    ; #30609: <==negation-removal== 46444 (pos)
                    (not (at_c_p12))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #80410: origin
                    (at_c_p2)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #57554: origin
                    (at_c_p3)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #65095: origin
                    (at_c_p4)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #45133: origin
                    (at_c_p5)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6)
                           (not (leader_c)))
        :effect (and
                    ; #69462: origin
                    (at_c_p6)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #50947: origin
                    (at_c_p7)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #88919: origin
                    (not_at_c_p1)

                    ; #14386: <==negation-removal== 88919 (pos)
                    (not (at_c_p1))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #80410: origin
                    (at_c_p2)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #57554: origin
                    (at_c_p3)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #65095: origin
                    (at_c_p4)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #45133: origin
                    (at_c_p5)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #69462: origin
                    (at_c_p6)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #50947: origin
                    (at_c_p7)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #83238: origin
                    (not_at_c_p2)

                    ; #80410: <==negation-removal== 83238 (pos)
                    (not (at_c_p2))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #72075: origin
                    (not_at_c_p3)

                    ; #80410: origin
                    (at_c_p2)

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #57554: origin
                    (at_c_p3)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #65095: origin
                    (at_c_p4)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #45133: origin
                    (at_c_p5)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #69462: origin
                    (at_c_p6)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #50947: origin
                    (at_c_p7)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #72075: origin
                    (not_at_c_p3)

                    ; #57554: <==negation-removal== 72075 (pos)
                    (not (at_c_p3))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #66873: origin
                    (not_at_c_p4)

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #66873: origin
                    (not_at_c_p4)

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #66873: origin
                    (not_at_c_p4)

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #66873: origin
                    (not_at_c_p4)

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #66873: origin
                    (not_at_c_p4)

                    ; #80410: origin
                    (at_c_p2)

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #57554: origin
                    (at_c_p3)

                    ; #66873: origin
                    (not_at_c_p4)

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #65095: origin
                    (at_c_p4)

                    ; #66873: origin
                    (not_at_c_p4)

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #45133: origin
                    (at_c_p5)

                    ; #66873: origin
                    (not_at_c_p4)

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #66873: origin
                    (not_at_c_p4)

                    ; #69462: origin
                    (at_c_p6)

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #50947: origin
                    (at_c_p7)

                    ; #66873: origin
                    (not_at_c_p4)

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #66873: origin
                    (not_at_c_p4)

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #66873: origin
                    (not_at_c_p4)

                    ; #65095: <==negation-removal== 66873 (pos)
                    (not (at_c_p4))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #35920: origin
                    (not_at_c_p5)

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #35920: origin
                    (not_at_c_p5)

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #35920: origin
                    (not_at_c_p5)

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #35920: origin
                    (not_at_c_p5)

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #35920: origin
                    (not_at_c_p5)

                    ; #80410: origin
                    (at_c_p2)

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #35920: origin
                    (not_at_c_p5)

                    ; #57554: origin
                    (at_c_p3)

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #35920: origin
                    (not_at_c_p5)

                    ; #65095: origin
                    (at_c_p4)

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #35920: origin
                    (not_at_c_p5)

                    ; #45133: origin
                    (at_c_p5)

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #35920: origin
                    (not_at_c_p5)

                    ; #69462: origin
                    (at_c_p6)

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #35920: origin
                    (not_at_c_p5)

                    ; #50947: origin
                    (at_c_p7)

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #35920: origin
                    (not_at_c_p5)

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #35920: origin
                    (not_at_c_p5)

                    ; #45133: <==negation-removal== 35920 (pos)
                    (not (at_c_p5))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #44533: origin
                    (not_at_c_p6)

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #44533: origin
                    (not_at_c_p6)

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #44533: origin
                    (not_at_c_p6)

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #44533: origin
                    (not_at_c_p6)

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #44533: origin
                    (not_at_c_p6)

                    ; #80410: origin
                    (at_c_p2)

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #44533: origin
                    (not_at_c_p6)

                    ; #57554: origin
                    (at_c_p3)

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #44533: origin
                    (not_at_c_p6)

                    ; #65095: origin
                    (at_c_p4)

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #44533: origin
                    (not_at_c_p6)

                    ; #45133: origin
                    (at_c_p5)

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #44533: origin
                    (not_at_c_p6)

                    ; #69462: origin
                    (at_c_p6)

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #44533: origin
                    (not_at_c_p6)

                    ; #50947: origin
                    (at_c_p7)

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #44533: origin
                    (not_at_c_p6)

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #44533: origin
                    (not_at_c_p6)

                    ; #69462: <==negation-removal== 44533 (pos)
                    (not (at_c_p6))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #79854: origin
                    (not_at_c_p7)

                    ; #80410: origin
                    (at_c_p2)

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #57554: origin
                    (at_c_p3)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #65095: origin
                    (at_c_p4)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #45133: origin
                    (at_c_p5)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6)
                           (not (leader_c)))
        :effect (and
                    ; #69462: origin
                    (at_c_p6)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50947: origin
                    (at_c_p7)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #79854: origin
                    (not_at_c_p7)

                    ; #50947: <==negation-removal== 79854 (pos)
                    (not (at_c_p7))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #59161: origin
                    (not_at_c_p8)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #59161: origin
                    (not_at_c_p8)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #59161: origin
                    (not_at_c_p8)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #59161: origin
                    (not_at_c_p8)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #59161: origin
                    (not_at_c_p8)

                    ; #80410: origin
                    (at_c_p2)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #57554: origin
                    (at_c_p3)

                    ; #59161: origin
                    (not_at_c_p8)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #59161: origin
                    (not_at_c_p8)

                    ; #65095: origin
                    (at_c_p4)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45133: origin
                    (at_c_p5)

                    ; #59161: origin
                    (not_at_c_p8)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #59161: origin
                    (not_at_c_p8)

                    ; #69462: origin
                    (at_c_p6)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50947: origin
                    (at_c_p7)

                    ; #59161: origin
                    (not_at_c_p8)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #59161: origin
                    (not_at_c_p8)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #59161: origin
                    (not_at_c_p8)

                    ; #10890: <==negation-removal== 59161 (pos)
                    (not (at_c_p8))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #14386: origin
                    (at_c_p1)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #88919: <==negation-removal== 14386 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #29581: origin
                    (at_c_p10)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #66740: <==negation-removal== 29581 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21540: origin
                    (at_c_p11)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #74554: <==negation-removal== 21540 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #30609: origin
                    (at_c_p12)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #46444: <==negation-removal== 30609 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #80410: origin
                    (at_c_p2)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #83238: <==negation-removal== 80410 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #57554: origin
                    (at_c_p3)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #72075: <==negation-removal== 57554 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #65095: origin
                    (at_c_p4)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #66873: <==negation-removal== 65095 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #45133: origin
                    (at_c_p5)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #35920: <==negation-removal== 45133 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #69462: origin
                    (at_c_p6)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #44533: <==negation-removal== 69462 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #50947: origin
                    (at_c_p7)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #79854: <==negation-removal== 50947 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #10890: origin
                    (at_c_p8)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #59161: <==negation-removal== 10890 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #15017: origin
                    (at_c_p9)

                    ; #88929: origin
                    (not_at_c_p9)

                    ; #15017: <==negation-removal== 88929 (pos)
                    (not (at_c_p9))

                    ; #88929: <==negation-removal== 15017 (pos)
                    (not (not_at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13659: <==commonly_known== 49593 (pos)
                    (Bc_checked_p10)

                    ; #15690: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #16721: <==closure== 23230 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #18539: <==commonly_known== 49593 (pos)
                    (Bb_checked_p10)

                    ; #23230: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #49593: origin
                    (checked_p10)

                    ; #57656: <==closure== 13659 (pos)
                    (Pc_checked_p10)

                    ; #66116: <==closure== 77825 (pos)
                    (Pa_checked_p10)

                    ; #68669: <==closure== 18539 (pos)
                    (Pb_checked_p10)

                    ; #77825: <==commonly_known== 49593 (pos)
                    (Ba_checked_p10)

                    ; #85603: <==closure== 15690 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #23929: <==negation-removal== 85603 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #34908: <==negation-removal== 18539 (pos)
                    (not (Pb_not_checked_p10))

                    ; #44646: <==negation-removal== 57656 (pos)
                    (not (Bc_not_checked_p10))

                    ; #45101: <==uncertain_firing== 15690 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #52922: <==negation-removal== 49593 (pos)
                    (not (not_checked_p10))

                    ; #57514: <==negation-removal== 13659 (pos)
                    (not (Pc_not_checked_p10))

                    ; #58784: <==negation-removal== 15690 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #61325: <==negation-removal== 68669 (pos)
                    (not (Bb_not_checked_p10))

                    ; #71903: <==unclosure== 45101 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #73822: <==negation-removal== 16721 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #76450: <==unclosure== 84391 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #80166: <==negation-removal== 23230 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #80384: <==negation-removal== 66116 (pos)
                    (not (Ba_not_checked_p10))

                    ; #84391: <==uncertain_firing== 23230 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #86236: <==negation-removal== 77825 (pos)
                    (not (Pa_not_checked_p10))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #14316: <==closure== 66096 (pos)
                    (Pc_checked_p11)

                    ; #23755: <==closure== 81323 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #25058: origin
                    (checked_p11)

                    ; #25525: <==closure== 77818 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #30038: <==commonly_known== 25058 (pos)
                    (Ba_checked_p11)

                    ; #38604: <==closure== 55044 (pos)
                    (Pb_checked_p11)

                    ; #39848: <==closure== 30038 (pos)
                    (Pa_checked_p11)

                    ; #55044: <==commonly_known== 25058 (pos)
                    (Bb_checked_p11)

                    ; #66096: <==commonly_known== 25058 (pos)
                    (Bc_checked_p11)

                    ; #77818: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #81323: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #12673: <==negation-removal== 38604 (pos)
                    (not (Bb_not_checked_p11))

                    ; #13289: <==negation-removal== 23755 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #23185: <==negation-removal== 77818 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #24585: <==negation-removal== 66096 (pos)
                    (not (Pc_not_checked_p11))

                    ; #36062: <==negation-removal== 81323 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #36204: <==uncertain_firing== 77818 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #51511: <==unclosure== 59006 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #58344: <==negation-removal== 39848 (pos)
                    (not (Ba_not_checked_p11))

                    ; #59006: <==uncertain_firing== 81323 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #71572: <==negation-removal== 30038 (pos)
                    (not (Pa_not_checked_p11))

                    ; #73176: <==negation-removal== 25525 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #73314: <==negation-removal== 55044 (pos)
                    (not (Pb_not_checked_p11))

                    ; #76965: <==negation-removal== 14316 (pos)
                    (not (Bc_not_checked_p11))

                    ; #90867: <==negation-removal== 25058 (pos)
                    (not (not_checked_p11))

                    ; #91261: <==unclosure== 36204 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13622: <==closure== 20753 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #15863: <==commonly_known== 67818 (pos)
                    (Bc_checked_p12)

                    ; #19384: <==commonly_known== 67818 (pos)
                    (Bb_checked_p12)

                    ; #20753: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #24394: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #36599: <==commonly_known== 67818 (pos)
                    (Ba_checked_p12)

                    ; #39009: <==closure== 24394 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #45040: <==closure== 36599 (pos)
                    (Pa_checked_p12)

                    ; #67036: <==closure== 19384 (pos)
                    (Pb_checked_p12)

                    ; #67818: origin
                    (checked_p12)

                    ; #75209: <==closure== 15863 (pos)
                    (Pc_checked_p12)

                    ; #11814: <==negation-removal== 75209 (pos)
                    (not (Bc_not_checked_p12))

                    ; #24200: <==negation-removal== 24394 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #25515: <==uncertain_firing== 24394 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #30359: <==negation-removal== 13622 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #32769: <==negation-removal== 20753 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #48198: <==uncertain_firing== 20753 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #55301: <==negation-removal== 67818 (pos)
                    (not (not_checked_p12))

                    ; #57725: <==negation-removal== 45040 (pos)
                    (not (Ba_not_checked_p12))

                    ; #64535: <==negation-removal== 19384 (pos)
                    (not (Pb_not_checked_p12))

                    ; #65397: <==unclosure== 48198 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #68528: <==unclosure== 25515 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #81275: <==negation-removal== 39009 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #84883: <==negation-removal== 15863 (pos)
                    (not (Pc_not_checked_p12))

                    ; #85784: <==negation-removal== 36599 (pos)
                    (not (Pa_not_checked_p12))

                    ; #86764: <==negation-removal== 67036 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12781: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #13031: <==closure== 83343 (pos)
                    (Pc_checked_p1)

                    ; #15430: origin
                    (checked_p1)

                    ; #18670: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #29549: <==commonly_known== 15430 (pos)
                    (Ba_checked_p1)

                    ; #30364: <==closure== 29549 (pos)
                    (Pa_checked_p1)

                    ; #41870: <==closure== 87135 (pos)
                    (Pb_checked_p1)

                    ; #45110: <==closure== 12781 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #71945: <==closure== 18670 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #83343: <==commonly_known== 15430 (pos)
                    (Bc_checked_p1)

                    ; #87135: <==commonly_known== 15430 (pos)
                    (Bb_checked_p1)

                    ; #15545: <==uncertain_firing== 12781 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #26420: <==negation-removal== 18670 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #36890: <==negation-removal== 45110 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #46230: <==negation-removal== 13031 (pos)
                    (not (Bc_not_checked_p1))

                    ; #49165: <==negation-removal== 12781 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #52859: <==negation-removal== 30364 (pos)
                    (not (Ba_not_checked_p1))

                    ; #53858: <==negation-removal== 71945 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #57442: <==negation-removal== 87135 (pos)
                    (not (Pb_not_checked_p1))

                    ; #64340: <==negation-removal== 41870 (pos)
                    (not (Bb_not_checked_p1))

                    ; #67613: <==unclosure== 71101 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #67895: <==negation-removal== 29549 (pos)
                    (not (Pa_not_checked_p1))

                    ; #71101: <==uncertain_firing== 18670 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #71124: <==negation-removal== 83343 (pos)
                    (not (Pc_not_checked_p1))

                    ; #76269: <==unclosure== 15545 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #83413: <==negation-removal== 15430 (pos)
                    (not (not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #10010: <==closure== 78275 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #22970: <==closure== 55266 (pos)
                    (Pb_checked_p2)

                    ; #33144: <==closure== 38695 (pos)
                    (Pa_checked_p2)

                    ; #38695: <==commonly_known== 63738 (pos)
                    (Ba_checked_p2)

                    ; #44924: <==closure== 73766 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #46358: <==closure== 74209 (pos)
                    (Pc_checked_p2)

                    ; #55266: <==commonly_known== 63738 (pos)
                    (Bb_checked_p2)

                    ; #63738: origin
                    (checked_p2)

                    ; #73766: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #74209: <==commonly_known== 63738 (pos)
                    (Bc_checked_p2)

                    ; #78275: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #12481: <==negation-removal== 38695 (pos)
                    (not (Pa_not_checked_p2))

                    ; #12564: <==negation-removal== 73766 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #12998: <==negation-removal== 74209 (pos)
                    (not (Pc_not_checked_p2))

                    ; #28025: <==unclosure== 70283 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #33226: <==negation-removal== 22970 (pos)
                    (not (Bb_not_checked_p2))

                    ; #38464: <==uncertain_firing== 73766 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #41067: <==negation-removal== 55266 (pos)
                    (not (Pb_not_checked_p2))

                    ; #61117: <==negation-removal== 78275 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #61722: <==negation-removal== 63738 (pos)
                    (not (not_checked_p2))

                    ; #61924: <==negation-removal== 10010 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #70283: <==uncertain_firing== 78275 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #80848: <==negation-removal== 46358 (pos)
                    (not (Bc_not_checked_p2))

                    ; #87268: <==unclosure== 38464 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #87820: <==negation-removal== 33144 (pos)
                    (not (Ba_not_checked_p2))

                    ; #90255: <==negation-removal== 44924 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #19883: <==commonly_known== 47888 (pos)
                    (Bc_checked_p3)

                    ; #22269: <==closure== 38225 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #26313: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #33060: <==commonly_known== 47888 (pos)
                    (Bb_checked_p3)

                    ; #38225: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #47888: origin
                    (checked_p3)

                    ; #68128: <==closure== 33060 (pos)
                    (Pb_checked_p3)

                    ; #72783: <==commonly_known== 47888 (pos)
                    (Ba_checked_p3)

                    ; #82904: <==closure== 19883 (pos)
                    (Pc_checked_p3)

                    ; #89786: <==closure== 72783 (pos)
                    (Pa_checked_p3)

                    ; #91931: <==closure== 26313 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #10190: <==uncertain_firing== 38225 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #12072: <==negation-removal== 82904 (pos)
                    (not (Bc_not_checked_p3))

                    ; #15904: <==unclosure== 10190 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #21084: <==negation-removal== 91931 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #22523: <==negation-removal== 89786 (pos)
                    (not (Ba_not_checked_p3))

                    ; #34818: <==negation-removal== 33060 (pos)
                    (not (Pb_not_checked_p3))

                    ; #37771: <==negation-removal== 68128 (pos)
                    (not (Bb_not_checked_p3))

                    ; #50711: <==negation-removal== 26313 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #61019: <==unclosure== 71240 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #69057: <==negation-removal== 72783 (pos)
                    (not (Pa_not_checked_p3))

                    ; #71240: <==uncertain_firing== 26313 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #74683: <==negation-removal== 47888 (pos)
                    (not (not_checked_p3))

                    ; #80710: <==negation-removal== 19883 (pos)
                    (not (Pc_not_checked_p3))

                    ; #88793: <==negation-removal== 22269 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #92558: <==negation-removal== 38225 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #19961: <==closure== 86594 (pos)
                    (Pa_checked_p4)

                    ; #30588: origin
                    (checked_p4)

                    ; #33249: <==closure== 83861 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #40750: <==closure== 55422 (pos)
                    (Pc_checked_p4)

                    ; #45682: <==commonly_known== 30588 (pos)
                    (Bb_checked_p4)

                    ; #46779: <==closure== 45682 (pos)
                    (Pb_checked_p4)

                    ; #55422: <==commonly_known== 30588 (pos)
                    (Bc_checked_p4)

                    ; #58238: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #73459: <==closure== 58238 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #83861: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #86594: <==commonly_known== 30588 (pos)
                    (Ba_checked_p4)

                    ; #20579: <==uncertain_firing== 83861 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #22395: <==negation-removal== 46779 (pos)
                    (not (Bb_not_checked_p4))

                    ; #23644: <==uncertain_firing== 58238 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #23733: <==negation-removal== 86594 (pos)
                    (not (Pa_not_checked_p4))

                    ; #31697: <==negation-removal== 58238 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #40683: <==unclosure== 23644 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #45727: <==negation-removal== 40750 (pos)
                    (not (Bc_not_checked_p4))

                    ; #47208: <==negation-removal== 73459 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #49222: <==negation-removal== 33249 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #54853: <==negation-removal== 19961 (pos)
                    (not (Ba_not_checked_p4))

                    ; #72444: <==negation-removal== 30588 (pos)
                    (not (not_checked_p4))

                    ; #73433: <==negation-removal== 55422 (pos)
                    (not (Pc_not_checked_p4))

                    ; #84757: <==negation-removal== 83861 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #85974: <==negation-removal== 45682 (pos)
                    (not (Pb_not_checked_p4))

                    ; #85992: <==unclosure== 20579 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #13653: <==closure== 56183 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #16741: origin
                    (checked_p5)

                    ; #22743: <==commonly_known== 16741 (pos)
                    (Ba_checked_p5)

                    ; #26970: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #31183: <==commonly_known== 16741 (pos)
                    (Bb_checked_p5)

                    ; #48944: <==commonly_known== 16741 (pos)
                    (Bc_checked_p5)

                    ; #56183: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #59055: <==closure== 31183 (pos)
                    (Pb_checked_p5)

                    ; #78473: <==closure== 26970 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #83358: <==closure== 48944 (pos)
                    (Pc_checked_p5)

                    ; #85571: <==closure== 22743 (pos)
                    (Pa_checked_p5)

                    ; #11729: <==negation-removal== 59055 (pos)
                    (not (Bb_not_checked_p5))

                    ; #21117: <==unclosure== 49033 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #23473: <==negation-removal== 26970 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #31877: <==negation-removal== 83358 (pos)
                    (not (Bc_not_checked_p5))

                    ; #34698: <==negation-removal== 56183 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #41714: <==uncertain_firing== 26970 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #49033: <==uncertain_firing== 56183 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #52500: <==negation-removal== 16741 (pos)
                    (not (not_checked_p5))

                    ; #55709: <==negation-removal== 22743 (pos)
                    (not (Pa_not_checked_p5))

                    ; #56980: <==negation-removal== 13653 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #60766: <==unclosure== 41714 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #73120: <==negation-removal== 48944 (pos)
                    (not (Pc_not_checked_p5))

                    ; #84643: <==negation-removal== 31183 (pos)
                    (not (Pb_not_checked_p5))

                    ; #87258: <==negation-removal== 78473 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #89847: <==negation-removal== 85571 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #10975: <==commonly_known== 91456 (pos)
                    (Ba_checked_p6)

                    ; #15282: <==closure== 17751 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #16105: <==commonly_known== 91456 (pos)
                    (Bc_checked_p6)

                    ; #17751: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #32009: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #41724: <==closure== 16105 (pos)
                    (Pc_checked_p6)

                    ; #48969: <==closure== 32009 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #74416: <==commonly_known== 91456 (pos)
                    (Bb_checked_p6)

                    ; #78250: <==closure== 10975 (pos)
                    (Pa_checked_p6)

                    ; #91083: <==closure== 74416 (pos)
                    (Pb_checked_p6)

                    ; #91456: origin
                    (checked_p6)

                    ; #21169: <==negation-removal== 17751 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #27054: <==unclosure== 91848 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #33836: <==negation-removal== 15282 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #34750: <==negation-removal== 10975 (pos)
                    (not (Pa_not_checked_p6))

                    ; #35578: <==negation-removal== 32009 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #39874: <==negation-removal== 91083 (pos)
                    (not (Bb_not_checked_p6))

                    ; #39980: <==negation-removal== 48969 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #43287: <==negation-removal== 91456 (pos)
                    (not (not_checked_p6))

                    ; #43616: <==negation-removal== 41724 (pos)
                    (not (Bc_not_checked_p6))

                    ; #52903: <==negation-removal== 78250 (pos)
                    (not (Ba_not_checked_p6))

                    ; #56058: <==uncertain_firing== 32009 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #72630: <==unclosure== 56058 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #78707: <==negation-removal== 74416 (pos)
                    (not (Pb_not_checked_p6))

                    ; #83025: <==negation-removal== 16105 (pos)
                    (not (Pc_not_checked_p6))

                    ; #91848: <==uncertain_firing== 17751 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10928: <==commonly_known== 79061 (pos)
                    (Bc_checked_p7)

                    ; #17280: <==closure== 75736 (pos)
                    (Pa_checked_p7)

                    ; #33831: <==commonly_known== 79061 (pos)
                    (Bb_checked_p7)

                    ; #37428: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #39187: <==closure== 33831 (pos)
                    (Pb_checked_p7)

                    ; #47310: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #58352: <==closure== 47310 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #75736: <==commonly_known== 79061 (pos)
                    (Ba_checked_p7)

                    ; #79021: <==closure== 37428 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #79061: origin
                    (checked_p7)

                    ; #88511: <==closure== 10928 (pos)
                    (Pc_checked_p7)

                    ; #12533: <==unclosure== 53506 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #28988: <==negation-removal== 10928 (pos)
                    (not (Pc_not_checked_p7))

                    ; #29178: <==negation-removal== 79021 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #39749: <==negation-removal== 79061 (pos)
                    (not (not_checked_p7))

                    ; #43661: <==negation-removal== 88511 (pos)
                    (not (Bc_not_checked_p7))

                    ; #47570: <==negation-removal== 17280 (pos)
                    (not (Ba_not_checked_p7))

                    ; #49977: <==negation-removal== 75736 (pos)
                    (not (Pa_not_checked_p7))

                    ; #53306: <==negation-removal== 33831 (pos)
                    (not (Pb_not_checked_p7))

                    ; #53506: <==uncertain_firing== 47310 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #54886: <==negation-removal== 37428 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #67959: <==negation-removal== 47310 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #69423: <==unclosure== 73055 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #73055: <==uncertain_firing== 37428 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #83264: <==negation-removal== 58352 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #89327: <==negation-removal== 39187 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #14101: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #15846: <==commonly_known== 25333 (pos)
                    (Bc_checked_p8)

                    ; #16358: <==closure== 24515 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #17584: <==closure== 73751 (pos)
                    (Pa_checked_p8)

                    ; #24515: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #25333: origin
                    (checked_p8)

                    ; #26256: <==closure== 88991 (pos)
                    (Pb_checked_p8)

                    ; #42341: <==closure== 14101 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #73751: <==commonly_known== 25333 (pos)
                    (Ba_checked_p8)

                    ; #81499: <==closure== 15846 (pos)
                    (Pc_checked_p8)

                    ; #88991: <==commonly_known== 25333 (pos)
                    (Bb_checked_p8)

                    ; #13542: <==negation-removal== 14101 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #39883: <==uncertain_firing== 14101 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #41518: <==negation-removal== 17584 (pos)
                    (not (Ba_not_checked_p8))

                    ; #43669: <==negation-removal== 15846 (pos)
                    (not (Pc_not_checked_p8))

                    ; #48514: <==negation-removal== 73751 (pos)
                    (not (Pa_not_checked_p8))

                    ; #49033: <==negation-removal== 42341 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #51923: <==negation-removal== 88991 (pos)
                    (not (Pb_not_checked_p8))

                    ; #51933: <==unclosure== 39883 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #52918: <==uncertain_firing== 24515 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #53403: <==negation-removal== 26256 (pos)
                    (not (Bb_not_checked_p8))

                    ; #56461: <==negation-removal== 25333 (pos)
                    (not (not_checked_p8))

                    ; #81106: <==negation-removal== 81499 (pos)
                    (not (Bc_not_checked_p8))

                    ; #82447: <==negation-removal== 24515 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #83825: <==unclosure== 52918 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #86943: <==negation-removal== 16358 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12459: <==commonly_known== 52206 (pos)
                    (Bc_checked_p9)

                    ; #18438: <==closure== 39141 (pos)
                    (Pa_checked_p9)

                    ; #26671: <==closure== 43593 (pos)
                    (Pb_checked_p9)

                    ; #37008: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #39141: <==commonly_known== 52206 (pos)
                    (Ba_checked_p9)

                    ; #43593: <==commonly_known== 52206 (pos)
                    (Bb_checked_p9)

                    ; #44774: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #52159: <==closure== 37008 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #52206: origin
                    (checked_p9)

                    ; #58652: <==closure== 44774 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #70826: <==closure== 12459 (pos)
                    (Pc_checked_p9)

                    ; #10202: <==negation-removal== 39141 (pos)
                    (not (Pa_not_checked_p9))

                    ; #11170: <==negation-removal== 70826 (pos)
                    (not (Bc_not_checked_p9))

                    ; #20762: <==negation-removal== 12459 (pos)
                    (not (Pc_not_checked_p9))

                    ; #20808: <==negation-removal== 44774 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #34687: <==unclosure== 42023 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #42023: <==uncertain_firing== 37008 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #44950: <==negation-removal== 18438 (pos)
                    (not (Ba_not_checked_p9))

                    ; #50703: <==negation-removal== 52159 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #59028: <==negation-removal== 26671 (pos)
                    (not (Bb_not_checked_p9))

                    ; #59890: <==unclosure== 67599 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #63283: <==negation-removal== 43593 (pos)
                    (not (Pb_not_checked_p9))

                    ; #66408: <==negation-removal== 52206 (pos)
                    (not (not_checked_p9))

                    ; #67599: <==uncertain_firing== 44774 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #72898: <==negation-removal== 58652 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #79516: <==negation-removal== 37008 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #13659: <==commonly_known== 49593 (pos)
                    (Bc_checked_p10)

                    ; #18539: <==commonly_known== 49593 (pos)
                    (Bb_checked_p10)

                    ; #28724: <==closure== 94641 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #49593: origin
                    (checked_p10)

                    ; #52474: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #57656: <==closure== 13659 (pos)
                    (Pc_checked_p10)

                    ; #66116: <==closure== 77825 (pos)
                    (Pa_checked_p10)

                    ; #68669: <==closure== 18539 (pos)
                    (Pb_checked_p10)

                    ; #77825: <==commonly_known== 49593 (pos)
                    (Ba_checked_p10)

                    ; #85244: <==closure== 52474 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #94641: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #13193: <==negation-removal== 85244 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #16777: <==uncertain_firing== 52474 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #21445: <==negation-removal== 52474 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #34908: <==negation-removal== 18539 (pos)
                    (not (Pb_not_checked_p10))

                    ; #44646: <==negation-removal== 57656 (pos)
                    (not (Bc_not_checked_p10))

                    ; #52922: <==negation-removal== 49593 (pos)
                    (not (not_checked_p10))

                    ; #54216: <==unclosure== 16777 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #57514: <==negation-removal== 13659 (pos)
                    (not (Pc_not_checked_p10))

                    ; #61325: <==negation-removal== 68669 (pos)
                    (not (Bb_not_checked_p10))

                    ; #73482: <==unclosure== 82468 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #76159: <==negation-removal== 28724 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #80384: <==negation-removal== 66116 (pos)
                    (not (Ba_not_checked_p10))

                    ; #82468: <==uncertain_firing== 94641 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #84368: <==negation-removal== 94641 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #86236: <==negation-removal== 77825 (pos)
                    (not (Pa_not_checked_p10))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14316: <==closure== 66096 (pos)
                    (Pc_checked_p11)

                    ; #19130: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #20193: <==closure== 86120 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #25058: origin
                    (checked_p11)

                    ; #30038: <==commonly_known== 25058 (pos)
                    (Ba_checked_p11)

                    ; #38604: <==closure== 55044 (pos)
                    (Pb_checked_p11)

                    ; #39848: <==closure== 30038 (pos)
                    (Pa_checked_p11)

                    ; #55016: <==closure== 19130 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #55044: <==commonly_known== 25058 (pos)
                    (Bb_checked_p11)

                    ; #66096: <==commonly_known== 25058 (pos)
                    (Bc_checked_p11)

                    ; #86120: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #12673: <==negation-removal== 38604 (pos)
                    (not (Bb_not_checked_p11))

                    ; #24585: <==negation-removal== 66096 (pos)
                    (not (Pc_not_checked_p11))

                    ; #26331: <==unclosure== 66494 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #36096: <==negation-removal== 55016 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #53028: <==negation-removal== 19130 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #56520: <==negation-removal== 20193 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #57292: <==uncertain_firing== 19130 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #57705: <==unclosure== 57292 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #58344: <==negation-removal== 39848 (pos)
                    (not (Ba_not_checked_p11))

                    ; #64712: <==negation-removal== 86120 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #66494: <==uncertain_firing== 86120 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #71572: <==negation-removal== 30038 (pos)
                    (not (Pa_not_checked_p11))

                    ; #73314: <==negation-removal== 55044 (pos)
                    (not (Pb_not_checked_p11))

                    ; #76965: <==negation-removal== 14316 (pos)
                    (not (Bc_not_checked_p11))

                    ; #90867: <==negation-removal== 25058 (pos)
                    (not (not_checked_p11))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #15863: <==commonly_known== 67818 (pos)
                    (Bc_checked_p12)

                    ; #19384: <==commonly_known== 67818 (pos)
                    (Bb_checked_p12)

                    ; #22987: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #36599: <==commonly_known== 67818 (pos)
                    (Ba_checked_p12)

                    ; #45040: <==closure== 36599 (pos)
                    (Pa_checked_p12)

                    ; #50974: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #67036: <==closure== 19384 (pos)
                    (Pb_checked_p12)

                    ; #67818: origin
                    (checked_p12)

                    ; #75209: <==closure== 15863 (pos)
                    (Pc_checked_p12)

                    ; #76964: <==closure== 22987 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #88041: <==closure== 50974 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #11247: <==unclosure== 46182 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #11814: <==negation-removal== 75209 (pos)
                    (not (Bc_not_checked_p12))

                    ; #12233: <==uncertain_firing== 50974 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #25834: <==negation-removal== 76964 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #46182: <==uncertain_firing== 22987 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #55301: <==negation-removal== 67818 (pos)
                    (not (not_checked_p12))

                    ; #57725: <==negation-removal== 45040 (pos)
                    (not (Ba_not_checked_p12))

                    ; #64535: <==negation-removal== 19384 (pos)
                    (not (Pb_not_checked_p12))

                    ; #68925: <==negation-removal== 50974 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #74480: <==negation-removal== 22987 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #82393: <==negation-removal== 88041 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #84883: <==negation-removal== 15863 (pos)
                    (not (Pc_not_checked_p12))

                    ; #85784: <==negation-removal== 36599 (pos)
                    (not (Pa_not_checked_p12))

                    ; #86764: <==negation-removal== 67036 (pos)
                    (not (Bb_not_checked_p12))

                    ; #87924: <==unclosure== 12233 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13031: <==closure== 83343 (pos)
                    (Pc_checked_p1)

                    ; #15430: origin
                    (checked_p1)

                    ; #29549: <==commonly_known== 15430 (pos)
                    (Ba_checked_p1)

                    ; #30348: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #30364: <==closure== 29549 (pos)
                    (Pa_checked_p1)

                    ; #41870: <==closure== 87135 (pos)
                    (Pb_checked_p1)

                    ; #77239: <==closure== 30348 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #81803: <==closure== 93009 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #83343: <==commonly_known== 15430 (pos)
                    (Bc_checked_p1)

                    ; #87135: <==commonly_known== 15430 (pos)
                    (Bb_checked_p1)

                    ; #93009: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #11540: <==unclosure== 66136 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #46230: <==negation-removal== 13031 (pos)
                    (not (Bc_not_checked_p1))

                    ; #49039: <==negation-removal== 30348 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #52859: <==negation-removal== 30364 (pos)
                    (not (Ba_not_checked_p1))

                    ; #57442: <==negation-removal== 87135 (pos)
                    (not (Pb_not_checked_p1))

                    ; #57878: <==negation-removal== 93009 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #58455: <==uncertain_firing== 30348 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #64340: <==negation-removal== 41870 (pos)
                    (not (Bb_not_checked_p1))

                    ; #66136: <==uncertain_firing== 93009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #67895: <==negation-removal== 29549 (pos)
                    (not (Pa_not_checked_p1))

                    ; #69080: <==negation-removal== 81803 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #71124: <==negation-removal== 83343 (pos)
                    (not (Pc_not_checked_p1))

                    ; #73617: <==unclosure== 58455 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #74139: <==negation-removal== 77239 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #83413: <==negation-removal== 15430 (pos)
                    (not (not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #10783: <==closure== 26164 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #22970: <==closure== 55266 (pos)
                    (Pb_checked_p2)

                    ; #26164: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #33144: <==closure== 38695 (pos)
                    (Pa_checked_p2)

                    ; #38695: <==commonly_known== 63738 (pos)
                    (Ba_checked_p2)

                    ; #39254: <==closure== 64042 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #46358: <==closure== 74209 (pos)
                    (Pc_checked_p2)

                    ; #55266: <==commonly_known== 63738 (pos)
                    (Bb_checked_p2)

                    ; #63738: origin
                    (checked_p2)

                    ; #64042: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #74209: <==commonly_known== 63738 (pos)
                    (Bc_checked_p2)

                    ; #12481: <==negation-removal== 38695 (pos)
                    (not (Pa_not_checked_p2))

                    ; #12998: <==negation-removal== 74209 (pos)
                    (not (Pc_not_checked_p2))

                    ; #14035: <==negation-removal== 26164 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #14987: <==negation-removal== 10783 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #33226: <==negation-removal== 22970 (pos)
                    (not (Bb_not_checked_p2))

                    ; #41067: <==negation-removal== 55266 (pos)
                    (not (Pb_not_checked_p2))

                    ; #45131: <==uncertain_firing== 26164 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #61722: <==negation-removal== 63738 (pos)
                    (not (not_checked_p2))

                    ; #64909: <==uncertain_firing== 64042 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #66068: <==negation-removal== 64042 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #68496: <==unclosure== 45131 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #74921: <==unclosure== 64909 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #80848: <==negation-removal== 46358 (pos)
                    (not (Bc_not_checked_p2))

                    ; #83627: <==negation-removal== 39254 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #87820: <==negation-removal== 33144 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19883: <==commonly_known== 47888 (pos)
                    (Bc_checked_p3)

                    ; #33060: <==commonly_known== 47888 (pos)
                    (Bb_checked_p3)

                    ; #47694: <==closure== 92117 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #47888: origin
                    (checked_p3)

                    ; #51193: <==closure== 77994 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #68128: <==closure== 33060 (pos)
                    (Pb_checked_p3)

                    ; #72783: <==commonly_known== 47888 (pos)
                    (Ba_checked_p3)

                    ; #77994: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #82904: <==closure== 19883 (pos)
                    (Pc_checked_p3)

                    ; #89786: <==closure== 72783 (pos)
                    (Pa_checked_p3)

                    ; #92117: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #12072: <==negation-removal== 82904 (pos)
                    (not (Bc_not_checked_p3))

                    ; #22523: <==negation-removal== 89786 (pos)
                    (not (Ba_not_checked_p3))

                    ; #26702: <==unclosure== 52723 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #34818: <==negation-removal== 33060 (pos)
                    (not (Pb_not_checked_p3))

                    ; #36036: <==negation-removal== 92117 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #37194: <==negation-removal== 47694 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #37771: <==negation-removal== 68128 (pos)
                    (not (Bb_not_checked_p3))

                    ; #40243: <==negation-removal== 77994 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #52723: <==uncertain_firing== 77994 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #55627: <==uncertain_firing== 92117 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #57957: <==unclosure== 55627 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #67794: <==negation-removal== 51193 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #69057: <==negation-removal== 72783 (pos)
                    (not (Pa_not_checked_p3))

                    ; #74683: <==negation-removal== 47888 (pos)
                    (not (not_checked_p3))

                    ; #80710: <==negation-removal== 19883 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19961: <==closure== 86594 (pos)
                    (Pa_checked_p4)

                    ; #30588: origin
                    (checked_p4)

                    ; #40750: <==closure== 55422 (pos)
                    (Pc_checked_p4)

                    ; #45682: <==commonly_known== 30588 (pos)
                    (Bb_checked_p4)

                    ; #46779: <==closure== 45682 (pos)
                    (Pb_checked_p4)

                    ; #55422: <==commonly_known== 30588 (pos)
                    (Bc_checked_p4)

                    ; #56514: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #56760: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #65664: <==closure== 56760 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #86594: <==commonly_known== 30588 (pos)
                    (Ba_checked_p4)

                    ; #87683: <==closure== 56514 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #22395: <==negation-removal== 46779 (pos)
                    (not (Bb_not_checked_p4))

                    ; #23733: <==negation-removal== 86594 (pos)
                    (not (Pa_not_checked_p4))

                    ; #25048: <==uncertain_firing== 56760 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #28765: <==negation-removal== 65664 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #42022: <==negation-removal== 56760 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #44765: <==negation-removal== 87683 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #45453: <==uncertain_firing== 56514 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #45727: <==negation-removal== 40750 (pos)
                    (not (Bc_not_checked_p4))

                    ; #54853: <==negation-removal== 19961 (pos)
                    (not (Ba_not_checked_p4))

                    ; #60592: <==unclosure== 25048 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #72444: <==negation-removal== 30588 (pos)
                    (not (not_checked_p4))

                    ; #73433: <==negation-removal== 55422 (pos)
                    (not (Pc_not_checked_p4))

                    ; #82834: <==unclosure== 45453 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #85974: <==negation-removal== 45682 (pos)
                    (not (Pb_not_checked_p4))

                    ; #98767: <==negation-removal== 56514 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #10532: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #14534: <==closure== 63428 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #16741: origin
                    (checked_p5)

                    ; #22743: <==commonly_known== 16741 (pos)
                    (Ba_checked_p5)

                    ; #28662: <==closure== 10532 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #31183: <==commonly_known== 16741 (pos)
                    (Bb_checked_p5)

                    ; #48944: <==commonly_known== 16741 (pos)
                    (Bc_checked_p5)

                    ; #59055: <==closure== 31183 (pos)
                    (Pb_checked_p5)

                    ; #63428: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #83358: <==closure== 48944 (pos)
                    (Pc_checked_p5)

                    ; #85571: <==closure== 22743 (pos)
                    (Pa_checked_p5)

                    ; #10403: <==uncertain_firing== 63428 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #11729: <==negation-removal== 59055 (pos)
                    (not (Bb_not_checked_p5))

                    ; #25481: <==negation-removal== 28662 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #30980: <==negation-removal== 10532 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #31877: <==negation-removal== 83358 (pos)
                    (not (Bc_not_checked_p5))

                    ; #33872: <==uncertain_firing== 10532 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #52500: <==negation-removal== 16741 (pos)
                    (not (not_checked_p5))

                    ; #55709: <==negation-removal== 22743 (pos)
                    (not (Pa_not_checked_p5))

                    ; #61861: <==negation-removal== 63428 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #67078: <==unclosure== 10403 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #73120: <==negation-removal== 48944 (pos)
                    (not (Pc_not_checked_p5))

                    ; #80819: <==unclosure== 33872 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #84643: <==negation-removal== 31183 (pos)
                    (not (Pb_not_checked_p5))

                    ; #85751: <==negation-removal== 14534 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #89847: <==negation-removal== 85571 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #10975: <==commonly_known== 91456 (pos)
                    (Ba_checked_p6)

                    ; #16105: <==commonly_known== 91456 (pos)
                    (Bc_checked_p6)

                    ; #26134: <==closure== 67053 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #35299: <==closure== 35962 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #35962: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #41724: <==closure== 16105 (pos)
                    (Pc_checked_p6)

                    ; #67053: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #74416: <==commonly_known== 91456 (pos)
                    (Bb_checked_p6)

                    ; #78250: <==closure== 10975 (pos)
                    (Pa_checked_p6)

                    ; #91083: <==closure== 74416 (pos)
                    (Pb_checked_p6)

                    ; #91456: origin
                    (checked_p6)

                    ; #17711: <==negation-removal== 35299 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #20881: <==negation-removal== 35962 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #34750: <==negation-removal== 10975 (pos)
                    (not (Pa_not_checked_p6))

                    ; #39874: <==negation-removal== 91083 (pos)
                    (not (Bb_not_checked_p6))

                    ; #43287: <==negation-removal== 91456 (pos)
                    (not (not_checked_p6))

                    ; #43616: <==negation-removal== 41724 (pos)
                    (not (Bc_not_checked_p6))

                    ; #46920: <==unclosure== 85602 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #52903: <==negation-removal== 78250 (pos)
                    (not (Ba_not_checked_p6))

                    ; #55926: <==uncertain_firing== 35962 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #66174: <==negation-removal== 67053 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #67267: <==negation-removal== 26134 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #69927: <==unclosure== 55926 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #78707: <==negation-removal== 74416 (pos)
                    (not (Pb_not_checked_p6))

                    ; #83025: <==negation-removal== 16105 (pos)
                    (not (Pc_not_checked_p6))

                    ; #85602: <==uncertain_firing== 67053 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #10928: <==commonly_known== 79061 (pos)
                    (Bc_checked_p7)

                    ; #17280: <==closure== 75736 (pos)
                    (Pa_checked_p7)

                    ; #22183: <==closure== 66695 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #33831: <==commonly_known== 79061 (pos)
                    (Bb_checked_p7)

                    ; #39187: <==closure== 33831 (pos)
                    (Pb_checked_p7)

                    ; #51593: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #54284: <==closure== 51593 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #66695: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #75736: <==commonly_known== 79061 (pos)
                    (Ba_checked_p7)

                    ; #79061: origin
                    (checked_p7)

                    ; #88511: <==closure== 10928 (pos)
                    (Pc_checked_p7)

                    ; #22226: <==unclosure== 88271 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #28988: <==negation-removal== 10928 (pos)
                    (not (Pc_not_checked_p7))

                    ; #35273: <==uncertain_firing== 66695 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #39749: <==negation-removal== 79061 (pos)
                    (not (not_checked_p7))

                    ; #43661: <==negation-removal== 88511 (pos)
                    (not (Bc_not_checked_p7))

                    ; #47570: <==negation-removal== 17280 (pos)
                    (not (Ba_not_checked_p7))

                    ; #49977: <==negation-removal== 75736 (pos)
                    (not (Pa_not_checked_p7))

                    ; #53306: <==negation-removal== 33831 (pos)
                    (not (Pb_not_checked_p7))

                    ; #61657: <==negation-removal== 22183 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #68038: <==negation-removal== 66695 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #79498: <==negation-removal== 51593 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #80510: <==negation-removal== 54284 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88271: <==uncertain_firing== 51593 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #89085: <==unclosure== 35273 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #89327: <==negation-removal== 39187 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #15846: <==commonly_known== 25333 (pos)
                    (Bc_checked_p8)

                    ; #17584: <==closure== 73751 (pos)
                    (Pa_checked_p8)

                    ; #25333: origin
                    (checked_p8)

                    ; #25728: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #26256: <==closure== 88991 (pos)
                    (Pb_checked_p8)

                    ; #66399: <==closure== 25728 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #73751: <==commonly_known== 25333 (pos)
                    (Ba_checked_p8)

                    ; #76046: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #81499: <==closure== 15846 (pos)
                    (Pc_checked_p8)

                    ; #88991: <==commonly_known== 25333 (pos)
                    (Bb_checked_p8)

                    ; #98441: <==closure== 76046 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #22480: <==negation-removal== 66399 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #22773: <==unclosure== 66609 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #35728: <==negation-removal== 98441 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #41518: <==negation-removal== 17584 (pos)
                    (not (Ba_not_checked_p8))

                    ; #43669: <==negation-removal== 15846 (pos)
                    (not (Pc_not_checked_p8))

                    ; #45947: <==negation-removal== 76046 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48514: <==negation-removal== 73751 (pos)
                    (not (Pa_not_checked_p8))

                    ; #51923: <==negation-removal== 88991 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53403: <==negation-removal== 26256 (pos)
                    (not (Bb_not_checked_p8))

                    ; #56461: <==negation-removal== 25333 (pos)
                    (not (not_checked_p8))

                    ; #63941: <==negation-removal== 25728 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #66609: <==uncertain_firing== 76046 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #80232: <==unclosure== 81424 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #81106: <==negation-removal== 81499 (pos)
                    (not (Bc_not_checked_p8))

                    ; #81424: <==uncertain_firing== 25728 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12459: <==commonly_known== 52206 (pos)
                    (Bc_checked_p9)

                    ; #13203: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #18438: <==closure== 39141 (pos)
                    (Pa_checked_p9)

                    ; #22311: <==closure== 22906 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #22906: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #26671: <==closure== 43593 (pos)
                    (Pb_checked_p9)

                    ; #39141: <==commonly_known== 52206 (pos)
                    (Ba_checked_p9)

                    ; #43593: <==commonly_known== 52206 (pos)
                    (Bb_checked_p9)

                    ; #52206: origin
                    (checked_p9)

                    ; #58518: <==closure== 13203 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #70826: <==closure== 12459 (pos)
                    (Pc_checked_p9)

                    ; #10202: <==negation-removal== 39141 (pos)
                    (not (Pa_not_checked_p9))

                    ; #11170: <==negation-removal== 70826 (pos)
                    (not (Bc_not_checked_p9))

                    ; #20762: <==negation-removal== 12459 (pos)
                    (not (Pc_not_checked_p9))

                    ; #21473: <==uncertain_firing== 13203 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #23654: <==negation-removal== 22906 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #25230: <==uncertain_firing== 22906 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #40472: <==negation-removal== 13203 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #44950: <==negation-removal== 18438 (pos)
                    (not (Ba_not_checked_p9))

                    ; #59028: <==negation-removal== 26671 (pos)
                    (not (Bb_not_checked_p9))

                    ; #60659: <==unclosure== 25230 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #61222: <==negation-removal== 22311 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #63283: <==negation-removal== 43593 (pos)
                    (not (Pb_not_checked_p9))

                    ; #63461: <==unclosure== 21473 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #64769: <==negation-removal== 58518 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #66408: <==negation-removal== 52206 (pos)
                    (not (not_checked_p9))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #13659: <==commonly_known== 49593 (pos)
                    (Bc_checked_p10)

                    ; #18539: <==commonly_known== 49593 (pos)
                    (Bb_checked_p10)

                    ; #42376: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #49061: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #49593: origin
                    (checked_p10)

                    ; #55468: <==closure== 49061 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #57656: <==closure== 13659 (pos)
                    (Pc_checked_p10)

                    ; #58229: <==closure== 42376 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #66116: <==closure== 77825 (pos)
                    (Pa_checked_p10)

                    ; #68669: <==closure== 18539 (pos)
                    (Pb_checked_p10)

                    ; #77825: <==commonly_known== 49593 (pos)
                    (Ba_checked_p10)

                    ; #14564: <==uncertain_firing== 42376 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #28607: <==negation-removal== 42376 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #34013: <==unclosure== 83802 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #34908: <==negation-removal== 18539 (pos)
                    (not (Pb_not_checked_p10))

                    ; #42183: <==negation-removal== 55468 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #44646: <==negation-removal== 57656 (pos)
                    (not (Bc_not_checked_p10))

                    ; #44710: <==unclosure== 14564 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #52922: <==negation-removal== 49593 (pos)
                    (not (not_checked_p10))

                    ; #53776: <==negation-removal== 49061 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #57514: <==negation-removal== 13659 (pos)
                    (not (Pc_not_checked_p10))

                    ; #57528: <==negation-removal== 58229 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #61325: <==negation-removal== 68669 (pos)
                    (not (Bb_not_checked_p10))

                    ; #80384: <==negation-removal== 66116 (pos)
                    (not (Ba_not_checked_p10))

                    ; #83802: <==uncertain_firing== 49061 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #86236: <==negation-removal== 77825 (pos)
                    (not (Pa_not_checked_p10))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #14316: <==closure== 66096 (pos)
                    (Pc_checked_p11)

                    ; #25058: origin
                    (checked_p11)

                    ; #30038: <==commonly_known== 25058 (pos)
                    (Ba_checked_p11)

                    ; #38604: <==closure== 55044 (pos)
                    (Pb_checked_p11)

                    ; #39848: <==closure== 30038 (pos)
                    (Pa_checked_p11)

                    ; #52120: <==closure== 90613 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #55044: <==commonly_known== 25058 (pos)
                    (Bb_checked_p11)

                    ; #66096: <==commonly_known== 25058 (pos)
                    (Bc_checked_p11)

                    ; #66703: <==closure== 83334 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #83334: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #90613: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #12673: <==negation-removal== 38604 (pos)
                    (not (Bb_not_checked_p11))

                    ; #24218: <==negation-removal== 90613 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #24585: <==negation-removal== 66096 (pos)
                    (not (Pc_not_checked_p11))

                    ; #28137: <==unclosure== 48476 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #35567: <==negation-removal== 52120 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #37092: <==negation-removal== 66703 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #48476: <==uncertain_firing== 90613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #56929: <==uncertain_firing== 83334 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #58344: <==negation-removal== 39848 (pos)
                    (not (Ba_not_checked_p11))

                    ; #58806: <==negation-removal== 83334 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #68937: <==unclosure== 56929 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #71572: <==negation-removal== 30038 (pos)
                    (not (Pa_not_checked_p11))

                    ; #73314: <==negation-removal== 55044 (pos)
                    (not (Pb_not_checked_p11))

                    ; #76965: <==negation-removal== 14316 (pos)
                    (not (Bc_not_checked_p11))

                    ; #90867: <==negation-removal== 25058 (pos)
                    (not (not_checked_p11))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #15863: <==commonly_known== 67818 (pos)
                    (Bc_checked_p12)

                    ; #19384: <==commonly_known== 67818 (pos)
                    (Bb_checked_p12)

                    ; #36599: <==commonly_known== 67818 (pos)
                    (Ba_checked_p12)

                    ; #37992: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #45040: <==closure== 36599 (pos)
                    (Pa_checked_p12)

                    ; #61014: <==closure== 74497 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #67036: <==closure== 19384 (pos)
                    (Pb_checked_p12)

                    ; #67818: origin
                    (checked_p12)

                    ; #74497: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #75209: <==closure== 15863 (pos)
                    (Pc_checked_p12)

                    ; #82151: <==closure== 37992 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #11814: <==negation-removal== 75209 (pos)
                    (not (Bc_not_checked_p12))

                    ; #32270: <==unclosure== 59596 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #36125: <==negation-removal== 37992 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #55301: <==negation-removal== 67818 (pos)
                    (not (not_checked_p12))

                    ; #57725: <==negation-removal== 45040 (pos)
                    (not (Ba_not_checked_p12))

                    ; #59596: <==uncertain_firing== 37992 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #64535: <==negation-removal== 19384 (pos)
                    (not (Pb_not_checked_p12))

                    ; #65216: <==negation-removal== 82151 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #79447: <==uncertain_firing== 74497 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #80062: <==negation-removal== 61014 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #82324: <==negation-removal== 74497 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #84883: <==negation-removal== 15863 (pos)
                    (not (Pc_not_checked_p12))

                    ; #85784: <==negation-removal== 36599 (pos)
                    (not (Pa_not_checked_p12))

                    ; #86764: <==negation-removal== 67036 (pos)
                    (not (Bb_not_checked_p12))

                    ; #98942: <==unclosure== 79447 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #13031: <==closure== 83343 (pos)
                    (Pc_checked_p1)

                    ; #15430: origin
                    (checked_p1)

                    ; #24537: <==closure== 57137 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #29549: <==commonly_known== 15430 (pos)
                    (Ba_checked_p1)

                    ; #30364: <==closure== 29549 (pos)
                    (Pa_checked_p1)

                    ; #30984: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #41870: <==closure== 87135 (pos)
                    (Pb_checked_p1)

                    ; #57137: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #83343: <==commonly_known== 15430 (pos)
                    (Bc_checked_p1)

                    ; #87135: <==commonly_known== 15430 (pos)
                    (Bb_checked_p1)

                    ; #90300: <==closure== 30984 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #34095: <==unclosure== 84095 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #46230: <==negation-removal== 13031 (pos)
                    (not (Bc_not_checked_p1))

                    ; #52859: <==negation-removal== 30364 (pos)
                    (not (Ba_not_checked_p1))

                    ; #57442: <==negation-removal== 87135 (pos)
                    (not (Pb_not_checked_p1))

                    ; #59392: <==unclosure== 88523 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #64340: <==negation-removal== 41870 (pos)
                    (not (Bb_not_checked_p1))

                    ; #67895: <==negation-removal== 29549 (pos)
                    (not (Pa_not_checked_p1))

                    ; #69599: <==negation-removal== 30984 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #71124: <==negation-removal== 83343 (pos)
                    (not (Pc_not_checked_p1))

                    ; #72001: <==negation-removal== 57137 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #83413: <==negation-removal== 15430 (pos)
                    (not (not_checked_p1))

                    ; #84095: <==uncertain_firing== 30984 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #87807: <==negation-removal== 24537 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #88523: <==uncertain_firing== 57137 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #90405: <==negation-removal== 90300 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #22970: <==closure== 55266 (pos)
                    (Pb_checked_p2)

                    ; #33144: <==closure== 38695 (pos)
                    (Pa_checked_p2)

                    ; #37725: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #38695: <==commonly_known== 63738 (pos)
                    (Ba_checked_p2)

                    ; #46358: <==closure== 74209 (pos)
                    (Pc_checked_p2)

                    ; #48048: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #55266: <==commonly_known== 63738 (pos)
                    (Bb_checked_p2)

                    ; #63738: origin
                    (checked_p2)

                    ; #74209: <==commonly_known== 63738 (pos)
                    (Bc_checked_p2)

                    ; #76858: <==closure== 48048 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #87120: <==closure== 37725 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #12481: <==negation-removal== 38695 (pos)
                    (not (Pa_not_checked_p2))

                    ; #12998: <==negation-removal== 74209 (pos)
                    (not (Pc_not_checked_p2))

                    ; #17818: <==negation-removal== 87120 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #28872: <==uncertain_firing== 37725 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #30770: <==negation-removal== 37725 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #33226: <==negation-removal== 22970 (pos)
                    (not (Bb_not_checked_p2))

                    ; #37344: <==unclosure== 28872 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #41067: <==negation-removal== 55266 (pos)
                    (not (Pb_not_checked_p2))

                    ; #55692: <==negation-removal== 76858 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #61722: <==negation-removal== 63738 (pos)
                    (not (not_checked_p2))

                    ; #67235: <==negation-removal== 48048 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #77413: <==uncertain_firing== 48048 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #80728: <==unclosure== 77413 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #80848: <==negation-removal== 46358 (pos)
                    (not (Bc_not_checked_p2))

                    ; #87820: <==negation-removal== 33144 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14463: <==closure== 66441 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #19883: <==commonly_known== 47888 (pos)
                    (Bc_checked_p3)

                    ; #28157: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #32021: <==closure== 28157 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #33060: <==commonly_known== 47888 (pos)
                    (Bb_checked_p3)

                    ; #47888: origin
                    (checked_p3)

                    ; #66441: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #68128: <==closure== 33060 (pos)
                    (Pb_checked_p3)

                    ; #72783: <==commonly_known== 47888 (pos)
                    (Ba_checked_p3)

                    ; #82904: <==closure== 19883 (pos)
                    (Pc_checked_p3)

                    ; #89786: <==closure== 72783 (pos)
                    (Pa_checked_p3)

                    ; #12072: <==negation-removal== 82904 (pos)
                    (not (Bc_not_checked_p3))

                    ; #22523: <==negation-removal== 89786 (pos)
                    (not (Ba_not_checked_p3))

                    ; #32466: <==negation-removal== 28157 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #32716: <==negation-removal== 14463 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #34818: <==negation-removal== 33060 (pos)
                    (not (Pb_not_checked_p3))

                    ; #37771: <==negation-removal== 68128 (pos)
                    (not (Bb_not_checked_p3))

                    ; #38514: <==negation-removal== 66441 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #47312: <==negation-removal== 32021 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #57107: <==unclosure== 63764 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #63764: <==uncertain_firing== 66441 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #69057: <==negation-removal== 72783 (pos)
                    (not (Pa_not_checked_p3))

                    ; #74683: <==negation-removal== 47888 (pos)
                    (not (not_checked_p3))

                    ; #80710: <==negation-removal== 19883 (pos)
                    (not (Pc_not_checked_p3))

                    ; #85747: <==uncertain_firing== 28157 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #86018: <==unclosure== 85747 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #19961: <==closure== 86594 (pos)
                    (Pa_checked_p4)

                    ; #24677: <==closure== 33258 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #26142: <==closure== 91428 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #30588: origin
                    (checked_p4)

                    ; #33258: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #40750: <==closure== 55422 (pos)
                    (Pc_checked_p4)

                    ; #45682: <==commonly_known== 30588 (pos)
                    (Bb_checked_p4)

                    ; #46779: <==closure== 45682 (pos)
                    (Pb_checked_p4)

                    ; #55422: <==commonly_known== 30588 (pos)
                    (Bc_checked_p4)

                    ; #86594: <==commonly_known== 30588 (pos)
                    (Ba_checked_p4)

                    ; #91428: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #12027: <==negation-removal== 26142 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #20048: <==negation-removal== 91428 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #22395: <==negation-removal== 46779 (pos)
                    (not (Bb_not_checked_p4))

                    ; #23733: <==negation-removal== 86594 (pos)
                    (not (Pa_not_checked_p4))

                    ; #24277: <==uncertain_firing== 91428 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #24447: <==negation-removal== 33258 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #44359: <==uncertain_firing== 33258 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #45727: <==negation-removal== 40750 (pos)
                    (not (Bc_not_checked_p4))

                    ; #47518: <==unclosure== 44359 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #54853: <==negation-removal== 19961 (pos)
                    (not (Ba_not_checked_p4))

                    ; #72444: <==negation-removal== 30588 (pos)
                    (not (not_checked_p4))

                    ; #73433: <==negation-removal== 55422 (pos)
                    (not (Pc_not_checked_p4))

                    ; #85974: <==negation-removal== 45682 (pos)
                    (not (Pb_not_checked_p4))

                    ; #87557: <==negation-removal== 24677 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #90962: <==unclosure== 24277 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #13392: <==closure== 72714 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #16741: origin
                    (checked_p5)

                    ; #22743: <==commonly_known== 16741 (pos)
                    (Ba_checked_p5)

                    ; #22861: <==closure== 80279 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #31183: <==commonly_known== 16741 (pos)
                    (Bb_checked_p5)

                    ; #48944: <==commonly_known== 16741 (pos)
                    (Bc_checked_p5)

                    ; #59055: <==closure== 31183 (pos)
                    (Pb_checked_p5)

                    ; #72714: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #80279: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #83358: <==closure== 48944 (pos)
                    (Pc_checked_p5)

                    ; #85571: <==closure== 22743 (pos)
                    (Pa_checked_p5)

                    ; #11729: <==negation-removal== 59055 (pos)
                    (not (Bb_not_checked_p5))

                    ; #14955: <==negation-removal== 72714 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #19878: <==negation-removal== 13392 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #28661: <==unclosure== 69375 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #31877: <==negation-removal== 83358 (pos)
                    (not (Bc_not_checked_p5))

                    ; #44922: <==unclosure== 53389 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #47688: <==negation-removal== 80279 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #52500: <==negation-removal== 16741 (pos)
                    (not (not_checked_p5))

                    ; #53389: <==uncertain_firing== 80279 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #55709: <==negation-removal== 22743 (pos)
                    (not (Pa_not_checked_p5))

                    ; #56723: <==negation-removal== 22861 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #69375: <==uncertain_firing== 72714 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #73120: <==negation-removal== 48944 (pos)
                    (not (Pc_not_checked_p5))

                    ; #84643: <==negation-removal== 31183 (pos)
                    (not (Pb_not_checked_p5))

                    ; #89847: <==negation-removal== 85571 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10975: <==commonly_known== 91456 (pos)
                    (Ba_checked_p6)

                    ; #12578: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #16105: <==commonly_known== 91456 (pos)
                    (Bc_checked_p6)

                    ; #34862: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #41724: <==closure== 16105 (pos)
                    (Pc_checked_p6)

                    ; #74416: <==commonly_known== 91456 (pos)
                    (Bb_checked_p6)

                    ; #78250: <==closure== 10975 (pos)
                    (Pa_checked_p6)

                    ; #88062: <==closure== 12578 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #89585: <==closure== 34862 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #91083: <==closure== 74416 (pos)
                    (Pb_checked_p6)

                    ; #91456: origin
                    (checked_p6)

                    ; #34426: <==negation-removal== 89585 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #34750: <==negation-removal== 10975 (pos)
                    (not (Pa_not_checked_p6))

                    ; #38083: <==negation-removal== 34862 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #39874: <==negation-removal== 91083 (pos)
                    (not (Bb_not_checked_p6))

                    ; #42715: <==negation-removal== 12578 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #43287: <==negation-removal== 91456 (pos)
                    (not (not_checked_p6))

                    ; #43616: <==negation-removal== 41724 (pos)
                    (not (Bc_not_checked_p6))

                    ; #45086: <==uncertain_firing== 12578 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #52903: <==negation-removal== 78250 (pos)
                    (not (Ba_not_checked_p6))

                    ; #58016: <==unclosure== 45086 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #69456: <==negation-removal== 88062 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #70722: <==unclosure== 73152 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #73152: <==uncertain_firing== 34862 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #78707: <==negation-removal== 74416 (pos)
                    (not (Pb_not_checked_p6))

                    ; #83025: <==negation-removal== 16105 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10928: <==commonly_known== 79061 (pos)
                    (Bc_checked_p7)

                    ; #17280: <==closure== 75736 (pos)
                    (Pa_checked_p7)

                    ; #17826: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #33831: <==commonly_known== 79061 (pos)
                    (Bb_checked_p7)

                    ; #39187: <==closure== 33831 (pos)
                    (Pb_checked_p7)

                    ; #63940: <==closure== 64222 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #64222: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #75736: <==commonly_known== 79061 (pos)
                    (Ba_checked_p7)

                    ; #79061: origin
                    (checked_p7)

                    ; #80429: <==closure== 17826 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #88511: <==closure== 10928 (pos)
                    (Pc_checked_p7)

                    ; #13358: <==negation-removal== 80429 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #21737: <==negation-removal== 64222 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #23576: <==negation-removal== 63940 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #28988: <==negation-removal== 10928 (pos)
                    (not (Pc_not_checked_p7))

                    ; #31004: <==uncertain_firing== 17826 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #33412: <==unclosure== 45744 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #38716: <==unclosure== 31004 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #39749: <==negation-removal== 79061 (pos)
                    (not (not_checked_p7))

                    ; #43661: <==negation-removal== 88511 (pos)
                    (not (Bc_not_checked_p7))

                    ; #45744: <==uncertain_firing== 64222 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #47570: <==negation-removal== 17280 (pos)
                    (not (Ba_not_checked_p7))

                    ; #49977: <==negation-removal== 75736 (pos)
                    (not (Pa_not_checked_p7))

                    ; #53306: <==negation-removal== 33831 (pos)
                    (not (Pb_not_checked_p7))

                    ; #81755: <==negation-removal== 17826 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #89327: <==negation-removal== 39187 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #15846: <==commonly_known== 25333 (pos)
                    (Bc_checked_p8)

                    ; #17584: <==closure== 73751 (pos)
                    (Pa_checked_p8)

                    ; #21741: <==closure== 74499 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #25333: origin
                    (checked_p8)

                    ; #26256: <==closure== 88991 (pos)
                    (Pb_checked_p8)

                    ; #72021: <==closure== 89673 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #73751: <==commonly_known== 25333 (pos)
                    (Ba_checked_p8)

                    ; #74499: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #81499: <==closure== 15846 (pos)
                    (Pc_checked_p8)

                    ; #88991: <==commonly_known== 25333 (pos)
                    (Bb_checked_p8)

                    ; #89673: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #14889: <==uncertain_firing== 74499 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #15351: <==uncertain_firing== 89673 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #41518: <==negation-removal== 17584 (pos)
                    (not (Ba_not_checked_p8))

                    ; #42551: <==unclosure== 15351 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #43669: <==negation-removal== 15846 (pos)
                    (not (Pc_not_checked_p8))

                    ; #46922: <==negation-removal== 89673 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #48514: <==negation-removal== 73751 (pos)
                    (not (Pa_not_checked_p8))

                    ; #51923: <==negation-removal== 88991 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53403: <==negation-removal== 26256 (pos)
                    (not (Bb_not_checked_p8))

                    ; #56461: <==negation-removal== 25333 (pos)
                    (not (not_checked_p8))

                    ; #57527: <==unclosure== 14889 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #80601: <==negation-removal== 72021 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #81106: <==negation-removal== 81499 (pos)
                    (not (Bc_not_checked_p8))

                    ; #87192: <==negation-removal== 21741 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #91653: <==negation-removal== 74499 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12459: <==commonly_known== 52206 (pos)
                    (Bc_checked_p9)

                    ; #18438: <==closure== 39141 (pos)
                    (Pa_checked_p9)

                    ; #26671: <==closure== 43593 (pos)
                    (Pb_checked_p9)

                    ; #27979: <==closure== 77212 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #39141: <==commonly_known== 52206 (pos)
                    (Ba_checked_p9)

                    ; #43593: <==commonly_known== 52206 (pos)
                    (Bb_checked_p9)

                    ; #52206: origin
                    (checked_p9)

                    ; #70826: <==closure== 12459 (pos)
                    (Pc_checked_p9)

                    ; #76882: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #77212: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #88073: <==closure== 76882 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #10202: <==negation-removal== 39141 (pos)
                    (not (Pa_not_checked_p9))

                    ; #11170: <==negation-removal== 70826 (pos)
                    (not (Bc_not_checked_p9))

                    ; #20762: <==negation-removal== 12459 (pos)
                    (not (Pc_not_checked_p9))

                    ; #26264: <==negation-removal== 27979 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #28048: <==unclosure== 47611 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #44950: <==negation-removal== 18438 (pos)
                    (not (Ba_not_checked_p9))

                    ; #47611: <==uncertain_firing== 77212 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #55122: <==unclosure== 66246 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #59028: <==negation-removal== 26671 (pos)
                    (not (Bb_not_checked_p9))

                    ; #63283: <==negation-removal== 43593 (pos)
                    (not (Pb_not_checked_p9))

                    ; #66246: <==uncertain_firing== 76882 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #66275: <==negation-removal== 88073 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #66408: <==negation-removal== 52206 (pos)
                    (not (not_checked_p9))

                    ; #73375: <==negation-removal== 77212 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #86103: <==negation-removal== 76882 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))))

)