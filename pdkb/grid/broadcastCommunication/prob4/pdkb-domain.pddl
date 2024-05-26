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
        :precondition (and (Ba_survivorat_s_p10)
                           (leader_a)
                           (at_a_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #32307: <==closure== 91519 (pos)
                    (Pa_survivorat_s_p10)

                    ; #91519: origin
                    (Ba_survivorat_s_p10)

                    ; #55303: <==negation-removal== 91519 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #78785: <==negation-removal== 32307 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (leader_b)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #71269: <==closure== 79477 (pos)
                    (Pb_survivorat_s_p10)

                    ; #79477: origin
                    (Bb_survivorat_s_p10)

                    ; #43354: <==negation-removal== 79477 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #89672: <==negation-removal== 71269 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (leader_c)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #36395: <==closure== 64903 (pos)
                    (Pc_survivorat_s_p10)

                    ; #64903: origin
                    (Bc_survivorat_s_p10)

                    ; #37120: <==negation-removal== 64903 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #87138: <==negation-removal== 36395 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #32307: <==closure== 91519 (pos)
                    (Pa_survivorat_s_p10)

                    ; #91519: origin
                    (Ba_survivorat_s_p10)

                    ; #55303: <==negation-removal== 91519 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #78785: <==negation-removal== 32307 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #71269: <==closure== 79477 (pos)
                    (Pb_survivorat_s_p10)

                    ; #79477: origin
                    (Bb_survivorat_s_p10)

                    ; #43354: <==negation-removal== 79477 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #89672: <==negation-removal== 71269 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #36395: <==closure== 64903 (pos)
                    (Pc_survivorat_s_p10)

                    ; #64903: origin
                    (Bc_survivorat_s_p10)

                    ; #37120: <==negation-removal== 64903 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #87138: <==negation-removal== 36395 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_a)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #32307: <==closure== 91519 (pos)
                    (Pa_survivorat_s_p10)

                    ; #91519: origin
                    (Ba_survivorat_s_p10)

                    ; #55303: <==negation-removal== 91519 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #78785: <==negation-removal== 32307 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #71269: <==closure== 79477 (pos)
                    (Pb_survivorat_s_p10)

                    ; #79477: origin
                    (Bb_survivorat_s_p10)

                    ; #43354: <==negation-removal== 79477 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #89672: <==negation-removal== 71269 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #36395: <==closure== 64903 (pos)
                    (Pc_survivorat_s_p10)

                    ; #64903: origin
                    (Bc_survivorat_s_p10)

                    ; #37120: <==negation-removal== 64903 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #87138: <==negation-removal== 36395 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_a)
                           (at_a_p11))
        :effect (and
                    ; #17700: <==closure== 26350 (pos)
                    (Pa_survivorat_s_p11)

                    ; #26350: origin
                    (Ba_survivorat_s_p11)

                    ; #32394: <==negation-removal== 26350 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #33139: <==negation-removal== 17700 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_b)
                           (at_a_p11))
        :effect (and
                    ; #12555: <==closure== 66195 (pos)
                    (Pb_survivorat_s_p11)

                    ; #66195: origin
                    (Bb_survivorat_s_p11)

                    ; #10197: <==negation-removal== 12555 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #85173: <==negation-removal== 66195 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (leader_c)
                           (at_a_p11))
        :effect (and
                    ; #29205: <==closure== 91703 (pos)
                    (Pc_survivorat_s_p11)

                    ; #91703: origin
                    (Bc_survivorat_s_p11)

                    ; #10255: <==negation-removal== 29205 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #35951: <==negation-removal== 91703 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_a)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #17700: <==closure== 26350 (pos)
                    (Pa_survivorat_s_p11)

                    ; #26350: origin
                    (Ba_survivorat_s_p11)

                    ; #32394: <==negation-removal== 26350 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #33139: <==negation-removal== 17700 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_b)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #12555: <==closure== 66195 (pos)
                    (Pb_survivorat_s_p11)

                    ; #66195: origin
                    (Bb_survivorat_s_p11)

                    ; #10197: <==negation-removal== 12555 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #85173: <==negation-removal== 66195 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_c)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #29205: <==closure== 91703 (pos)
                    (Pc_survivorat_s_p11)

                    ; #91703: origin
                    (Bc_survivorat_s_p11)

                    ; #10255: <==negation-removal== 29205 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #35951: <==negation-removal== 91703 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (leader_a)
                           (at_c_p11))
        :effect (and
                    ; #17700: <==closure== 26350 (pos)
                    (Pa_survivorat_s_p11)

                    ; #26350: origin
                    (Ba_survivorat_s_p11)

                    ; #32394: <==negation-removal== 26350 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #33139: <==negation-removal== 17700 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (leader_b)
                           (at_c_p11))
        :effect (and
                    ; #12555: <==closure== 66195 (pos)
                    (Pb_survivorat_s_p11)

                    ; #66195: origin
                    (Bb_survivorat_s_p11)

                    ; #10197: <==negation-removal== 12555 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #85173: <==negation-removal== 66195 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (leader_c)
                           (at_c_p11))
        :effect (and
                    ; #29205: <==closure== 91703 (pos)
                    (Pc_survivorat_s_p11)

                    ; #91703: origin
                    (Bc_survivorat_s_p11)

                    ; #10255: <==negation-removal== 29205 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #35951: <==negation-removal== 91703 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (at_a_p12)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #40469: <==closure== 81597 (pos)
                    (Pa_survivorat_s_p12)

                    ; #81597: origin
                    (Ba_survivorat_s_p12)

                    ; #15965: <==negation-removal== 40469 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #51990: <==negation-removal== 81597 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (at_a_p12)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #10818: origin
                    (Bb_survivorat_s_p12)

                    ; #65113: <==closure== 10818 (pos)
                    (Pb_survivorat_s_p12)

                    ; #10298: <==negation-removal== 65113 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #57362: <==negation-removal== 10818 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (at_a_p12)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #27587: <==closure== 67510 (pos)
                    (Pc_survivorat_s_p12)

                    ; #67510: origin
                    (Bc_survivorat_s_p12)

                    ; #16361: <==negation-removal== 67510 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #31610: <==negation-removal== 27587 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #40469: <==closure== 81597 (pos)
                    (Pa_survivorat_s_p12)

                    ; #81597: origin
                    (Ba_survivorat_s_p12)

                    ; #15965: <==negation-removal== 40469 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #51990: <==negation-removal== 81597 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #10818: origin
                    (Bb_survivorat_s_p12)

                    ; #65113: <==closure== 10818 (pos)
                    (Pb_survivorat_s_p12)

                    ; #10298: <==negation-removal== 65113 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #57362: <==negation-removal== 10818 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #27587: <==closure== 67510 (pos)
                    (Pc_survivorat_s_p12)

                    ; #67510: origin
                    (Bc_survivorat_s_p12)

                    ; #16361: <==negation-removal== 67510 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #31610: <==negation-removal== 27587 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_a)
                           (at_c_p12))
        :effect (and
                    ; #40469: <==closure== 81597 (pos)
                    (Pa_survivorat_s_p12)

                    ; #81597: origin
                    (Ba_survivorat_s_p12)

                    ; #15965: <==negation-removal== 40469 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #51990: <==negation-removal== 81597 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (leader_b)
                           (at_c_p12))
        :effect (and
                    ; #10818: origin
                    (Bb_survivorat_s_p12)

                    ; #65113: <==closure== 10818 (pos)
                    (Pb_survivorat_s_p12)

                    ; #10298: <==negation-removal== 65113 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #57362: <==negation-removal== 10818 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (leader_c)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #27587: <==closure== 67510 (pos)
                    (Pc_survivorat_s_p12)

                    ; #67510: origin
                    (Bc_survivorat_s_p12)

                    ; #16361: <==negation-removal== 67510 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #31610: <==negation-removal== 27587 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_a)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #31836: origin
                    (Ba_survivorat_s_p1)

                    ; #87419: <==closure== 31836 (pos)
                    (Pa_survivorat_s_p1)

                    ; #57140: <==negation-removal== 87419 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #77670: <==negation-removal== 31836 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_b)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #19497: <==closure== 39553 (pos)
                    (Pb_survivorat_s_p1)

                    ; #39553: origin
                    (Bb_survivorat_s_p1)

                    ; #68699: <==negation-removal== 19497 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #71864: <==negation-removal== 39553 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_c)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #42321: origin
                    (Bc_survivorat_s_p1)

                    ; #72556: <==closure== 42321 (pos)
                    (Pc_survivorat_s_p1)

                    ; #25010: <==negation-removal== 72556 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #63164: <==negation-removal== 42321 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #31836: origin
                    (Ba_survivorat_s_p1)

                    ; #87419: <==closure== 31836 (pos)
                    (Pa_survivorat_s_p1)

                    ; #57140: <==negation-removal== 87419 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #77670: <==negation-removal== 31836 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #19497: <==closure== 39553 (pos)
                    (Pb_survivorat_s_p1)

                    ; #39553: origin
                    (Bb_survivorat_s_p1)

                    ; #68699: <==negation-removal== 19497 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #71864: <==negation-removal== 39553 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #42321: origin
                    (Bc_survivorat_s_p1)

                    ; #72556: <==closure== 42321 (pos)
                    (Pc_survivorat_s_p1)

                    ; #25010: <==negation-removal== 72556 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #63164: <==negation-removal== 42321 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #31836: origin
                    (Ba_survivorat_s_p1)

                    ; #87419: <==closure== 31836 (pos)
                    (Pa_survivorat_s_p1)

                    ; #57140: <==negation-removal== 87419 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #77670: <==negation-removal== 31836 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #19497: <==closure== 39553 (pos)
                    (Pb_survivorat_s_p1)

                    ; #39553: origin
                    (Bb_survivorat_s_p1)

                    ; #68699: <==negation-removal== 19497 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #71864: <==negation-removal== 39553 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #42321: origin
                    (Bc_survivorat_s_p1)

                    ; #72556: <==closure== 42321 (pos)
                    (Pc_survivorat_s_p1)

                    ; #25010: <==negation-removal== 72556 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #63164: <==negation-removal== 42321 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #45056: origin
                    (Ba_survivorat_s_p2)

                    ; #80528: <==closure== 45056 (pos)
                    (Pa_survivorat_s_p2)

                    ; #46928: <==negation-removal== 80528 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #54390: <==negation-removal== 45056 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #27650: origin
                    (Bb_survivorat_s_p2)

                    ; #72018: <==closure== 27650 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50513: <==negation-removal== 72018 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #67748: <==negation-removal== 27650 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #18396: origin
                    (Bc_survivorat_s_p2)

                    ; #86065: <==closure== 18396 (pos)
                    (Pc_survivorat_s_p2)

                    ; #79568: <==negation-removal== 86065 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #90687: <==negation-removal== 18396 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (leader_a)
                           (at_b_p2))
        :effect (and
                    ; #45056: origin
                    (Ba_survivorat_s_p2)

                    ; #80528: <==closure== 45056 (pos)
                    (Pa_survivorat_s_p2)

                    ; #46928: <==negation-removal== 80528 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #54390: <==negation-removal== 45056 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (leader_b)
                           (at_b_p2))
        :effect (and
                    ; #27650: origin
                    (Bb_survivorat_s_p2)

                    ; #72018: <==closure== 27650 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50513: <==negation-removal== 72018 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #67748: <==negation-removal== 27650 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (leader_c)
                           (at_b_p2))
        :effect (and
                    ; #18396: origin
                    (Bc_survivorat_s_p2)

                    ; #86065: <==closure== 18396 (pos)
                    (Pc_survivorat_s_p2)

                    ; #79568: <==negation-removal== 86065 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #90687: <==negation-removal== 18396 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #45056: origin
                    (Ba_survivorat_s_p2)

                    ; #80528: <==closure== 45056 (pos)
                    (Pa_survivorat_s_p2)

                    ; #46928: <==negation-removal== 80528 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #54390: <==negation-removal== 45056 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #27650: origin
                    (Bb_survivorat_s_p2)

                    ; #72018: <==closure== 27650 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50513: <==negation-removal== 72018 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #67748: <==negation-removal== 27650 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #18396: origin
                    (Bc_survivorat_s_p2)

                    ; #86065: <==closure== 18396 (pos)
                    (Pc_survivorat_s_p2)

                    ; #79568: <==negation-removal== 86065 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #90687: <==negation-removal== 18396 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_a)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #83067: <==closure== 84051 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84051: origin
                    (Ba_survivorat_s_p3)

                    ; #86321: <==negation-removal== 83067 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88803: <==negation-removal== 84051 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_b)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #53438: <==closure== 85377 (pos)
                    (Pb_survivorat_s_p3)

                    ; #85377: origin
                    (Bb_survivorat_s_p3)

                    ; #87924: <==negation-removal== 53438 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92334: <==negation-removal== 85377 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #14166: <==closure== 15955 (pos)
                    (Pc_survivorat_s_p3)

                    ; #15955: origin
                    (Bc_survivorat_s_p3)

                    ; #16684: <==negation-removal== 15955 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #39248: <==negation-removal== 14166 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_a)
                           (at_b_p3))
        :effect (and
                    ; #83067: <==closure== 84051 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84051: origin
                    (Ba_survivorat_s_p3)

                    ; #86321: <==negation-removal== 83067 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88803: <==negation-removal== 84051 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (at_b_p3))
        :effect (and
                    ; #53438: <==closure== 85377 (pos)
                    (Pb_survivorat_s_p3)

                    ; #85377: origin
                    (Bb_survivorat_s_p3)

                    ; #87924: <==negation-removal== 53438 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92334: <==negation-removal== 85377 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (at_b_p3))
        :effect (and
                    ; #14166: <==closure== 15955 (pos)
                    (Pc_survivorat_s_p3)

                    ; #15955: origin
                    (Bc_survivorat_s_p3)

                    ; #16684: <==negation-removal== 15955 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #39248: <==negation-removal== 14166 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (Bc_survivorat_s_p3)
                           (leader_a)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #83067: <==closure== 84051 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84051: origin
                    (Ba_survivorat_s_p3)

                    ; #86321: <==negation-removal== 83067 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #88803: <==negation-removal== 84051 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b)
                           (at_c_p3))
        :effect (and
                    ; #53438: <==closure== 85377 (pos)
                    (Pb_survivorat_s_p3)

                    ; #85377: origin
                    (Bb_survivorat_s_p3)

                    ; #87924: <==negation-removal== 53438 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92334: <==negation-removal== 85377 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c)
                           (at_c_p3))
        :effect (and
                    ; #14166: <==closure== 15955 (pos)
                    (Pc_survivorat_s_p3)

                    ; #15955: origin
                    (Bc_survivorat_s_p3)

                    ; #16684: <==negation-removal== 15955 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #39248: <==negation-removal== 14166 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_a)
                           (at_a_p4))
        :effect (and
                    ; #26622: <==closure== 45047 (pos)
                    (Pa_survivorat_s_p4)

                    ; #45047: origin
                    (Ba_survivorat_s_p4)

                    ; #34338: <==negation-removal== 26622 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #62143: <==negation-removal== 45047 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b)
                           (at_a_p4))
        :effect (and
                    ; #25745: <==closure== 28165 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28165: origin
                    (Bb_survivorat_s_p4)

                    ; #14141: <==negation-removal== 25745 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #15803: <==negation-removal== 28165 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_c)
                           (at_a_p4))
        :effect (and
                    ; #29407: <==closure== 78967 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78967: origin
                    (Bc_survivorat_s_p4)

                    ; #15213: <==negation-removal== 78967 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #24533: <==negation-removal== 29407 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_a))
        :effect (and
                    ; #26622: <==closure== 45047 (pos)
                    (Pa_survivorat_s_p4)

                    ; #45047: origin
                    (Ba_survivorat_s_p4)

                    ; #34338: <==negation-removal== 26622 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #62143: <==negation-removal== 45047 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b))
        :effect (and
                    ; #25745: <==closure== 28165 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28165: origin
                    (Bb_survivorat_s_p4)

                    ; #14141: <==negation-removal== 25745 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #15803: <==negation-removal== 28165 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_c))
        :effect (and
                    ; #29407: <==closure== 78967 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78967: origin
                    (Bc_survivorat_s_p4)

                    ; #15213: <==negation-removal== 78967 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #24533: <==negation-removal== 29407 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_a)
                           (at_c_p4))
        :effect (and
                    ; #26622: <==closure== 45047 (pos)
                    (Pa_survivorat_s_p4)

                    ; #45047: origin
                    (Ba_survivorat_s_p4)

                    ; #34338: <==negation-removal== 26622 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #62143: <==negation-removal== 45047 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4))
        :effect (and
                    ; #25745: <==closure== 28165 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28165: origin
                    (Bb_survivorat_s_p4)

                    ; #14141: <==negation-removal== 25745 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #15803: <==negation-removal== 28165 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_c)
                           (at_c_p4))
        :effect (and
                    ; #29407: <==closure== 78967 (pos)
                    (Pc_survivorat_s_p4)

                    ; #78967: origin
                    (Bc_survivorat_s_p4)

                    ; #15213: <==negation-removal== 78967 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #24533: <==negation-removal== 29407 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #69964: origin
                    (Ba_survivorat_s_p5)

                    ; #70984: <==closure== 69964 (pos)
                    (Pa_survivorat_s_p5)

                    ; #32000: <==negation-removal== 70984 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #37995: <==negation-removal== 69964 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #42920: <==closure== 74913 (pos)
                    (Pb_survivorat_s_p5)

                    ; #74913: origin
                    (Bb_survivorat_s_p5)

                    ; #52659: <==negation-removal== 42920 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #88127: <==negation-removal== 74913 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #24768: <==closure== 78991 (pos)
                    (Pc_survivorat_s_p5)

                    ; #78991: origin
                    (Bc_survivorat_s_p5)

                    ; #35346: <==negation-removal== 78991 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #55292: <==negation-removal== 24768 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_a)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #69964: origin
                    (Ba_survivorat_s_p5)

                    ; #70984: <==closure== 69964 (pos)
                    (Pa_survivorat_s_p5)

                    ; #32000: <==negation-removal== 70984 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #37995: <==negation-removal== 69964 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #42920: <==closure== 74913 (pos)
                    (Pb_survivorat_s_p5)

                    ; #74913: origin
                    (Bb_survivorat_s_p5)

                    ; #52659: <==negation-removal== 42920 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #88127: <==negation-removal== 74913 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #24768: <==closure== 78991 (pos)
                    (Pc_survivorat_s_p5)

                    ; #78991: origin
                    (Bc_survivorat_s_p5)

                    ; #35346: <==negation-removal== 78991 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #55292: <==negation-removal== 24768 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #69964: origin
                    (Ba_survivorat_s_p5)

                    ; #70984: <==closure== 69964 (pos)
                    (Pa_survivorat_s_p5)

                    ; #32000: <==negation-removal== 70984 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #37995: <==negation-removal== 69964 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #42920: <==closure== 74913 (pos)
                    (Pb_survivorat_s_p5)

                    ; #74913: origin
                    (Bb_survivorat_s_p5)

                    ; #52659: <==negation-removal== 42920 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #88127: <==negation-removal== 74913 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #24768: <==closure== 78991 (pos)
                    (Pc_survivorat_s_p5)

                    ; #78991: origin
                    (Bc_survivorat_s_p5)

                    ; #35346: <==negation-removal== 78991 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #55292: <==negation-removal== 24768 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #34719: <==closure== 79742 (pos)
                    (Pa_survivorat_s_p6)

                    ; #79742: origin
                    (Ba_survivorat_s_p6)

                    ; #49063: <==negation-removal== 34719 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #76862: <==negation-removal== 79742 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #43512: <==closure== 46809 (pos)
                    (Pb_survivorat_s_p6)

                    ; #46809: origin
                    (Bb_survivorat_s_p6)

                    ; #86764: <==negation-removal== 46809 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #97658: <==negation-removal== 43512 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #45425: <==closure== 60800 (pos)
                    (Pc_survivorat_s_p6)

                    ; #60800: origin
                    (Bc_survivorat_s_p6)

                    ; #56459: <==negation-removal== 60800 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #60003: <==negation-removal== 45425 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #34719: <==closure== 79742 (pos)
                    (Pa_survivorat_s_p6)

                    ; #79742: origin
                    (Ba_survivorat_s_p6)

                    ; #49063: <==negation-removal== 34719 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #76862: <==negation-removal== 79742 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #43512: <==closure== 46809 (pos)
                    (Pb_survivorat_s_p6)

                    ; #46809: origin
                    (Bb_survivorat_s_p6)

                    ; #86764: <==negation-removal== 46809 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #97658: <==negation-removal== 43512 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #45425: <==closure== 60800 (pos)
                    (Pc_survivorat_s_p6)

                    ; #60800: origin
                    (Bc_survivorat_s_p6)

                    ; #56459: <==negation-removal== 60800 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #60003: <==negation-removal== 45425 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_a)
                           (at_c_p6))
        :effect (and
                    ; #34719: <==closure== 79742 (pos)
                    (Pa_survivorat_s_p6)

                    ; #79742: origin
                    (Ba_survivorat_s_p6)

                    ; #49063: <==negation-removal== 34719 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #76862: <==negation-removal== 79742 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_b)
                           (at_c_p6))
        :effect (and
                    ; #43512: <==closure== 46809 (pos)
                    (Pb_survivorat_s_p6)

                    ; #46809: origin
                    (Bb_survivorat_s_p6)

                    ; #86764: <==negation-removal== 46809 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #97658: <==negation-removal== 43512 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (leader_c)
                           (at_c_p6))
        :effect (and
                    ; #45425: <==closure== 60800 (pos)
                    (Pc_survivorat_s_p6)

                    ; #60800: origin
                    (Bc_survivorat_s_p6)

                    ; #56459: <==negation-removal== 60800 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #60003: <==negation-removal== 45425 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (leader_a)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #37370: origin
                    (Ba_survivorat_s_p7)

                    ; #49563: <==closure== 37370 (pos)
                    (Pa_survivorat_s_p7)

                    ; #13293: <==negation-removal== 37370 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #38338: <==negation-removal== 49563 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Pa_survivorat_s_p7)
                           (leader_b)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #23687: origin
                    (Bb_survivorat_s_p7)

                    ; #90101: <==closure== 23687 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50644: <==negation-removal== 23687 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #71574: <==negation-removal== 90101 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (leader_c)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #20972: origin
                    (Bc_survivorat_s_p7)

                    ; #40390: <==closure== 20972 (pos)
                    (Pc_survivorat_s_p7)

                    ; #59951: <==negation-removal== 20972 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #84182: <==negation-removal== 40390 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #37370: origin
                    (Ba_survivorat_s_p7)

                    ; #49563: <==closure== 37370 (pos)
                    (Pa_survivorat_s_p7)

                    ; #13293: <==negation-removal== 37370 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #38338: <==negation-removal== 49563 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #23687: origin
                    (Bb_survivorat_s_p7)

                    ; #90101: <==closure== 23687 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50644: <==negation-removal== 23687 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #71574: <==negation-removal== 90101 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #20972: origin
                    (Bc_survivorat_s_p7)

                    ; #40390: <==closure== 20972 (pos)
                    (Pc_survivorat_s_p7)

                    ; #59951: <==negation-removal== 20972 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #84182: <==negation-removal== 40390 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #37370: origin
                    (Ba_survivorat_s_p7)

                    ; #49563: <==closure== 37370 (pos)
                    (Pa_survivorat_s_p7)

                    ; #13293: <==negation-removal== 37370 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #38338: <==negation-removal== 49563 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (leader_b)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #23687: origin
                    (Bb_survivorat_s_p7)

                    ; #90101: <==closure== 23687 (pos)
                    (Pb_survivorat_s_p7)

                    ; #50644: <==negation-removal== 23687 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #71574: <==negation-removal== 90101 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (at_c_p7)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #20972: origin
                    (Bc_survivorat_s_p7)

                    ; #40390: <==closure== 20972 (pos)
                    (Pc_survivorat_s_p7)

                    ; #59951: <==negation-removal== 20972 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #84182: <==negation-removal== 40390 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (at_a_p8)
                           (leader_a)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #52080: origin
                    (Ba_survivorat_s_p8)

                    ; #64514: <==closure== 52080 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55508: <==negation-removal== 52080 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #88481: <==negation-removal== 64514 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (leader_b)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #10182: origin
                    (Bb_survivorat_s_p8)

                    ; #80481: <==closure== 10182 (pos)
                    (Pb_survivorat_s_p8)

                    ; #54612: <==negation-removal== 10182 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #75364: <==negation-removal== 80481 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (leader_c)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #17219: origin
                    (Bc_survivorat_s_p8)

                    ; #29476: <==closure== 17219 (pos)
                    (Pc_survivorat_s_p8)

                    ; #15434: <==negation-removal== 29476 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #50976: <==negation-removal== 17219 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_a)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #52080: origin
                    (Ba_survivorat_s_p8)

                    ; #64514: <==closure== 52080 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55508: <==negation-removal== 52080 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #88481: <==negation-removal== 64514 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_b)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #10182: origin
                    (Bb_survivorat_s_p8)

                    ; #80481: <==closure== 10182 (pos)
                    (Pb_survivorat_s_p8)

                    ; #54612: <==negation-removal== 10182 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #75364: <==negation-removal== 80481 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_c)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #17219: origin
                    (Bc_survivorat_s_p8)

                    ; #29476: <==closure== 17219 (pos)
                    (Pc_survivorat_s_p8)

                    ; #15434: <==negation-removal== 29476 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #50976: <==negation-removal== 17219 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (leader_a)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #52080: origin
                    (Ba_survivorat_s_p8)

                    ; #64514: <==closure== 52080 (pos)
                    (Pa_survivorat_s_p8)

                    ; #55508: <==negation-removal== 52080 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #88481: <==negation-removal== 64514 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #10182: origin
                    (Bb_survivorat_s_p8)

                    ; #80481: <==closure== 10182 (pos)
                    (Pb_survivorat_s_p8)

                    ; #54612: <==negation-removal== 10182 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #75364: <==negation-removal== 80481 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #17219: origin
                    (Bc_survivorat_s_p8)

                    ; #29476: <==closure== 17219 (pos)
                    (Pc_survivorat_s_p8)

                    ; #15434: <==negation-removal== 29476 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #50976: <==negation-removal== 17219 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_a)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #76214: <==closure== 87050 (pos)
                    (Pa_survivorat_s_p9)

                    ; #87050: origin
                    (Ba_survivorat_s_p9)

                    ; #68755: <==negation-removal== 76214 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #89369: <==negation-removal== 87050 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_b)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #21779: origin
                    (Bb_survivorat_s_p9)

                    ; #33779: <==closure== 21779 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12736: <==negation-removal== 33779 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #68953: <==negation-removal== 21779 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (leader_c)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #29978: <==closure== 56421 (pos)
                    (Pc_survivorat_s_p9)

                    ; #56421: origin
                    (Bc_survivorat_s_p9)

                    ; #11542: <==negation-removal== 56421 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #15460: <==negation-removal== 29978 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Bb_survivorat_s_p9)
                           (leader_a)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #76214: <==closure== 87050 (pos)
                    (Pa_survivorat_s_p9)

                    ; #87050: origin
                    (Ba_survivorat_s_p9)

                    ; #68755: <==negation-removal== 76214 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #89369: <==negation-removal== 87050 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (leader_b)
                           (at_b_p9))
        :effect (and
                    ; #21779: origin
                    (Bb_survivorat_s_p9)

                    ; #33779: <==closure== 21779 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12736: <==negation-removal== 33779 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #68953: <==negation-removal== 21779 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9))
        :effect (and
                    ; #29978: <==closure== 56421 (pos)
                    (Pc_survivorat_s_p9)

                    ; #56421: origin
                    (Bc_survivorat_s_p9)

                    ; #11542: <==negation-removal== 56421 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #15460: <==negation-removal== 29978 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #76214: <==closure== 87050 (pos)
                    (Pa_survivorat_s_p9)

                    ; #87050: origin
                    (Ba_survivorat_s_p9)

                    ; #68755: <==negation-removal== 76214 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #89369: <==negation-removal== 87050 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_b)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #21779: origin
                    (Bb_survivorat_s_p9)

                    ; #33779: <==closure== 21779 (pos)
                    (Pb_survivorat_s_p9)

                    ; #12736: <==negation-removal== 33779 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #68953: <==negation-removal== 21779 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #29978: <==closure== 56421 (pos)
                    (Pc_survivorat_s_p9)

                    ; #56421: origin
                    (Bc_survivorat_s_p9)

                    ; #11542: <==negation-removal== 56421 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #15460: <==negation-removal== 29978 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46651: origin
                    (at_a_p1)

                    ; #54460: origin
                    (not_at_a_p10)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #54460: origin
                    (not_at_a_p10)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11)
                           (not (leader_a)))
        :effect (and
                    ; #54460: origin
                    (not_at_a_p10)

                    ; #90170: origin
                    (at_a_p11)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27505: origin
                    (at_a_p12)

                    ; #54460: origin
                    (not_at_a_p10)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #54460: origin
                    (not_at_a_p10)

                    ; #68262: origin
                    (at_a_p2)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #54460: origin
                    (not_at_a_p10)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #31134: origin
                    (at_a_p4)

                    ; #54460: origin
                    (not_at_a_p10)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #54460: origin
                    (not_at_a_p10)

                    ; #71863: origin
                    (at_a_p5)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #51132: origin
                    (at_a_p6)

                    ; #54460: origin
                    (not_at_a_p10)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7)
                           (not (leader_a)))
        :effect (and
                    ; #54460: origin
                    (not_at_a_p10)

                    ; #77222: origin
                    (at_a_p7)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #36764: origin
                    (at_a_p8)

                    ; #54460: origin
                    (not_at_a_p10)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #54460: origin
                    (not_at_a_p10)

                    ; #76594: origin
                    (at_a_p9)

                    ; #15764: <==negation-removal== 54460 (pos)
                    (not (at_a_p10))

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #46651: origin
                    (at_a_p1)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #82589: origin
                    (not_at_a_p11)

                    ; #90170: origin
                    (at_a_p11)

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #27505: origin
                    (at_a_p12)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #68262: origin
                    (at_a_p2)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #31134: origin
                    (at_a_p4)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #71863: origin
                    (at_a_p5)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #51132: origin
                    (at_a_p6)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #77222: origin
                    (at_a_p7)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #36764: origin
                    (at_a_p8)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #76594: origin
                    (at_a_p9)

                    ; #82589: origin
                    (not_at_a_p11)

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))

                    ; #90170: <==negation-removal== 82589 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #43889: origin
                    (not_at_a_p12)

                    ; #46651: origin
                    (at_a_p1)

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #43889: origin
                    (not_at_a_p12)

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11)
                           (not (leader_a)))
        :effect (and
                    ; #43889: origin
                    (not_at_a_p12)

                    ; #90170: origin
                    (at_a_p11)

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27505: origin
                    (at_a_p12)

                    ; #43889: origin
                    (not_at_a_p12)

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2)
                           (not (leader_a)))
        :effect (and
                    ; #43889: origin
                    (not_at_a_p12)

                    ; #68262: origin
                    (at_a_p2)

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #43889: origin
                    (not_at_a_p12)

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4)
                           (not (leader_a)))
        :effect (and
                    ; #31134: origin
                    (at_a_p4)

                    ; #43889: origin
                    (not_at_a_p12)

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5)
                           (not (leader_a)))
        :effect (and
                    ; #43889: origin
                    (not_at_a_p12)

                    ; #71863: origin
                    (at_a_p5)

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #43889: origin
                    (not_at_a_p12)

                    ; #51132: origin
                    (at_a_p6)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #43889: origin
                    (not_at_a_p12)

                    ; #77222: origin
                    (at_a_p7)

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #36764: origin
                    (at_a_p8)

                    ; #43889: origin
                    (not_at_a_p12)

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9)
                           (not (leader_a)))
        :effect (and
                    ; #43889: origin
                    (not_at_a_p12)

                    ; #76594: origin
                    (at_a_p9)

                    ; #27505: <==negation-removal== 43889 (pos)
                    (not (at_a_p12))

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #24875: origin
                    (not_at_a_p1)

                    ; #46651: origin
                    (at_a_p1)

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #24875: origin
                    (not_at_a_p1)

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #24875: origin
                    (not_at_a_p1)

                    ; #90170: origin
                    (at_a_p11)

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12)
                           (not (leader_a)))
        :effect (and
                    ; #24875: origin
                    (not_at_a_p1)

                    ; #27505: origin
                    (at_a_p12)

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #24875: origin
                    (not_at_a_p1)

                    ; #68262: origin
                    (at_a_p2)

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #24875: origin
                    (not_at_a_p1)

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #24875: origin
                    (not_at_a_p1)

                    ; #31134: origin
                    (at_a_p4)

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #24875: origin
                    (not_at_a_p1)

                    ; #71863: origin
                    (at_a_p5)

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #24875: origin
                    (not_at_a_p1)

                    ; #51132: origin
                    (at_a_p6)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #24875: origin
                    (not_at_a_p1)

                    ; #77222: origin
                    (at_a_p7)

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #24875: origin
                    (not_at_a_p1)

                    ; #36764: origin
                    (at_a_p8)

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #24875: origin
                    (not_at_a_p1)

                    ; #76594: origin
                    (at_a_p9)

                    ; #46651: <==negation-removal== 24875 (pos)
                    (not (at_a_p1))

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #46651: origin
                    (at_a_p1)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #86392: origin
                    (not_at_a_p2)

                    ; #90170: origin
                    (at_a_p11)

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27505: origin
                    (at_a_p12)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68262: origin
                    (at_a_p2)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #31134: origin
                    (at_a_p4)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #71863: origin
                    (at_a_p5)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6)
                           (not (leader_a)))
        :effect (and
                    ; #51132: origin
                    (at_a_p6)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #77222: origin
                    (at_a_p7)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #36764: origin
                    (at_a_p8)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #76594: origin
                    (at_a_p9)

                    ; #86392: origin
                    (not_at_a_p2)

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))

                    ; #68262: <==negation-removal== 86392 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46651: origin
                    (at_a_p1)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #82434: origin
                    (not_at_a_p3)

                    ; #90170: origin
                    (at_a_p11)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27505: origin
                    (at_a_p12)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68262: origin
                    (at_a_p2)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #31134: origin
                    (at_a_p4)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5)
                           (not (leader_a)))
        :effect (and
                    ; #71863: origin
                    (at_a_p5)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #51132: origin
                    (at_a_p6)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #77222: origin
                    (at_a_p7)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8)
                           (not (leader_a)))
        :effect (and
                    ; #36764: origin
                    (at_a_p8)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #76594: origin
                    (at_a_p9)

                    ; #82434: origin
                    (not_at_a_p3)

                    ; #23849: <==negation-removal== 82434 (pos)
                    (not (at_a_p3))

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #46651: origin
                    (at_a_p1)

                    ; #63439: origin
                    (not_at_a_p4)

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #63439: origin
                    (not_at_a_p4)

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #63439: origin
                    (not_at_a_p4)

                    ; #90170: origin
                    (at_a_p11)

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #27505: origin
                    (at_a_p12)

                    ; #63439: origin
                    (not_at_a_p4)

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #63439: origin
                    (not_at_a_p4)

                    ; #68262: origin
                    (at_a_p2)

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #63439: origin
                    (not_at_a_p4)

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #31134: origin
                    (at_a_p4)

                    ; #63439: origin
                    (not_at_a_p4)

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #63439: origin
                    (not_at_a_p4)

                    ; #71863: origin
                    (at_a_p5)

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #51132: origin
                    (at_a_p6)

                    ; #63439: origin
                    (not_at_a_p4)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #63439: origin
                    (not_at_a_p4)

                    ; #77222: origin
                    (at_a_p7)

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #36764: origin
                    (at_a_p8)

                    ; #63439: origin
                    (not_at_a_p4)

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #63439: origin
                    (not_at_a_p4)

                    ; #76594: origin
                    (at_a_p9)

                    ; #31134: <==negation-removal== 63439 (pos)
                    (not (at_a_p4))

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46651: origin
                    (at_a_p1)

                    ; #67678: origin
                    (not_at_a_p5)

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #67678: origin
                    (not_at_a_p5)

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11)
                           (not (leader_a)))
        :effect (and
                    ; #67678: origin
                    (not_at_a_p5)

                    ; #90170: origin
                    (at_a_p11)

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27505: origin
                    (at_a_p12)

                    ; #67678: origin
                    (not_at_a_p5)

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #67678: origin
                    (not_at_a_p5)

                    ; #68262: origin
                    (at_a_p2)

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #67678: origin
                    (not_at_a_p5)

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #31134: origin
                    (at_a_p4)

                    ; #67678: origin
                    (not_at_a_p5)

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #67678: origin
                    (not_at_a_p5)

                    ; #71863: origin
                    (at_a_p5)

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #51132: origin
                    (at_a_p6)

                    ; #67678: origin
                    (not_at_a_p5)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7)
                           (not (leader_a)))
        :effect (and
                    ; #67678: origin
                    (not_at_a_p5)

                    ; #77222: origin
                    (at_a_p7)

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #36764: origin
                    (at_a_p8)

                    ; #67678: origin
                    (not_at_a_p5)

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #67678: origin
                    (not_at_a_p5)

                    ; #76594: origin
                    (at_a_p9)

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))

                    ; #71863: <==negation-removal== 67678 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #46651: origin
                    (at_a_p1)

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #21729: origin
                    (not_at_a_p6)

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #90170: origin
                    (at_a_p11)

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #27505: origin
                    (at_a_p12)

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #68262: origin
                    (at_a_p2)

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #23849: origin
                    (at_a_p3)

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #31134: origin
                    (at_a_p4)

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #71863: origin
                    (at_a_p5)

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #51132: origin
                    (at_a_p6)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #77222: origin
                    (at_a_p7)

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #36764: origin
                    (at_a_p8)

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #21729: origin
                    (not_at_a_p6)

                    ; #76594: origin
                    (at_a_p9)

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))

                    ; #51132: <==negation-removal== 21729 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25696: origin
                    (not_at_a_p7)

                    ; #46651: origin
                    (at_a_p1)

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #25696: origin
                    (not_at_a_p7)

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25696: origin
                    (not_at_a_p7)

                    ; #90170: origin
                    (at_a_p11)

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25696: origin
                    (not_at_a_p7)

                    ; #27505: origin
                    (at_a_p12)

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25696: origin
                    (not_at_a_p7)

                    ; #68262: origin
                    (at_a_p2)

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #25696: origin
                    (not_at_a_p7)

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25696: origin
                    (not_at_a_p7)

                    ; #31134: origin
                    (at_a_p4)

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25696: origin
                    (not_at_a_p7)

                    ; #71863: origin
                    (at_a_p5)

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25696: origin
                    (not_at_a_p7)

                    ; #51132: origin
                    (at_a_p6)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25696: origin
                    (not_at_a_p7)

                    ; #77222: origin
                    (at_a_p7)

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25696: origin
                    (not_at_a_p7)

                    ; #36764: origin
                    (at_a_p8)

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #25696: origin
                    (not_at_a_p7)

                    ; #76594: origin
                    (at_a_p9)

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))

                    ; #77222: <==negation-removal== 25696 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46651: origin
                    (at_a_p1)

                    ; #72940: origin
                    (not_at_a_p8)

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #72940: origin
                    (not_at_a_p8)

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11)
                           (not (leader_a)))
        :effect (and
                    ; #72940: origin
                    (not_at_a_p8)

                    ; #90170: origin
                    (at_a_p11)

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27505: origin
                    (at_a_p12)

                    ; #72940: origin
                    (not_at_a_p8)

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68262: origin
                    (at_a_p2)

                    ; #72940: origin
                    (not_at_a_p8)

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #72940: origin
                    (not_at_a_p8)

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #31134: origin
                    (at_a_p4)

                    ; #72940: origin
                    (not_at_a_p8)

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #71863: origin
                    (at_a_p5)

                    ; #72940: origin
                    (not_at_a_p8)

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #51132: origin
                    (at_a_p6)

                    ; #72940: origin
                    (not_at_a_p8)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #72940: origin
                    (not_at_a_p8)

                    ; #77222: origin
                    (at_a_p7)

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #36764: origin
                    (at_a_p8)

                    ; #72940: origin
                    (not_at_a_p8)

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #72940: origin
                    (not_at_a_p8)

                    ; #76594: origin
                    (at_a_p9)

                    ; #36764: <==negation-removal== 72940 (pos)
                    (not (at_a_p8))

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46651: origin
                    (at_a_p1)

                    ; #51083: origin
                    (not_at_a_p9)

                    ; #24875: <==negation-removal== 46651 (pos)
                    (not (not_at_a_p1))

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15764: origin
                    (at_a_p10)

                    ; #51083: origin
                    (not_at_a_p9)

                    ; #54460: <==negation-removal== 15764 (pos)
                    (not (not_at_a_p10))

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11)
                           (not (leader_a)))
        :effect (and
                    ; #51083: origin
                    (not_at_a_p9)

                    ; #90170: origin
                    (at_a_p11)

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))

                    ; #82589: <==negation-removal== 90170 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12)
                           (not (leader_a)))
        :effect (and
                    ; #27505: origin
                    (at_a_p12)

                    ; #51083: origin
                    (not_at_a_p9)

                    ; #43889: <==negation-removal== 27505 (pos)
                    (not (not_at_a_p12))

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2)
                           (not (leader_a)))
        :effect (and
                    ; #51083: origin
                    (not_at_a_p9)

                    ; #68262: origin
                    (at_a_p2)

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))

                    ; #86392: <==negation-removal== 68262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3)
                           (not (leader_a)))
        :effect (and
                    ; #23849: origin
                    (at_a_p3)

                    ; #51083: origin
                    (not_at_a_p9)

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))

                    ; #82434: <==negation-removal== 23849 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4)
                           (not (leader_a)))
        :effect (and
                    ; #31134: origin
                    (at_a_p4)

                    ; #51083: origin
                    (not_at_a_p9)

                    ; #63439: <==negation-removal== 31134 (pos)
                    (not (not_at_a_p4))

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5)
                           (not (leader_a)))
        :effect (and
                    ; #51083: origin
                    (not_at_a_p9)

                    ; #71863: origin
                    (at_a_p5)

                    ; #67678: <==negation-removal== 71863 (pos)
                    (not (not_at_a_p5))

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51083: origin
                    (not_at_a_p9)

                    ; #51132: origin
                    (at_a_p6)

                    ; #21729: <==negation-removal== 51132 (pos)
                    (not (not_at_a_p6))

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51083: origin
                    (not_at_a_p9)

                    ; #77222: origin
                    (at_a_p7)

                    ; #25696: <==negation-removal== 77222 (pos)
                    (not (not_at_a_p7))

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #36764: origin
                    (at_a_p8)

                    ; #51083: origin
                    (not_at_a_p9)

                    ; #72940: <==negation-removal== 36764 (pos)
                    (not (not_at_a_p8))

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51083: origin
                    (not_at_a_p9)

                    ; #76594: origin
                    (at_a_p9)

                    ; #51083: <==negation-removal== 76594 (pos)
                    (not (not_at_a_p9))

                    ; #76594: <==negation-removal== 51083 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #34786: origin
                    (not_at_b_p10)

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10)
                           (not (leader_b)))
        :effect (and
                    ; #34786: origin
                    (not_at_b_p10)

                    ; #53066: origin
                    (at_b_p10)

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #34786: origin
                    (not_at_b_p10)

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12)
                           (not (leader_b)))
        :effect (and
                    ; #26211: origin
                    (at_b_p12)

                    ; #34786: origin
                    (not_at_b_p10)

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34786: origin
                    (not_at_b_p10)

                    ; #58990: origin
                    (at_b_p2)

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #34786: origin
                    (not_at_b_p10)

                    ; #46276: origin
                    (at_b_p3)

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #34786: origin
                    (not_at_b_p10)

                    ; #34874: origin
                    (at_b_p4)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #34786: origin
                    (not_at_b_p10)

                    ; #59674: origin
                    (at_b_p5)

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #34786: origin
                    (not_at_b_p10)

                    ; #90310: origin
                    (at_b_p6)

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34786: origin
                    (not_at_b_p10)

                    ; #50047: origin
                    (at_b_p7)

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #34786: origin
                    (not_at_b_p10)

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #34786: origin
                    (not_at_b_p10)

                    ; #44382: origin
                    (at_b_p9)

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))

                    ; #53066: <==negation-removal== 34786 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10)
                           (not (leader_b)))
        :effect (and
                    ; #53066: origin
                    (at_b_p10)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #26211: origin
                    (at_b_p12)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #58990: origin
                    (at_b_p2)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #46276: origin
                    (at_b_p3)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4)
                           (not (leader_b)))
        :effect (and
                    ; #34874: origin
                    (at_b_p4)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5)
                           (not (leader_b)))
        :effect (and
                    ; #59674: origin
                    (at_b_p5)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #73718: origin
                    (not_at_b_p11)

                    ; #90310: origin
                    (at_b_p6)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50047: origin
                    (at_b_p7)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #44382: origin
                    (at_b_p9)

                    ; #73718: origin
                    (not_at_b_p11)

                    ; #23181: <==negation-removal== 73718 (pos)
                    (not (at_b_p11))

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #25827: origin
                    (not_at_b_p12)

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #25827: origin
                    (not_at_b_p12)

                    ; #53066: origin
                    (at_b_p10)

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #25827: origin
                    (not_at_b_p12)

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25827: origin
                    (not_at_b_p12)

                    ; #26211: origin
                    (at_b_p12)

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25827: origin
                    (not_at_b_p12)

                    ; #58990: origin
                    (at_b_p2)

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25827: origin
                    (not_at_b_p12)

                    ; #46276: origin
                    (at_b_p3)

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25827: origin
                    (not_at_b_p12)

                    ; #34874: origin
                    (at_b_p4)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25827: origin
                    (not_at_b_p12)

                    ; #59674: origin
                    (at_b_p5)

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25827: origin
                    (not_at_b_p12)

                    ; #90310: origin
                    (at_b_p6)

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25827: origin
                    (not_at_b_p12)

                    ; #50047: origin
                    (at_b_p7)

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #25827: origin
                    (not_at_b_p12)

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25827: origin
                    (not_at_b_p12)

                    ; #44382: origin
                    (at_b_p9)

                    ; #26211: <==negation-removal== 25827 (pos)
                    (not (at_b_p12))

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #30532: origin
                    (not_at_b_p1)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #30532: origin
                    (not_at_b_p1)

                    ; #53066: origin
                    (at_b_p10)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #30532: origin
                    (not_at_b_p1)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12)
                           (not (leader_b)))
        :effect (and
                    ; #26211: origin
                    (at_b_p12)

                    ; #30532: origin
                    (not_at_b_p1)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #30532: origin
                    (not_at_b_p1)

                    ; #58990: origin
                    (at_b_p2)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #30532: origin
                    (not_at_b_p1)

                    ; #46276: origin
                    (at_b_p3)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #30532: origin
                    (not_at_b_p1)

                    ; #34874: origin
                    (at_b_p4)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #30532: origin
                    (not_at_b_p1)

                    ; #59674: origin
                    (at_b_p5)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #30532: origin
                    (not_at_b_p1)

                    ; #90310: origin
                    (at_b_p6)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30532: origin
                    (not_at_b_p1)

                    ; #50047: origin
                    (at_b_p7)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #30532: origin
                    (not_at_b_p1)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #30532: origin
                    (not_at_b_p1)

                    ; #44382: origin
                    (at_b_p9)

                    ; #11825: <==negation-removal== 30532 (pos)
                    (not (at_b_p1))

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #53066: origin
                    (at_b_p10)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #26211: origin
                    (at_b_p12)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #58990: origin
                    (at_b_p2)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #46276: origin
                    (at_b_p3)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34874: origin
                    (at_b_p4)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #59674: origin
                    (at_b_p5)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #90310: origin
                    (at_b_p6)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #50047: origin
                    (at_b_p7)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #44382: origin
                    (at_b_p9)

                    ; #92181: origin
                    (not_at_b_p2)

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))

                    ; #58990: <==negation-removal== 92181 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #29457: origin
                    (not_at_b_p3)

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10)
                           (not (leader_b)))
        :effect (and
                    ; #29457: origin
                    (not_at_b_p3)

                    ; #53066: origin
                    (at_b_p10)

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #29457: origin
                    (not_at_b_p3)

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #26211: origin
                    (at_b_p12)

                    ; #29457: origin
                    (not_at_b_p3)

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29457: origin
                    (not_at_b_p3)

                    ; #58990: origin
                    (at_b_p2)

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29457: origin
                    (not_at_b_p3)

                    ; #46276: origin
                    (at_b_p3)

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29457: origin
                    (not_at_b_p3)

                    ; #34874: origin
                    (at_b_p4)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29457: origin
                    (not_at_b_p3)

                    ; #59674: origin
                    (at_b_p5)

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29457: origin
                    (not_at_b_p3)

                    ; #90310: origin
                    (at_b_p6)

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29457: origin
                    (not_at_b_p3)

                    ; #50047: origin
                    (at_b_p7)

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #29457: origin
                    (not_at_b_p3)

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29457: origin
                    (not_at_b_p3)

                    ; #44382: origin
                    (at_b_p9)

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))

                    ; #46276: <==negation-removal== 29457 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #17052: origin
                    (not_at_b_p4)

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #53066: origin
                    (at_b_p10)

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #23181: origin
                    (at_b_p11)

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #26211: origin
                    (at_b_p12)

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #58990: origin
                    (at_b_p2)

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #46276: origin
                    (at_b_p3)

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #34874: origin
                    (at_b_p4)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #59674: origin
                    (at_b_p5)

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #90310: origin
                    (at_b_p6)

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #50047: origin
                    (at_b_p7)

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #23423: origin
                    (at_b_p8)

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17052: origin
                    (not_at_b_p4)

                    ; #44382: origin
                    (at_b_p9)

                    ; #34874: <==negation-removal== 17052 (pos)
                    (not (at_b_p4))

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #55469: origin
                    (not_at_b_p5)

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10)
                           (not (leader_b)))
        :effect (and
                    ; #53066: origin
                    (at_b_p10)

                    ; #55469: origin
                    (not_at_b_p5)

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #55469: origin
                    (not_at_b_p5)

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12)
                           (not (leader_b)))
        :effect (and
                    ; #26211: origin
                    (at_b_p12)

                    ; #55469: origin
                    (not_at_b_p5)

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #55469: origin
                    (not_at_b_p5)

                    ; #58990: origin
                    (at_b_p2)

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #46276: origin
                    (at_b_p3)

                    ; #55469: origin
                    (not_at_b_p5)

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #34874: origin
                    (at_b_p4)

                    ; #55469: origin
                    (not_at_b_p5)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #55469: origin
                    (not_at_b_p5)

                    ; #59674: origin
                    (at_b_p5)

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #55469: origin
                    (not_at_b_p5)

                    ; #90310: origin
                    (at_b_p6)

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50047: origin
                    (at_b_p7)

                    ; #55469: origin
                    (not_at_b_p5)

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #55469: origin
                    (not_at_b_p5)

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #44382: origin
                    (at_b_p9)

                    ; #55469: origin
                    (not_at_b_p5)

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))

                    ; #59674: <==negation-removal== 55469 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #34836: origin
                    (not_at_b_p6)

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10)
                           (not (leader_b)))
        :effect (and
                    ; #34836: origin
                    (not_at_b_p6)

                    ; #53066: origin
                    (at_b_p10)

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #34836: origin
                    (not_at_b_p6)

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #26211: origin
                    (at_b_p12)

                    ; #34836: origin
                    (not_at_b_p6)

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34836: origin
                    (not_at_b_p6)

                    ; #58990: origin
                    (at_b_p2)

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #34836: origin
                    (not_at_b_p6)

                    ; #46276: origin
                    (at_b_p3)

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #34836: origin
                    (not_at_b_p6)

                    ; #34874: origin
                    (at_b_p4)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #34836: origin
                    (not_at_b_p6)

                    ; #59674: origin
                    (at_b_p5)

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #34836: origin
                    (not_at_b_p6)

                    ; #90310: origin
                    (at_b_p6)

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34836: origin
                    (not_at_b_p6)

                    ; #50047: origin
                    (at_b_p7)

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #34836: origin
                    (not_at_b_p6)

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #34836: origin
                    (not_at_b_p6)

                    ; #44382: origin
                    (at_b_p9)

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))

                    ; #90310: <==negation-removal== 34836 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #30606: origin
                    (not_at_b_p7)

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10)
                           (not (leader_b)))
        :effect (and
                    ; #30606: origin
                    (not_at_b_p7)

                    ; #53066: origin
                    (at_b_p10)

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #30606: origin
                    (not_at_b_p7)

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #26211: origin
                    (at_b_p12)

                    ; #30606: origin
                    (not_at_b_p7)

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30606: origin
                    (not_at_b_p7)

                    ; #58990: origin
                    (at_b_p2)

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30606: origin
                    (not_at_b_p7)

                    ; #46276: origin
                    (at_b_p3)

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30606: origin
                    (not_at_b_p7)

                    ; #34874: origin
                    (at_b_p4)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5)
                           (not (leader_b)))
        :effect (and
                    ; #30606: origin
                    (not_at_b_p7)

                    ; #59674: origin
                    (at_b_p5)

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30606: origin
                    (not_at_b_p7)

                    ; #90310: origin
                    (at_b_p6)

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30606: origin
                    (not_at_b_p7)

                    ; #50047: origin
                    (at_b_p7)

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #30606: origin
                    (not_at_b_p7)

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30606: origin
                    (not_at_b_p7)

                    ; #44382: origin
                    (at_b_p9)

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))

                    ; #50047: <==negation-removal== 30606 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #46665: origin
                    (not_at_b_p8)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #46665: origin
                    (not_at_b_p8)

                    ; #53066: origin
                    (at_b_p10)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #46665: origin
                    (not_at_b_p8)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26211: origin
                    (at_b_p12)

                    ; #46665: origin
                    (not_at_b_p8)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #46665: origin
                    (not_at_b_p8)

                    ; #58990: origin
                    (at_b_p2)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #46276: origin
                    (at_b_p3)

                    ; #46665: origin
                    (not_at_b_p8)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #34874: origin
                    (at_b_p4)

                    ; #46665: origin
                    (not_at_b_p8)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #46665: origin
                    (not_at_b_p8)

                    ; #59674: origin
                    (at_b_p5)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #46665: origin
                    (not_at_b_p8)

                    ; #90310: origin
                    (at_b_p6)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #46665: origin
                    (not_at_b_p8)

                    ; #50047: origin
                    (at_b_p7)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #46665: origin
                    (not_at_b_p8)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #44382: origin
                    (at_b_p9)

                    ; #46665: origin
                    (not_at_b_p8)

                    ; #23423: <==negation-removal== 46665 (pos)
                    (not (at_b_p8))

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #11825: origin
                    (at_b_p1)

                    ; #37403: origin
                    (not_at_b_p9)

                    ; #30532: <==negation-removal== 11825 (pos)
                    (not (not_at_b_p1))

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37403: origin
                    (not_at_b_p9)

                    ; #53066: origin
                    (at_b_p10)

                    ; #34786: <==negation-removal== 53066 (pos)
                    (not (not_at_b_p10))

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #23181: origin
                    (at_b_p11)

                    ; #37403: origin
                    (not_at_b_p9)

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))

                    ; #73718: <==negation-removal== 23181 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #26211: origin
                    (at_b_p12)

                    ; #37403: origin
                    (not_at_b_p9)

                    ; #25827: <==negation-removal== 26211 (pos)
                    (not (not_at_b_p12))

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37403: origin
                    (not_at_b_p9)

                    ; #58990: origin
                    (at_b_p2)

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))

                    ; #92181: <==negation-removal== 58990 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37403: origin
                    (not_at_b_p9)

                    ; #46276: origin
                    (at_b_p3)

                    ; #29457: <==negation-removal== 46276 (pos)
                    (not (not_at_b_p3))

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #34874: origin
                    (at_b_p4)

                    ; #37403: origin
                    (not_at_b_p9)

                    ; #17052: <==negation-removal== 34874 (pos)
                    (not (not_at_b_p4))

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37403: origin
                    (not_at_b_p9)

                    ; #59674: origin
                    (at_b_p5)

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))

                    ; #55469: <==negation-removal== 59674 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37403: origin
                    (not_at_b_p9)

                    ; #90310: origin
                    (at_b_p6)

                    ; #34836: <==negation-removal== 90310 (pos)
                    (not (not_at_b_p6))

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37403: origin
                    (not_at_b_p9)

                    ; #50047: origin
                    (at_b_p7)

                    ; #30606: <==negation-removal== 50047 (pos)
                    (not (not_at_b_p7))

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #23423: origin
                    (at_b_p8)

                    ; #37403: origin
                    (not_at_b_p9)

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))

                    ; #46665: <==negation-removal== 23423 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37403: origin
                    (not_at_b_p9)

                    ; #44382: origin
                    (at_b_p9)

                    ; #37403: <==negation-removal== 44382 (pos)
                    (not (not_at_b_p9))

                    ; #44382: <==negation-removal== 37403 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1)
                           (not (leader_c)))
        :effect (and
                    ; #54066: origin
                    (at_c_p1)

                    ; #67649: origin
                    (not_at_c_p10)

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #67649: origin
                    (not_at_c_p10)

                    ; #84538: origin
                    (at_c_p10)

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #67649: origin
                    (not_at_c_p10)

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12)
                           (not (leader_c)))
        :effect (and
                    ; #67649: origin
                    (not_at_c_p10)

                    ; #74517: origin
                    (at_c_p12)

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #67649: origin
                    (not_at_c_p10)

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3)
                           (not (leader_c)))
        :effect (and
                    ; #51266: origin
                    (at_c_p3)

                    ; #67649: origin
                    (not_at_c_p10)

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4)
                           (not (leader_c)))
        :effect (and
                    ; #67649: origin
                    (not_at_c_p10)

                    ; #82161: origin
                    (at_c_p4)

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #67649: origin
                    (not_at_c_p10)

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6)
                           (not (leader_c)))
        :effect (and
                    ; #67649: origin
                    (not_at_c_p10)

                    ; #86315: origin
                    (at_c_p6)

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7)
                           (not (leader_c)))
        :effect (and
                    ; #60982: origin
                    (at_c_p7)

                    ; #67649: origin
                    (not_at_c_p10)

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #67649: origin
                    (not_at_c_p10)

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #67649: origin
                    (not_at_c_p10)

                    ; #84538: <==negation-removal== 67649 (pos)
                    (not (at_c_p10))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #25035: origin
                    (not_at_c_p11)

                    ; #54066: origin
                    (at_c_p1)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10)
                           (not (leader_c)))
        :effect (and
                    ; #25035: origin
                    (not_at_c_p11)

                    ; #84538: origin
                    (at_c_p10)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #25035: origin
                    (not_at_c_p11)

                    ; #44531: origin
                    (at_c_p11)

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #25035: origin
                    (not_at_c_p11)

                    ; #74517: origin
                    (at_c_p12)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #25035: origin
                    (not_at_c_p11)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #25035: origin
                    (not_at_c_p11)

                    ; #51266: origin
                    (at_c_p3)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25035: origin
                    (not_at_c_p11)

                    ; #82161: origin
                    (at_c_p4)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #25035: origin
                    (not_at_c_p11)

                    ; #41193: origin
                    (at_c_p5)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #25035: origin
                    (not_at_c_p11)

                    ; #86315: origin
                    (at_c_p6)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #25035: origin
                    (not_at_c_p11)

                    ; #60982: origin
                    (at_c_p7)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #25035: origin
                    (not_at_c_p11)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #25035: origin
                    (not_at_c_p11)

                    ; #44531: <==negation-removal== 25035 (pos)
                    (not (at_c_p11))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #53596: origin
                    (not_at_c_p12)

                    ; #54066: origin
                    (at_c_p1)

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10)
                           (not (leader_c)))
        :effect (and
                    ; #53596: origin
                    (not_at_c_p12)

                    ; #84538: origin
                    (at_c_p10)

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #53596: origin
                    (not_at_c_p12)

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #53596: origin
                    (not_at_c_p12)

                    ; #74517: origin
                    (at_c_p12)

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #53596: origin
                    (not_at_c_p12)

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #51266: origin
                    (at_c_p3)

                    ; #53596: origin
                    (not_at_c_p12)

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4)
                           (not (leader_c)))
        :effect (and
                    ; #53596: origin
                    (not_at_c_p12)

                    ; #82161: origin
                    (at_c_p4)

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #53596: origin
                    (not_at_c_p12)

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #53596: origin
                    (not_at_c_p12)

                    ; #86315: origin
                    (at_c_p6)

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #53596: origin
                    (not_at_c_p12)

                    ; #60982: origin
                    (at_c_p7)

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #53596: origin
                    (not_at_c_p12)

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #53596: origin
                    (not_at_c_p12)

                    ; #74517: <==negation-removal== 53596 (pos)
                    (not (at_c_p12))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #54066: origin
                    (at_c_p1)

                    ; #83889: origin
                    (not_at_c_p1)

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10)
                           (not (leader_c)))
        :effect (and
                    ; #83889: origin
                    (not_at_c_p1)

                    ; #84538: origin
                    (at_c_p10)

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #83889: origin
                    (not_at_c_p1)

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12)
                           (not (leader_c)))
        :effect (and
                    ; #74517: origin
                    (at_c_p12)

                    ; #83889: origin
                    (not_at_c_p1)

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #83889: origin
                    (not_at_c_p1)

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #51266: origin
                    (at_c_p3)

                    ; #83889: origin
                    (not_at_c_p1)

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #82161: origin
                    (at_c_p4)

                    ; #83889: origin
                    (not_at_c_p1)

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #83889: origin
                    (not_at_c_p1)

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #83889: origin
                    (not_at_c_p1)

                    ; #86315: origin
                    (at_c_p6)

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #60982: origin
                    (at_c_p7)

                    ; #83889: origin
                    (not_at_c_p1)

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #83889: origin
                    (not_at_c_p1)

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #83889: origin
                    (not_at_c_p1)

                    ; #54066: <==negation-removal== 83889 (pos)
                    (not (at_c_p1))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #50723: origin
                    (not_at_c_p2)

                    ; #54066: origin
                    (at_c_p1)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50723: origin
                    (not_at_c_p2)

                    ; #84538: origin
                    (at_c_p10)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #50723: origin
                    (not_at_c_p2)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12)
                           (not (leader_c)))
        :effect (and
                    ; #50723: origin
                    (not_at_c_p2)

                    ; #74517: origin
                    (at_c_p12)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #50723: origin
                    (not_at_c_p2)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #50723: origin
                    (not_at_c_p2)

                    ; #51266: origin
                    (at_c_p3)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4)
                           (not (leader_c)))
        :effect (and
                    ; #50723: origin
                    (not_at_c_p2)

                    ; #82161: origin
                    (at_c_p4)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #50723: origin
                    (not_at_c_p2)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6)
                           (not (leader_c)))
        :effect (and
                    ; #50723: origin
                    (not_at_c_p2)

                    ; #86315: origin
                    (at_c_p6)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #50723: origin
                    (not_at_c_p2)

                    ; #60982: origin
                    (at_c_p7)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #50723: origin
                    (not_at_c_p2)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #50723: origin
                    (not_at_c_p2)

                    ; #21741: <==negation-removal== 50723 (pos)
                    (not (at_c_p2))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #54066: origin
                    (at_c_p1)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #84538: origin
                    (at_c_p10)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #74517: origin
                    (at_c_p12)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #51266: origin
                    (at_c_p3)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #82161: origin
                    (at_c_p4)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #86315: origin
                    (at_c_p6)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #60982: origin
                    (at_c_p7)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #89460: origin
                    (not_at_c_p3)

                    ; #51266: <==negation-removal== 89460 (pos)
                    (not (at_c_p3))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #54066: origin
                    (at_c_p1)

                    ; #75413: origin
                    (not_at_c_p4)

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #75413: origin
                    (not_at_c_p4)

                    ; #84538: origin
                    (at_c_p10)

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #75413: origin
                    (not_at_c_p4)

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #74517: origin
                    (at_c_p12)

                    ; #75413: origin
                    (not_at_c_p4)

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #75413: origin
                    (not_at_c_p4)

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #51266: origin
                    (at_c_p3)

                    ; #75413: origin
                    (not_at_c_p4)

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #75413: origin
                    (not_at_c_p4)

                    ; #82161: origin
                    (at_c_p4)

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #75413: origin
                    (not_at_c_p4)

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #75413: origin
                    (not_at_c_p4)

                    ; #86315: origin
                    (at_c_p6)

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #60982: origin
                    (at_c_p7)

                    ; #75413: origin
                    (not_at_c_p4)

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #75413: origin
                    (not_at_c_p4)

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #75413: origin
                    (not_at_c_p4)

                    ; #82161: <==negation-removal== 75413 (pos)
                    (not (at_c_p4))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #54066: origin
                    (at_c_p1)

                    ; #60771: origin
                    (not_at_c_p5)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10)
                           (not (leader_c)))
        :effect (and
                    ; #60771: origin
                    (not_at_c_p5)

                    ; #84538: origin
                    (at_c_p10)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #60771: origin
                    (not_at_c_p5)

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12)
                           (not (leader_c)))
        :effect (and
                    ; #60771: origin
                    (not_at_c_p5)

                    ; #74517: origin
                    (at_c_p12)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #60771: origin
                    (not_at_c_p5)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #51266: origin
                    (at_c_p3)

                    ; #60771: origin
                    (not_at_c_p5)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #60771: origin
                    (not_at_c_p5)

                    ; #82161: origin
                    (at_c_p4)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #60771: origin
                    (not_at_c_p5)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #60771: origin
                    (not_at_c_p5)

                    ; #86315: origin
                    (at_c_p6)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #60771: origin
                    (not_at_c_p5)

                    ; #60982: origin
                    (at_c_p7)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #60771: origin
                    (not_at_c_p5)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #60771: origin
                    (not_at_c_p5)

                    ; #41193: <==negation-removal== 60771 (pos)
                    (not (at_c_p5))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #54066: origin
                    (at_c_p1)

                    ; #58743: origin
                    (not_at_c_p6)

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #58743: origin
                    (not_at_c_p6)

                    ; #84538: origin
                    (at_c_p10)

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #58743: origin
                    (not_at_c_p6)

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #58743: origin
                    (not_at_c_p6)

                    ; #74517: origin
                    (at_c_p12)

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #58743: origin
                    (not_at_c_p6)

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #51266: origin
                    (at_c_p3)

                    ; #58743: origin
                    (not_at_c_p6)

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #58743: origin
                    (not_at_c_p6)

                    ; #82161: origin
                    (at_c_p4)

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #58743: origin
                    (not_at_c_p6)

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #58743: origin
                    (not_at_c_p6)

                    ; #86315: origin
                    (at_c_p6)

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #58743: origin
                    (not_at_c_p6)

                    ; #60982: origin
                    (at_c_p7)

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #58743: origin
                    (not_at_c_p6)

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #58743: origin
                    (not_at_c_p6)

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))

                    ; #86315: <==negation-removal== 58743 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #54066: origin
                    (at_c_p1)

                    ; #76515: origin
                    (not_at_c_p7)

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10)
                           (not (leader_c)))
        :effect (and
                    ; #76515: origin
                    (not_at_c_p7)

                    ; #84538: origin
                    (at_c_p10)

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #76515: origin
                    (not_at_c_p7)

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12)
                           (not (leader_c)))
        :effect (and
                    ; #74517: origin
                    (at_c_p12)

                    ; #76515: origin
                    (not_at_c_p7)

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #76515: origin
                    (not_at_c_p7)

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #51266: origin
                    (at_c_p3)

                    ; #76515: origin
                    (not_at_c_p7)

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #76515: origin
                    (not_at_c_p7)

                    ; #82161: origin
                    (at_c_p4)

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #76515: origin
                    (not_at_c_p7)

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6)
                           (not (leader_c)))
        :effect (and
                    ; #76515: origin
                    (not_at_c_p7)

                    ; #86315: origin
                    (at_c_p6)

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #60982: origin
                    (at_c_p7)

                    ; #76515: origin
                    (not_at_c_p7)

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #76515: origin
                    (not_at_c_p7)

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #76515: origin
                    (not_at_c_p7)

                    ; #60982: <==negation-removal== 76515 (pos)
                    (not (at_c_p7))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #54066: origin
                    (at_c_p1)

                    ; #58980: origin
                    (not_at_c_p8)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #58980: origin
                    (not_at_c_p8)

                    ; #84538: origin
                    (at_c_p10)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #58980: origin
                    (not_at_c_p8)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #58980: origin
                    (not_at_c_p8)

                    ; #74517: origin
                    (at_c_p12)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #58980: origin
                    (not_at_c_p8)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #51266: origin
                    (at_c_p3)

                    ; #58980: origin
                    (not_at_c_p8)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #58980: origin
                    (not_at_c_p8)

                    ; #82161: origin
                    (at_c_p4)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #58980: origin
                    (not_at_c_p8)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #58980: origin
                    (not_at_c_p8)

                    ; #86315: origin
                    (at_c_p6)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #58980: origin
                    (not_at_c_p8)

                    ; #60982: origin
                    (at_c_p7)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #58980: origin
                    (not_at_c_p8)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #58980: origin
                    (not_at_c_p8)

                    ; #23587: <==negation-removal== 58980 (pos)
                    (not (at_c_p8))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #54066: origin
                    (at_c_p1)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #83889: <==negation-removal== 54066 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #84538: origin
                    (at_c_p10)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #67649: <==negation-removal== 84538 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #44531: origin
                    (at_c_p11)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #25035: <==negation-removal== 44531 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #74517: origin
                    (at_c_p12)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #53596: <==negation-removal== 74517 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21741: origin
                    (at_c_p2)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #50723: <==negation-removal== 21741 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #51266: origin
                    (at_c_p3)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #89460: <==negation-removal== 51266 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #82161: origin
                    (at_c_p4)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #75413: <==negation-removal== 82161 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #41193: origin
                    (at_c_p5)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #60771: <==negation-removal== 41193 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #85409: origin
                    (not_at_c_p9)

                    ; #86315: origin
                    (at_c_p6)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #58743: <==negation-removal== 86315 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #60982: origin
                    (at_c_p7)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #76515: <==negation-removal== 60982 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #23587: origin
                    (at_c_p8)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #58980: <==negation-removal== 23587 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #21928: origin
                    (at_c_p9)

                    ; #85409: origin
                    (not_at_c_p9)

                    ; #21928: <==negation-removal== 85409 (pos)
                    (not (at_c_p9))

                    ; #85409: <==negation-removal== 21928 (pos)
                    (not (not_at_c_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #13088: <==closure== 82941 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #15858: <==closure== 89749 (pos)
                    (Pa_checked_p10)

                    ; #21151: <==commonly_known== 36111 (pos)
                    (Bb_checked_p10)

                    ; #23484: <==commonly_known== 36111 (pos)
                    (Bc_checked_p10)

                    ; #27811: <==closure== 23484 (pos)
                    (Pc_checked_p10)

                    ; #36111: origin
                    (checked_p10)

                    ; #64793: <==closure== 21151 (pos)
                    (Pb_checked_p10)

                    ; #82941: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #85001: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #89749: <==commonly_known== 36111 (pos)
                    (Ba_checked_p10)

                    ; #90129: <==closure== 85001 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #10165: <==negation-removal== 23484 (pos)
                    (not (Pc_not_checked_p10))

                    ; #14034: <==negation-removal== 85001 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #14512: <==negation-removal== 36111 (pos)
                    (not (not_checked_p10))

                    ; #19156: <==negation-removal== 82941 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #26196: <==unclosure== 34206 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #34206: <==uncertain_firing== 85001 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #37734: <==uncertain_firing== 82941 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #38368: <==negation-removal== 64793 (pos)
                    (not (Bb_not_checked_p10))

                    ; #45947: <==negation-removal== 13088 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #53701: <==negation-removal== 21151 (pos)
                    (not (Pb_not_checked_p10))

                    ; #59008: <==negation-removal== 27811 (pos)
                    (not (Bc_not_checked_p10))

                    ; #61054: <==negation-removal== 90129 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #65554: <==unclosure== 37734 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #71687: <==negation-removal== 89749 (pos)
                    (not (Pa_not_checked_p10))

                    ; #77771: <==negation-removal== 15858 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #14498: <==closure== 91584 (pos)
                    (Pc_checked_p11)

                    ; #26747: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #35695: <==closure== 26747 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #36477: <==commonly_known== 85748 (pos)
                    (Bb_checked_p11)

                    ; #38377: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #63395: <==closure== 83895 (pos)
                    (Pa_checked_p11)

                    ; #73634: <==closure== 36477 (pos)
                    (Pb_checked_p11)

                    ; #83895: <==commonly_known== 85748 (pos)
                    (Ba_checked_p11)

                    ; #84996: <==closure== 38377 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #85748: origin
                    (checked_p11)

                    ; #91584: <==commonly_known== 85748 (pos)
                    (Bc_checked_p11)

                    ; #14184: <==unclosure== 94249 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #21341: <==negation-removal== 83895 (pos)
                    (not (Pa_not_checked_p11))

                    ; #29956: <==negation-removal== 73634 (pos)
                    (not (Bb_not_checked_p11))

                    ; #30982: <==negation-removal== 36477 (pos)
                    (not (Pb_not_checked_p11))

                    ; #37300: <==negation-removal== 26747 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #40015: <==uncertain_firing== 38377 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #42824: <==negation-removal== 35695 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #46060: <==unclosure== 40015 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #57246: <==negation-removal== 91584 (pos)
                    (not (Pc_not_checked_p11))

                    ; #58861: <==negation-removal== 63395 (pos)
                    (not (Ba_not_checked_p11))

                    ; #63454: <==negation-removal== 38377 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #73782: <==negation-removal== 14498 (pos)
                    (not (Bc_not_checked_p11))

                    ; #74131: <==negation-removal== 85748 (pos)
                    (not (not_checked_p11))

                    ; #83252: <==negation-removal== 84996 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #94249: <==uncertain_firing== 26747 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #10396: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #13655: <==commonly_known== 66019 (pos)
                    (Bc_checked_p12)

                    ; #14084: <==closure== 13655 (pos)
                    (Pc_checked_p12)

                    ; #21534: <==commonly_known== 66019 (pos)
                    (Bb_checked_p12)

                    ; #40293: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #55617: <==closure== 10396 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #58157: <==closure== 85864 (pos)
                    (Pa_checked_p12)

                    ; #64983: <==closure== 40293 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #66019: origin
                    (checked_p12)

                    ; #69916: <==closure== 21534 (pos)
                    (Pb_checked_p12)

                    ; #85864: <==commonly_known== 66019 (pos)
                    (Ba_checked_p12)

                    ; #16065: <==negation-removal== 13655 (pos)
                    (not (Pc_not_checked_p12))

                    ; #16596: <==negation-removal== 66019 (pos)
                    (not (not_checked_p12))

                    ; #21907: <==uncertain_firing== 10396 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #22076: <==negation-removal== 21534 (pos)
                    (not (Pb_not_checked_p12))

                    ; #34759: <==negation-removal== 58157 (pos)
                    (not (Ba_not_checked_p12))

                    ; #35438: <==negation-removal== 85864 (pos)
                    (not (Pa_not_checked_p12))

                    ; #43023: <==unclosure== 47018 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #46056: <==negation-removal== 69916 (pos)
                    (not (Bb_not_checked_p12))

                    ; #47018: <==uncertain_firing== 40293 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #49521: <==negation-removal== 14084 (pos)
                    (not (Bc_not_checked_p12))

                    ; #59616: <==negation-removal== 10396 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #69737: <==unclosure== 21907 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #78149: <==negation-removal== 40293 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #81215: <==negation-removal== 55617 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #83010: <==negation-removal== 64983 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #29279: <==closure== 89114 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #44102: origin
                    (checked_p1)

                    ; #50091: <==commonly_known== 44102 (pos)
                    (Ba_checked_p1)

                    ; #58467: <==closure== 94196 (pos)
                    (Pb_checked_p1)

                    ; #62818: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #64089: <==closure== 62818 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #75917: <==closure== 50091 (pos)
                    (Pa_checked_p1)

                    ; #89114: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #93001: <==commonly_known== 44102 (pos)
                    (Bc_checked_p1)

                    ; #93275: <==closure== 93001 (pos)
                    (Pc_checked_p1)

                    ; #94196: <==commonly_known== 44102 (pos)
                    (Bb_checked_p1)

                    ; #33260: <==unclosure== 70484 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #36252: <==uncertain_firing== 89114 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #39102: <==negation-removal== 75917 (pos)
                    (not (Ba_not_checked_p1))

                    ; #47588: <==negation-removal== 44102 (pos)
                    (not (not_checked_p1))

                    ; #53848: <==negation-removal== 62818 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #57835: <==negation-removal== 93275 (pos)
                    (not (Bc_not_checked_p1))

                    ; #59453: <==negation-removal== 29279 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #62935: <==unclosure== 36252 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #65696: <==negation-removal== 93001 (pos)
                    (not (Pc_not_checked_p1))

                    ; #68621: <==negation-removal== 89114 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #70484: <==uncertain_firing== 62818 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #72252: <==negation-removal== 58467 (pos)
                    (not (Bb_not_checked_p1))

                    ; #79759: <==negation-removal== 94196 (pos)
                    (not (Pb_not_checked_p1))

                    ; #86611: <==negation-removal== 64089 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #87980: <==negation-removal== 50091 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #15095: <==commonly_known== 91637 (pos)
                    (Bb_checked_p2)

                    ; #16925: <==closure== 17403 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #17403: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #18485: <==closure== 72320 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #18642: <==closure== 83025 (pos)
                    (Pc_checked_p2)

                    ; #25156: <==commonly_known== 91637 (pos)
                    (Ba_checked_p2)

                    ; #44441: <==closure== 25156 (pos)
                    (Pa_checked_p2)

                    ; #72320: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #83025: <==commonly_known== 91637 (pos)
                    (Bc_checked_p2)

                    ; #87785: <==closure== 15095 (pos)
                    (Pb_checked_p2)

                    ; #91637: origin
                    (checked_p2)

                    ; #14149: <==negation-removal== 87785 (pos)
                    (not (Bb_not_checked_p2))

                    ; #15308: <==negation-removal== 91637 (pos)
                    (not (not_checked_p2))

                    ; #16057: <==negation-removal== 17403 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #28364: <==unclosure== 48641 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #33908: <==unclosure== 81096 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #38090: <==negation-removal== 16925 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #48202: <==negation-removal== 44441 (pos)
                    (not (Ba_not_checked_p2))

                    ; #48266: <==negation-removal== 15095 (pos)
                    (not (Pb_not_checked_p2))

                    ; #48641: <==uncertain_firing== 72320 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #54177: <==negation-removal== 25156 (pos)
                    (not (Pa_not_checked_p2))

                    ; #61775: <==negation-removal== 18485 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #76479: <==negation-removal== 18642 (pos)
                    (not (Bc_not_checked_p2))

                    ; #81096: <==uncertain_firing== 17403 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #91467: <==negation-removal== 83025 (pos)
                    (not (Pc_not_checked_p2))

                    ; #99797: <==negation-removal== 72320 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #35175: <==closure== 40499 (pos)
                    (Pb_checked_p3)

                    ; #37376: origin
                    (checked_p3)

                    ; #39555: <==closure== 60403 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #40499: <==commonly_known== 37376 (pos)
                    (Bb_checked_p3)

                    ; #41243: <==closure== 77641 (pos)
                    (Pc_checked_p3)

                    ; #51624: <==commonly_known== 37376 (pos)
                    (Ba_checked_p3)

                    ; #57498: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #58087: <==closure== 51624 (pos)
                    (Pa_checked_p3)

                    ; #60403: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #77641: <==commonly_known== 37376 (pos)
                    (Bc_checked_p3)

                    ; #78281: <==closure== 57498 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #13664: <==negation-removal== 57498 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #17365: <==negation-removal== 39555 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #18571: <==negation-removal== 35175 (pos)
                    (not (Bb_not_checked_p3))

                    ; #20281: <==negation-removal== 77641 (pos)
                    (not (Pc_not_checked_p3))

                    ; #21799: <==negation-removal== 41243 (pos)
                    (not (Bc_not_checked_p3))

                    ; #23779: <==unclosure== 44533 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #28117: <==negation-removal== 78281 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #30585: <==negation-removal== 37376 (pos)
                    (not (not_checked_p3))

                    ; #44533: <==uncertain_firing== 60403 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #46651: <==negation-removal== 60403 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #46679: <==negation-removal== 51624 (pos)
                    (not (Pa_not_checked_p3))

                    ; #78692: <==negation-removal== 40499 (pos)
                    (not (Pb_not_checked_p3))

                    ; #88354: <==uncertain_firing== 57498 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #89056: <==unclosure== 88354 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #90735: <==negation-removal== 58087 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #18839: <==closure== 56551 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #22044: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #34659: <==commonly_known== 50202 (pos)
                    (Bb_checked_p4)

                    ; #42728: <==closure== 22044 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #50202: origin
                    (checked_p4)

                    ; #56551: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #67284: <==commonly_known== 50202 (pos)
                    (Ba_checked_p4)

                    ; #74606: <==closure== 34659 (pos)
                    (Pb_checked_p4)

                    ; #80757: <==commonly_known== 50202 (pos)
                    (Bc_checked_p4)

                    ; #81931: <==closure== 80757 (pos)
                    (Pc_checked_p4)

                    ; #92101: <==closure== 67284 (pos)
                    (Pa_checked_p4)

                    ; #11524: <==unclosure== 41646 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #13562: <==negation-removal== 56551 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #17414: <==negation-removal== 42728 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #32081: <==negation-removal== 22044 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #41646: <==uncertain_firing== 56551 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #50849: <==uncertain_firing== 22044 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #52689: <==negation-removal== 74606 (pos)
                    (not (Bb_not_checked_p4))

                    ; #58767: <==negation-removal== 34659 (pos)
                    (not (Pb_not_checked_p4))

                    ; #65059: <==negation-removal== 92101 (pos)
                    (not (Ba_not_checked_p4))

                    ; #66885: <==negation-removal== 80757 (pos)
                    (not (Pc_not_checked_p4))

                    ; #77555: <==negation-removal== 18839 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #79027: <==negation-removal== 81931 (pos)
                    (not (Bc_not_checked_p4))

                    ; #91351: <==unclosure== 50849 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #91969: <==negation-removal== 50202 (pos)
                    (not (not_checked_p4))

                    ; #92172: <==negation-removal== 67284 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #10614: <==commonly_known== 88361 (pos)
                    (Bb_checked_p5)

                    ; #26904: <==commonly_known== 88361 (pos)
                    (Bc_checked_p5)

                    ; #27875: <==closure== 48933 (pos)
                    (Pa_checked_p5)

                    ; #41184: <==closure== 60103 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #41866: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #47186: <==closure== 41866 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #48933: <==commonly_known== 88361 (pos)
                    (Ba_checked_p5)

                    ; #60103: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #61387: <==closure== 26904 (pos)
                    (Pc_checked_p5)

                    ; #62866: <==closure== 10614 (pos)
                    (Pb_checked_p5)

                    ; #88361: origin
                    (checked_p5)

                    ; #10664: <==unclosure== 83384 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #23083: <==negation-removal== 27875 (pos)
                    (not (Ba_not_checked_p5))

                    ; #27877: <==negation-removal== 41184 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #36451: <==negation-removal== 60103 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #37117: <==unclosure== 81091 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #44175: <==negation-removal== 41866 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #44492: <==negation-removal== 62866 (pos)
                    (not (Bb_not_checked_p5))

                    ; #47996: <==negation-removal== 88361 (pos)
                    (not (not_checked_p5))

                    ; #63624: <==negation-removal== 47186 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #70916: <==negation-removal== 10614 (pos)
                    (not (Pb_not_checked_p5))

                    ; #73003: <==negation-removal== 48933 (pos)
                    (not (Pa_not_checked_p5))

                    ; #77746: <==negation-removal== 26904 (pos)
                    (not (Pc_not_checked_p5))

                    ; #81091: <==uncertain_firing== 60103 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #83384: <==uncertain_firing== 41866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #90406: <==negation-removal== 61387 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15547: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #31508: <==commonly_known== 48348 (pos)
                    (Ba_checked_p6)

                    ; #38058: <==closure== 31508 (pos)
                    (Pa_checked_p6)

                    ; #42958: <==closure== 70446 (pos)
                    (Pb_checked_p6)

                    ; #48348: origin
                    (checked_p6)

                    ; #53881: <==closure== 67518 (pos)
                    (Pc_checked_p6)

                    ; #57478: <==closure== 15547 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #67411: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #67518: <==commonly_known== 48348 (pos)
                    (Bc_checked_p6)

                    ; #70446: <==commonly_known== 48348 (pos)
                    (Bb_checked_p6)

                    ; #86613: <==closure== 67411 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #13456: <==negation-removal== 38058 (pos)
                    (not (Ba_not_checked_p6))

                    ; #18697: <==negation-removal== 67411 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22130: <==negation-removal== 31508 (pos)
                    (not (Pa_not_checked_p6))

                    ; #22591: <==negation-removal== 48348 (pos)
                    (not (not_checked_p6))

                    ; #25184: <==unclosure== 56542 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #27036: <==negation-removal== 53881 (pos)
                    (not (Bc_not_checked_p6))

                    ; #38292: <==negation-removal== 57478 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #45232: <==negation-removal== 70446 (pos)
                    (not (Pb_not_checked_p6))

                    ; #48177: <==negation-removal== 86613 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #50877: <==negation-removal== 67518 (pos)
                    (not (Pc_not_checked_p6))

                    ; #55575: <==uncertain_firing== 67411 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #56542: <==uncertain_firing== 15547 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #68153: <==negation-removal== 42958 (pos)
                    (not (Bb_not_checked_p6))

                    ; #68184: <==unclosure== 55575 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85532: <==negation-removal== 15547 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #14092: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #26394: <==commonly_known== 84324 (pos)
                    (Bc_checked_p7)

                    ; #36195: <==closure== 26394 (pos)
                    (Pc_checked_p7)

                    ; #46807: <==closure== 81584 (pos)
                    (Pa_checked_p7)

                    ; #51924: <==closure== 86937 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #55826: <==commonly_known== 84324 (pos)
                    (Bb_checked_p7)

                    ; #81584: <==commonly_known== 84324 (pos)
                    (Ba_checked_p7)

                    ; #84324: origin
                    (checked_p7)

                    ; #84478: <==closure== 55826 (pos)
                    (Pb_checked_p7)

                    ; #86937: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #91426: <==closure== 14092 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #17367: <==negation-removal== 46807 (pos)
                    (not (Ba_not_checked_p7))

                    ; #34972: <==uncertain_firing== 86937 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #35750: <==negation-removal== 36195 (pos)
                    (not (Bc_not_checked_p7))

                    ; #39138: <==unclosure== 42534 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #42534: <==uncertain_firing== 14092 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #46088: <==negation-removal== 84478 (pos)
                    (not (Bb_not_checked_p7))

                    ; #53505: <==negation-removal== 81584 (pos)
                    (not (Pa_not_checked_p7))

                    ; #57597: <==negation-removal== 84324 (pos)
                    (not (not_checked_p7))

                    ; #59832: <==negation-removal== 55826 (pos)
                    (not (Pb_not_checked_p7))

                    ; #62095: <==negation-removal== 51924 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #62870: <==negation-removal== 86937 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #67860: <==negation-removal== 91426 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #68304: <==negation-removal== 26394 (pos)
                    (not (Pc_not_checked_p7))

                    ; #70652: <==unclosure== 34972 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #87860: <==negation-removal== 14092 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11513: <==commonly_known== 27434 (pos)
                    (Bc_checked_p8)

                    ; #13020: <==closure== 11513 (pos)
                    (Pc_checked_p8)

                    ; #14889: <==closure== 89901 (pos)
                    (Pb_checked_p8)

                    ; #15827: <==closure== 55615 (pos)
                    (Pa_checked_p8)

                    ; #16807: <==closure== 28729 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #27434: origin
                    (checked_p8)

                    ; #28729: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #48015: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #55615: <==commonly_known== 27434 (pos)
                    (Ba_checked_p8)

                    ; #57538: <==closure== 48015 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #89901: <==commonly_known== 27434 (pos)
                    (Bb_checked_p8)

                    ; #17571: <==negation-removal== 57538 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #17863: <==negation-removal== 89901 (pos)
                    (not (Pb_not_checked_p8))

                    ; #18860: <==negation-removal== 27434 (pos)
                    (not (not_checked_p8))

                    ; #21084: <==negation-removal== 16807 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #55819: <==negation-removal== 28729 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #58709: <==negation-removal== 11513 (pos)
                    (not (Pc_not_checked_p8))

                    ; #63183: <==unclosure== 89580 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #65660: <==negation-removal== 48015 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #65675: <==unclosure== 83922 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #68975: <==negation-removal== 13020 (pos)
                    (not (Bc_not_checked_p8))

                    ; #83922: <==uncertain_firing== 28729 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #89580: <==uncertain_firing== 48015 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #90040: <==negation-removal== 15827 (pos)
                    (not (Ba_not_checked_p8))

                    ; #91067: <==negation-removal== 14889 (pos)
                    (not (Bb_not_checked_p8))

                    ; #96186: <==negation-removal== 55615 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #24924: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #35801: <==closure== 95305 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #55679: <==closure== 86242 (pos)
                    (Pa_checked_p9)

                    ; #56095: origin
                    (checked_p9)

                    ; #58592: <==closure== 24924 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #60255: <==closure== 90496 (pos)
                    (Pc_checked_p9)

                    ; #81253: <==commonly_known== 56095 (pos)
                    (Bb_checked_p9)

                    ; #86242: <==commonly_known== 56095 (pos)
                    (Ba_checked_p9)

                    ; #90496: <==commonly_known== 56095 (pos)
                    (Bc_checked_p9)

                    ; #94418: <==closure== 81253 (pos)
                    (Pb_checked_p9)

                    ; #95305: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #15752: <==unclosure== 61876 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #18268: <==negation-removal== 35801 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #29839: <==negation-removal== 95305 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #39958: <==negation-removal== 60255 (pos)
                    (not (Bc_not_checked_p9))

                    ; #41232: <==negation-removal== 90496 (pos)
                    (not (Pc_not_checked_p9))

                    ; #50868: <==negation-removal== 86242 (pos)
                    (not (Pa_not_checked_p9))

                    ; #60347: <==unclosure== 91901 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #61876: <==uncertain_firing== 24924 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #64511: <==negation-removal== 94418 (pos)
                    (not (Bb_not_checked_p9))

                    ; #72456: <==negation-removal== 24924 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #74553: <==negation-removal== 55679 (pos)
                    (not (Ba_not_checked_p9))

                    ; #75359: <==negation-removal== 56095 (pos)
                    (not (not_checked_p9))

                    ; #82569: <==negation-removal== 58592 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #90952: <==negation-removal== 81253 (pos)
                    (not (Pb_not_checked_p9))

                    ; #91901: <==uncertain_firing== 95305 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #15858: <==closure== 89749 (pos)
                    (Pa_checked_p10)

                    ; #21151: <==commonly_known== 36111 (pos)
                    (Bb_checked_p10)

                    ; #23484: <==commonly_known== 36111 (pos)
                    (Bc_checked_p10)

                    ; #27811: <==closure== 23484 (pos)
                    (Pc_checked_p10)

                    ; #36111: origin
                    (checked_p10)

                    ; #46153: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #47163: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #64793: <==closure== 21151 (pos)
                    (Pb_checked_p10)

                    ; #83163: <==closure== 46153 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #85036: <==closure== 47163 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #89749: <==commonly_known== 36111 (pos)
                    (Ba_checked_p10)

                    ; #10165: <==negation-removal== 23484 (pos)
                    (not (Pc_not_checked_p10))

                    ; #14512: <==negation-removal== 36111 (pos)
                    (not (not_checked_p10))

                    ; #20213: <==negation-removal== 46153 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #24786: <==negation-removal== 85036 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #25710: <==uncertain_firing== 46153 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #25925: <==negation-removal== 47163 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #38368: <==negation-removal== 64793 (pos)
                    (not (Bb_not_checked_p10))

                    ; #40613: <==unclosure== 25710 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #53701: <==negation-removal== 21151 (pos)
                    (not (Pb_not_checked_p10))

                    ; #59008: <==negation-removal== 27811 (pos)
                    (not (Bc_not_checked_p10))

                    ; #71687: <==negation-removal== 89749 (pos)
                    (not (Pa_not_checked_p10))

                    ; #72702: <==uncertain_firing== 47163 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #77771: <==negation-removal== 15858 (pos)
                    (not (Ba_not_checked_p10))

                    ; #86023: <==unclosure== 72702 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #90050: <==negation-removal== 83163 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #14498: <==closure== 91584 (pos)
                    (Pc_checked_p11)

                    ; #32980: <==closure== 77540 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #34689: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #36477: <==commonly_known== 85748 (pos)
                    (Bb_checked_p11)

                    ; #63395: <==closure== 83895 (pos)
                    (Pa_checked_p11)

                    ; #73634: <==closure== 36477 (pos)
                    (Pb_checked_p11)

                    ; #77540: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #83895: <==commonly_known== 85748 (pos)
                    (Ba_checked_p11)

                    ; #85748: origin
                    (checked_p11)

                    ; #91584: <==commonly_known== 85748 (pos)
                    (Bc_checked_p11)

                    ; #93641: <==closure== 34689 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #19842: <==negation-removal== 77540 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #20331: <==unclosure== 59439 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #21341: <==negation-removal== 83895 (pos)
                    (not (Pa_not_checked_p11))

                    ; #29956: <==negation-removal== 73634 (pos)
                    (not (Bb_not_checked_p11))

                    ; #30982: <==negation-removal== 36477 (pos)
                    (not (Pb_not_checked_p11))

                    ; #31038: <==uncertain_firing== 34689 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #32568: <==unclosure== 31038 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #47789: <==negation-removal== 34689 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #57246: <==negation-removal== 91584 (pos)
                    (not (Pc_not_checked_p11))

                    ; #58861: <==negation-removal== 63395 (pos)
                    (not (Ba_not_checked_p11))

                    ; #59439: <==uncertain_firing== 77540 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #73782: <==negation-removal== 14498 (pos)
                    (not (Bc_not_checked_p11))

                    ; #74131: <==negation-removal== 85748 (pos)
                    (not (not_checked_p11))

                    ; #78910: <==negation-removal== 32980 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #91428: <==negation-removal== 93641 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #13655: <==commonly_known== 66019 (pos)
                    (Bc_checked_p12)

                    ; #14084: <==closure== 13655 (pos)
                    (Pc_checked_p12)

                    ; #21203: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #21534: <==commonly_known== 66019 (pos)
                    (Bb_checked_p12)

                    ; #33939: <==closure== 39650 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #39650: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #58157: <==closure== 85864 (pos)
                    (Pa_checked_p12)

                    ; #66019: origin
                    (checked_p12)

                    ; #69916: <==closure== 21534 (pos)
                    (Pb_checked_p12)

                    ; #85864: <==commonly_known== 66019 (pos)
                    (Ba_checked_p12)

                    ; #86594: <==closure== 21203 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #16065: <==negation-removal== 13655 (pos)
                    (not (Pc_not_checked_p12))

                    ; #16596: <==negation-removal== 66019 (pos)
                    (not (not_checked_p12))

                    ; #22076: <==negation-removal== 21534 (pos)
                    (not (Pb_not_checked_p12))

                    ; #25332: <==unclosure== 81291 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #28059: <==negation-removal== 21203 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #33597: <==uncertain_firing== 21203 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #34759: <==negation-removal== 58157 (pos)
                    (not (Ba_not_checked_p12))

                    ; #35438: <==negation-removal== 85864 (pos)
                    (not (Pa_not_checked_p12))

                    ; #38370: <==negation-removal== 86594 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #46056: <==negation-removal== 69916 (pos)
                    (not (Bb_not_checked_p12))

                    ; #47337: <==negation-removal== 33939 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #48808: <==negation-removal== 39650 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #49353: <==unclosure== 33597 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #49521: <==negation-removal== 14084 (pos)
                    (not (Bc_not_checked_p12))

                    ; #81291: <==uncertain_firing== 39650 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #23347: <==closure== 72359 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #28686: <==closure== 53216 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #44102: origin
                    (checked_p1)

                    ; #50091: <==commonly_known== 44102 (pos)
                    (Ba_checked_p1)

                    ; #53216: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #58467: <==closure== 94196 (pos)
                    (Pb_checked_p1)

                    ; #72359: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #75917: <==closure== 50091 (pos)
                    (Pa_checked_p1)

                    ; #93001: <==commonly_known== 44102 (pos)
                    (Bc_checked_p1)

                    ; #93275: <==closure== 93001 (pos)
                    (Pc_checked_p1)

                    ; #94196: <==commonly_known== 44102 (pos)
                    (Bb_checked_p1)

                    ; #19246: <==unclosure== 85694 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #20275: <==negation-removal== 23347 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #30592: <==negation-removal== 53216 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #31236: <==unclosure== 47268 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #39102: <==negation-removal== 75917 (pos)
                    (not (Ba_not_checked_p1))

                    ; #47268: <==uncertain_firing== 53216 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #47588: <==negation-removal== 44102 (pos)
                    (not (not_checked_p1))

                    ; #57835: <==negation-removal== 93275 (pos)
                    (not (Bc_not_checked_p1))

                    ; #65696: <==negation-removal== 93001 (pos)
                    (not (Pc_not_checked_p1))

                    ; #72252: <==negation-removal== 58467 (pos)
                    (not (Bb_not_checked_p1))

                    ; #79759: <==negation-removal== 94196 (pos)
                    (not (Pb_not_checked_p1))

                    ; #83057: <==negation-removal== 72359 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #84850: <==negation-removal== 28686 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #85694: <==uncertain_firing== 72359 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #87980: <==negation-removal== 50091 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #15095: <==commonly_known== 91637 (pos)
                    (Bb_checked_p2)

                    ; #16753: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #18642: <==closure== 83025 (pos)
                    (Pc_checked_p2)

                    ; #25156: <==commonly_known== 91637 (pos)
                    (Ba_checked_p2)

                    ; #40830: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #44441: <==closure== 25156 (pos)
                    (Pa_checked_p2)

                    ; #46196: <==closure== 40830 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #83025: <==commonly_known== 91637 (pos)
                    (Bc_checked_p2)

                    ; #87785: <==closure== 15095 (pos)
                    (Pb_checked_p2)

                    ; #91637: origin
                    (checked_p2)

                    ; #91665: <==closure== 16753 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #14149: <==negation-removal== 87785 (pos)
                    (not (Bb_not_checked_p2))

                    ; #15308: <==negation-removal== 91637 (pos)
                    (not (not_checked_p2))

                    ; #24970: <==negation-removal== 46196 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #38771: <==negation-removal== 16753 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #48202: <==negation-removal== 44441 (pos)
                    (not (Ba_not_checked_p2))

                    ; #48266: <==negation-removal== 15095 (pos)
                    (not (Pb_not_checked_p2))

                    ; #52407: <==negation-removal== 91665 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #54177: <==negation-removal== 25156 (pos)
                    (not (Pa_not_checked_p2))

                    ; #55723: <==unclosure== 70484 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #61922: <==uncertain_firing== 16753 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #70484: <==uncertain_firing== 40830 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #76479: <==negation-removal== 18642 (pos)
                    (not (Bc_not_checked_p2))

                    ; #76895: <==unclosure== 61922 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #89188: <==negation-removal== 40830 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #91467: <==negation-removal== 83025 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #10009: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #35175: <==closure== 40499 (pos)
                    (Pb_checked_p3)

                    ; #37376: origin
                    (checked_p3)

                    ; #40499: <==commonly_known== 37376 (pos)
                    (Bb_checked_p3)

                    ; #40812: <==closure== 61613 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #41243: <==closure== 77641 (pos)
                    (Pc_checked_p3)

                    ; #51624: <==commonly_known== 37376 (pos)
                    (Ba_checked_p3)

                    ; #58087: <==closure== 51624 (pos)
                    (Pa_checked_p3)

                    ; #61613: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #63171: <==closure== 10009 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #77641: <==commonly_known== 37376 (pos)
                    (Bc_checked_p3)

                    ; #12611: <==unclosure== 30768 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #18571: <==negation-removal== 35175 (pos)
                    (not (Bb_not_checked_p3))

                    ; #20281: <==negation-removal== 77641 (pos)
                    (not (Pc_not_checked_p3))

                    ; #21799: <==negation-removal== 41243 (pos)
                    (not (Bc_not_checked_p3))

                    ; #30585: <==negation-removal== 37376 (pos)
                    (not (not_checked_p3))

                    ; #30768: <==uncertain_firing== 10009 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #42053: <==negation-removal== 61613 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #44962: <==uncertain_firing== 61613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #46679: <==negation-removal== 51624 (pos)
                    (not (Pa_not_checked_p3))

                    ; #59689: <==negation-removal== 63171 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #63170: <==negation-removal== 40812 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #64608: <==negation-removal== 10009 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #78692: <==negation-removal== 40499 (pos)
                    (not (Pb_not_checked_p3))

                    ; #88054: <==unclosure== 44962 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #90735: <==negation-removal== 58087 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #27332: <==closure== 40043 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #28294: <==closure== 44767 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #34659: <==commonly_known== 50202 (pos)
                    (Bb_checked_p4)

                    ; #40043: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #44767: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #50202: origin
                    (checked_p4)

                    ; #67284: <==commonly_known== 50202 (pos)
                    (Ba_checked_p4)

                    ; #74606: <==closure== 34659 (pos)
                    (Pb_checked_p4)

                    ; #80757: <==commonly_known== 50202 (pos)
                    (Bc_checked_p4)

                    ; #81931: <==closure== 80757 (pos)
                    (Pc_checked_p4)

                    ; #92101: <==closure== 67284 (pos)
                    (Pa_checked_p4)

                    ; #24054: <==uncertain_firing== 40043 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #39892: <==negation-removal== 27332 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #41819: <==negation-removal== 44767 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #42754: <==negation-removal== 28294 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #52689: <==negation-removal== 74606 (pos)
                    (not (Bb_not_checked_p4))

                    ; #57540: <==unclosure== 83797 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #58767: <==negation-removal== 34659 (pos)
                    (not (Pb_not_checked_p4))

                    ; #65059: <==negation-removal== 92101 (pos)
                    (not (Ba_not_checked_p4))

                    ; #66885: <==negation-removal== 80757 (pos)
                    (not (Pc_not_checked_p4))

                    ; #75689: <==unclosure== 24054 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #79027: <==negation-removal== 81931 (pos)
                    (not (Bc_not_checked_p4))

                    ; #81253: <==negation-removal== 40043 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #83797: <==uncertain_firing== 44767 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #91969: <==negation-removal== 50202 (pos)
                    (not (not_checked_p4))

                    ; #92172: <==negation-removal== 67284 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #10614: <==commonly_known== 88361 (pos)
                    (Bb_checked_p5)

                    ; #26904: <==commonly_known== 88361 (pos)
                    (Bc_checked_p5)

                    ; #27875: <==closure== 48933 (pos)
                    (Pa_checked_p5)

                    ; #29292: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #39431: <==closure== 63679 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #48933: <==commonly_known== 88361 (pos)
                    (Ba_checked_p5)

                    ; #61387: <==closure== 26904 (pos)
                    (Pc_checked_p5)

                    ; #62866: <==closure== 10614 (pos)
                    (Pb_checked_p5)

                    ; #63679: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #64581: <==closure== 29292 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #88361: origin
                    (checked_p5)

                    ; #11840: <==negation-removal== 29292 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #20929: <==unclosure== 52017 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #23083: <==negation-removal== 27875 (pos)
                    (not (Ba_not_checked_p5))

                    ; #36629: <==negation-removal== 64581 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #44492: <==negation-removal== 62866 (pos)
                    (not (Bb_not_checked_p5))

                    ; #47996: <==negation-removal== 88361 (pos)
                    (not (not_checked_p5))

                    ; #52017: <==uncertain_firing== 29292 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #70916: <==negation-removal== 10614 (pos)
                    (not (Pb_not_checked_p5))

                    ; #72174: <==unclosure== 89120 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #73003: <==negation-removal== 48933 (pos)
                    (not (Pa_not_checked_p5))

                    ; #75666: <==negation-removal== 63679 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #77746: <==negation-removal== 26904 (pos)
                    (not (Pc_not_checked_p5))

                    ; #81234: <==negation-removal== 39431 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #89120: <==uncertain_firing== 63679 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #90406: <==negation-removal== 61387 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #20220: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #31508: <==commonly_known== 48348 (pos)
                    (Ba_checked_p6)

                    ; #38058: <==closure== 31508 (pos)
                    (Pa_checked_p6)

                    ; #42958: <==closure== 70446 (pos)
                    (Pb_checked_p6)

                    ; #48348: origin
                    (checked_p6)

                    ; #53881: <==closure== 67518 (pos)
                    (Pc_checked_p6)

                    ; #67518: <==commonly_known== 48348 (pos)
                    (Bc_checked_p6)

                    ; #70446: <==commonly_known== 48348 (pos)
                    (Bb_checked_p6)

                    ; #74910: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #83845: <==closure== 74910 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #91939: <==closure== 20220 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #13456: <==negation-removal== 38058 (pos)
                    (not (Ba_not_checked_p6))

                    ; #15207: <==unclosure== 79293 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #20423: <==negation-removal== 74910 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #22130: <==negation-removal== 31508 (pos)
                    (not (Pa_not_checked_p6))

                    ; #22591: <==negation-removal== 48348 (pos)
                    (not (not_checked_p6))

                    ; #27036: <==negation-removal== 53881 (pos)
                    (not (Bc_not_checked_p6))

                    ; #35618: <==negation-removal== 91939 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #36357: <==negation-removal== 20220 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #37553: <==negation-removal== 83845 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #45232: <==negation-removal== 70446 (pos)
                    (not (Pb_not_checked_p6))

                    ; #49443: <==unclosure== 60798 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #50877: <==negation-removal== 67518 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60798: <==uncertain_firing== 74910 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #68153: <==negation-removal== 42958 (pos)
                    (not (Bb_not_checked_p6))

                    ; #79293: <==uncertain_firing== 20220 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #26394: <==commonly_known== 84324 (pos)
                    (Bc_checked_p7)

                    ; #36195: <==closure== 26394 (pos)
                    (Pc_checked_p7)

                    ; #46807: <==closure== 81584 (pos)
                    (Pa_checked_p7)

                    ; #54544: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #54793: <==closure== 54544 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #55826: <==commonly_known== 84324 (pos)
                    (Bb_checked_p7)

                    ; #75664: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #81584: <==commonly_known== 84324 (pos)
                    (Ba_checked_p7)

                    ; #84324: origin
                    (checked_p7)

                    ; #84478: <==closure== 55826 (pos)
                    (Pb_checked_p7)

                    ; #91766: <==closure== 75664 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #15952: <==negation-removal== 91766 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #17367: <==negation-removal== 46807 (pos)
                    (not (Ba_not_checked_p7))

                    ; #22893: <==unclosure== 52822 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #33549: <==unclosure== 46143 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #35750: <==negation-removal== 36195 (pos)
                    (not (Bc_not_checked_p7))

                    ; #46088: <==negation-removal== 84478 (pos)
                    (not (Bb_not_checked_p7))

                    ; #46143: <==uncertain_firing== 75664 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #46228: <==negation-removal== 54544 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #52822: <==uncertain_firing== 54544 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #53505: <==negation-removal== 81584 (pos)
                    (not (Pa_not_checked_p7))

                    ; #57597: <==negation-removal== 84324 (pos)
                    (not (not_checked_p7))

                    ; #59832: <==negation-removal== 55826 (pos)
                    (not (Pb_not_checked_p7))

                    ; #65627: <==negation-removal== 75664 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #68304: <==negation-removal== 26394 (pos)
                    (not (Pc_not_checked_p7))

                    ; #79701: <==negation-removal== 54793 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #11513: <==commonly_known== 27434 (pos)
                    (Bc_checked_p8)

                    ; #13020: <==closure== 11513 (pos)
                    (Pc_checked_p8)

                    ; #14889: <==closure== 89901 (pos)
                    (Pb_checked_p8)

                    ; #15827: <==closure== 55615 (pos)
                    (Pa_checked_p8)

                    ; #27434: origin
                    (checked_p8)

                    ; #52298: <==closure== 73298 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #55615: <==commonly_known== 27434 (pos)
                    (Ba_checked_p8)

                    ; #68823: <==closure== 91606 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #73298: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #89901: <==commonly_known== 27434 (pos)
                    (Bb_checked_p8)

                    ; #91606: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #17863: <==negation-removal== 89901 (pos)
                    (not (Pb_not_checked_p8))

                    ; #18467: <==unclosure== 29902 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #18860: <==negation-removal== 27434 (pos)
                    (not (not_checked_p8))

                    ; #23475: <==unclosure== 72522 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #29902: <==uncertain_firing== 91606 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #38952: <==negation-removal== 73298 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #50221: <==negation-removal== 52298 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #58709: <==negation-removal== 11513 (pos)
                    (not (Pc_not_checked_p8))

                    ; #64187: <==negation-removal== 91606 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #68975: <==negation-removal== 13020 (pos)
                    (not (Bc_not_checked_p8))

                    ; #72522: <==uncertain_firing== 73298 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #81871: <==negation-removal== 68823 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #90040: <==negation-removal== 15827 (pos)
                    (not (Ba_not_checked_p8))

                    ; #91067: <==negation-removal== 14889 (pos)
                    (not (Bb_not_checked_p8))

                    ; #96186: <==negation-removal== 55615 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12404: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #31399: <==closure== 84370 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #55679: <==closure== 86242 (pos)
                    (Pa_checked_p9)

                    ; #56095: origin
                    (checked_p9)

                    ; #60255: <==closure== 90496 (pos)
                    (Pc_checked_p9)

                    ; #65550: <==closure== 12404 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #81253: <==commonly_known== 56095 (pos)
                    (Bb_checked_p9)

                    ; #84370: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #86242: <==commonly_known== 56095 (pos)
                    (Ba_checked_p9)

                    ; #90496: <==commonly_known== 56095 (pos)
                    (Bc_checked_p9)

                    ; #94418: <==closure== 81253 (pos)
                    (Pb_checked_p9)

                    ; #15426: <==negation-removal== 31399 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #16609: <==unclosure== 52349 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #30171: <==uncertain_firing== 84370 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #39958: <==negation-removal== 60255 (pos)
                    (not (Bc_not_checked_p9))

                    ; #41232: <==negation-removal== 90496 (pos)
                    (not (Pc_not_checked_p9))

                    ; #45426: <==negation-removal== 65550 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #50868: <==negation-removal== 86242 (pos)
                    (not (Pa_not_checked_p9))

                    ; #52349: <==uncertain_firing== 12404 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #54002: <==negation-removal== 12404 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #55031: <==negation-removal== 84370 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #64511: <==negation-removal== 94418 (pos)
                    (not (Bb_not_checked_p9))

                    ; #74553: <==negation-removal== 55679 (pos)
                    (not (Ba_not_checked_p9))

                    ; #75359: <==negation-removal== 56095 (pos)
                    (not (not_checked_p9))

                    ; #88507: <==unclosure== 30171 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #90952: <==negation-removal== 81253 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #15858: <==closure== 89749 (pos)
                    (Pa_checked_p10)

                    ; #18879: <==closure== 32882 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #21151: <==commonly_known== 36111 (pos)
                    (Bb_checked_p10)

                    ; #21222: <==closure== 86606 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #23484: <==commonly_known== 36111 (pos)
                    (Bc_checked_p10)

                    ; #27811: <==closure== 23484 (pos)
                    (Pc_checked_p10)

                    ; #32882: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #36111: origin
                    (checked_p10)

                    ; #64793: <==closure== 21151 (pos)
                    (Pb_checked_p10)

                    ; #86606: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #89749: <==commonly_known== 36111 (pos)
                    (Ba_checked_p10)

                    ; #10165: <==negation-removal== 23484 (pos)
                    (not (Pc_not_checked_p10))

                    ; #14512: <==negation-removal== 36111 (pos)
                    (not (not_checked_p10))

                    ; #26934: <==negation-removal== 32882 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #38368: <==negation-removal== 64793 (pos)
                    (not (Bb_not_checked_p10))

                    ; #40521: <==negation-removal== 18879 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #53701: <==negation-removal== 21151 (pos)
                    (not (Pb_not_checked_p10))

                    ; #54518: <==uncertain_firing== 32882 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #59008: <==negation-removal== 27811 (pos)
                    (not (Bc_not_checked_p10))

                    ; #59340: <==unclosure== 63309 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #62104: <==unclosure== 54518 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #63309: <==uncertain_firing== 86606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #71687: <==negation-removal== 89749 (pos)
                    (not (Pa_not_checked_p10))

                    ; #74403: <==negation-removal== 86606 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #77771: <==negation-removal== 15858 (pos)
                    (not (Ba_not_checked_p10))

                    ; #83356: <==negation-removal== 21222 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #14498: <==closure== 91584 (pos)
                    (Pc_checked_p11)

                    ; #21023: <==closure== 40218 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #36477: <==commonly_known== 85748 (pos)
                    (Bb_checked_p11)

                    ; #40218: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #40551: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #43720: <==closure== 40551 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #63395: <==closure== 83895 (pos)
                    (Pa_checked_p11)

                    ; #73634: <==closure== 36477 (pos)
                    (Pb_checked_p11)

                    ; #83895: <==commonly_known== 85748 (pos)
                    (Ba_checked_p11)

                    ; #85748: origin
                    (checked_p11)

                    ; #91584: <==commonly_known== 85748 (pos)
                    (Bc_checked_p11)

                    ; #16312: <==unclosure== 43403 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #21341: <==negation-removal== 83895 (pos)
                    (not (Pa_not_checked_p11))

                    ; #26044: <==negation-removal== 40551 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #27009: <==negation-removal== 21023 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #29956: <==negation-removal== 73634 (pos)
                    (not (Bb_not_checked_p11))

                    ; #30982: <==negation-removal== 36477 (pos)
                    (not (Pb_not_checked_p11))

                    ; #43403: <==uncertain_firing== 40551 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #49081: <==negation-removal== 43720 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #49211: <==negation-removal== 40218 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #54473: <==unclosure== 55914 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #55914: <==uncertain_firing== 40218 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #57246: <==negation-removal== 91584 (pos)
                    (not (Pc_not_checked_p11))

                    ; #58861: <==negation-removal== 63395 (pos)
                    (not (Ba_not_checked_p11))

                    ; #73782: <==negation-removal== 14498 (pos)
                    (not (Bc_not_checked_p11))

                    ; #74131: <==negation-removal== 85748 (pos)
                    (not (not_checked_p11))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13655: <==commonly_known== 66019 (pos)
                    (Bc_checked_p12)

                    ; #14084: <==closure== 13655 (pos)
                    (Pc_checked_p12)

                    ; #21534: <==commonly_known== 66019 (pos)
                    (Bb_checked_p12)

                    ; #29805: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #31214: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #58157: <==closure== 85864 (pos)
                    (Pa_checked_p12)

                    ; #66019: origin
                    (checked_p12)

                    ; #69916: <==closure== 21534 (pos)
                    (Pb_checked_p12)

                    ; #73857: <==closure== 31214 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #85864: <==commonly_known== 66019 (pos)
                    (Ba_checked_p12)

                    ; #86653: <==closure== 29805 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #15519: <==negation-removal== 73857 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #16065: <==negation-removal== 13655 (pos)
                    (not (Pc_not_checked_p12))

                    ; #16596: <==negation-removal== 66019 (pos)
                    (not (not_checked_p12))

                    ; #19388: <==unclosure== 26460 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #22034: <==negation-removal== 86653 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #22076: <==negation-removal== 21534 (pos)
                    (not (Pb_not_checked_p12))

                    ; #26460: <==uncertain_firing== 29805 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #34759: <==negation-removal== 58157 (pos)
                    (not (Ba_not_checked_p12))

                    ; #35438: <==negation-removal== 85864 (pos)
                    (not (Pa_not_checked_p12))

                    ; #44435: <==uncertain_firing== 31214 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #46056: <==negation-removal== 69916 (pos)
                    (not (Bb_not_checked_p12))

                    ; #49521: <==negation-removal== 14084 (pos)
                    (not (Bc_not_checked_p12))

                    ; #53063: <==unclosure== 44435 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #56476: <==negation-removal== 31214 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #73002: <==negation-removal== 29805 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #12228: <==closure== 92224 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #44102: origin
                    (checked_p1)

                    ; #45093: <==closure== 84797 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #50091: <==commonly_known== 44102 (pos)
                    (Ba_checked_p1)

                    ; #58467: <==closure== 94196 (pos)
                    (Pb_checked_p1)

                    ; #75917: <==closure== 50091 (pos)
                    (Pa_checked_p1)

                    ; #84797: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #92224: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #93001: <==commonly_known== 44102 (pos)
                    (Bc_checked_p1)

                    ; #93275: <==closure== 93001 (pos)
                    (Pc_checked_p1)

                    ; #94196: <==commonly_known== 44102 (pos)
                    (Bb_checked_p1)

                    ; #18244: <==negation-removal== 84797 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #26328: <==negation-removal== 12228 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #32404: <==negation-removal== 45093 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #37895: <==unclosure== 71101 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #39102: <==negation-removal== 75917 (pos)
                    (not (Ba_not_checked_p1))

                    ; #47122: <==unclosure== 64998 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #47588: <==negation-removal== 44102 (pos)
                    (not (not_checked_p1))

                    ; #57835: <==negation-removal== 93275 (pos)
                    (not (Bc_not_checked_p1))

                    ; #58399: <==negation-removal== 92224 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #64998: <==uncertain_firing== 92224 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #65696: <==negation-removal== 93001 (pos)
                    (not (Pc_not_checked_p1))

                    ; #71101: <==uncertain_firing== 84797 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #72252: <==negation-removal== 58467 (pos)
                    (not (Bb_not_checked_p1))

                    ; #79759: <==negation-removal== 94196 (pos)
                    (not (Pb_not_checked_p1))

                    ; #87980: <==negation-removal== 50091 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #15095: <==commonly_known== 91637 (pos)
                    (Bb_checked_p2)

                    ; #18642: <==closure== 83025 (pos)
                    (Pc_checked_p2)

                    ; #25156: <==commonly_known== 91637 (pos)
                    (Ba_checked_p2)

                    ; #44441: <==closure== 25156 (pos)
                    (Pa_checked_p2)

                    ; #50849: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #55351: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #73278: <==closure== 55351 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #77995: <==closure== 50849 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #83025: <==commonly_known== 91637 (pos)
                    (Bc_checked_p2)

                    ; #87785: <==closure== 15095 (pos)
                    (Pb_checked_p2)

                    ; #91637: origin
                    (checked_p2)

                    ; #10689: <==unclosure== 37647 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #14149: <==negation-removal== 87785 (pos)
                    (not (Bb_not_checked_p2))

                    ; #15308: <==negation-removal== 91637 (pos)
                    (not (not_checked_p2))

                    ; #37647: <==uncertain_firing== 50849 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #40393: <==unclosure== 91808 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #48202: <==negation-removal== 44441 (pos)
                    (not (Ba_not_checked_p2))

                    ; #48266: <==negation-removal== 15095 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54177: <==negation-removal== 25156 (pos)
                    (not (Pa_not_checked_p2))

                    ; #57676: <==negation-removal== 77995 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #59578: <==negation-removal== 50849 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #62161: <==negation-removal== 55351 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #70373: <==negation-removal== 73278 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #76479: <==negation-removal== 18642 (pos)
                    (not (Bc_not_checked_p2))

                    ; #91467: <==negation-removal== 83025 (pos)
                    (not (Pc_not_checked_p2))

                    ; #91808: <==uncertain_firing== 55351 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #35175: <==closure== 40499 (pos)
                    (Pb_checked_p3)

                    ; #37083: <==closure== 72704 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #37376: origin
                    (checked_p3)

                    ; #40499: <==commonly_known== 37376 (pos)
                    (Bb_checked_p3)

                    ; #41243: <==closure== 77641 (pos)
                    (Pc_checked_p3)

                    ; #51460: <==closure== 87569 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #51624: <==commonly_known== 37376 (pos)
                    (Ba_checked_p3)

                    ; #58087: <==closure== 51624 (pos)
                    (Pa_checked_p3)

                    ; #72704: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #77641: <==commonly_known== 37376 (pos)
                    (Bc_checked_p3)

                    ; #87569: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #18571: <==negation-removal== 35175 (pos)
                    (not (Bb_not_checked_p3))

                    ; #20281: <==negation-removal== 77641 (pos)
                    (not (Pc_not_checked_p3))

                    ; #21799: <==negation-removal== 41243 (pos)
                    (not (Bc_not_checked_p3))

                    ; #29635: <==negation-removal== 72704 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #30585: <==negation-removal== 37376 (pos)
                    (not (not_checked_p3))

                    ; #32868: <==negation-removal== 37083 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #34195: <==unclosure== 44467 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #39180: <==uncertain_firing== 87569 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #44467: <==uncertain_firing== 72704 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #46679: <==negation-removal== 51624 (pos)
                    (not (Pa_not_checked_p3))

                    ; #64933: <==negation-removal== 51460 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #65481: <==unclosure== 39180 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #78692: <==negation-removal== 40499 (pos)
                    (not (Pb_not_checked_p3))

                    ; #90735: <==negation-removal== 58087 (pos)
                    (not (Ba_not_checked_p3))

                    ; #91737: <==negation-removal== 87569 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #24604: <==closure== 45516 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #34659: <==commonly_known== 50202 (pos)
                    (Bb_checked_p4)

                    ; #35415: <==closure== 54018 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #45516: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #50202: origin
                    (checked_p4)

                    ; #54018: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #67284: <==commonly_known== 50202 (pos)
                    (Ba_checked_p4)

                    ; #74606: <==closure== 34659 (pos)
                    (Pb_checked_p4)

                    ; #80757: <==commonly_known== 50202 (pos)
                    (Bc_checked_p4)

                    ; #81931: <==closure== 80757 (pos)
                    (Pc_checked_p4)

                    ; #92101: <==closure== 67284 (pos)
                    (Pa_checked_p4)

                    ; #13592: <==uncertain_firing== 45516 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #14726: <==negation-removal== 24604 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #20442: <==negation-removal== 35415 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #20747: <==negation-removal== 54018 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #25553: <==unclosure== 46438 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #37812: <==unclosure== 13592 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #46438: <==uncertain_firing== 54018 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #52689: <==negation-removal== 74606 (pos)
                    (not (Bb_not_checked_p4))

                    ; #58767: <==negation-removal== 34659 (pos)
                    (not (Pb_not_checked_p4))

                    ; #60591: <==negation-removal== 45516 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #65059: <==negation-removal== 92101 (pos)
                    (not (Ba_not_checked_p4))

                    ; #66885: <==negation-removal== 80757 (pos)
                    (not (Pc_not_checked_p4))

                    ; #79027: <==negation-removal== 81931 (pos)
                    (not (Bc_not_checked_p4))

                    ; #91969: <==negation-removal== 50202 (pos)
                    (not (not_checked_p4))

                    ; #92172: <==negation-removal== 67284 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10614: <==commonly_known== 88361 (pos)
                    (Bb_checked_p5)

                    ; #26904: <==commonly_known== 88361 (pos)
                    (Bc_checked_p5)

                    ; #27875: <==closure== 48933 (pos)
                    (Pa_checked_p5)

                    ; #48933: <==commonly_known== 88361 (pos)
                    (Ba_checked_p5)

                    ; #50481: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #60937: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #61387: <==closure== 26904 (pos)
                    (Pc_checked_p5)

                    ; #62866: <==closure== 10614 (pos)
                    (Pb_checked_p5)

                    ; #68936: <==closure== 60937 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #79387: <==closure== 50481 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #88361: origin
                    (checked_p5)

                    ; #17942: <==negation-removal== 50481 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #21299: <==uncertain_firing== 50481 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #23083: <==negation-removal== 27875 (pos)
                    (not (Ba_not_checked_p5))

                    ; #38333: <==negation-removal== 60937 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #40047: <==uncertain_firing== 60937 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #44492: <==negation-removal== 62866 (pos)
                    (not (Bb_not_checked_p5))

                    ; #47996: <==negation-removal== 88361 (pos)
                    (not (not_checked_p5))

                    ; #49438: <==negation-removal== 68936 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #58039: <==unclosure== 21299 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #70916: <==negation-removal== 10614 (pos)
                    (not (Pb_not_checked_p5))

                    ; #73003: <==negation-removal== 48933 (pos)
                    (not (Pa_not_checked_p5))

                    ; #77746: <==negation-removal== 26904 (pos)
                    (not (Pc_not_checked_p5))

                    ; #78870: <==negation-removal== 79387 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #83685: <==unclosure== 40047 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #90406: <==negation-removal== 61387 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #31508: <==commonly_known== 48348 (pos)
                    (Ba_checked_p6)

                    ; #34332: <==closure== 42305 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #34603: <==closure== 86314 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #38058: <==closure== 31508 (pos)
                    (Pa_checked_p6)

                    ; #42305: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #42958: <==closure== 70446 (pos)
                    (Pb_checked_p6)

                    ; #48348: origin
                    (checked_p6)

                    ; #53881: <==closure== 67518 (pos)
                    (Pc_checked_p6)

                    ; #67518: <==commonly_known== 48348 (pos)
                    (Bc_checked_p6)

                    ; #70446: <==commonly_known== 48348 (pos)
                    (Bb_checked_p6)

                    ; #86314: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #13456: <==negation-removal== 38058 (pos)
                    (not (Ba_not_checked_p6))

                    ; #22130: <==negation-removal== 31508 (pos)
                    (not (Pa_not_checked_p6))

                    ; #22591: <==negation-removal== 48348 (pos)
                    (not (not_checked_p6))

                    ; #26943: <==negation-removal== 34603 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #27036: <==negation-removal== 53881 (pos)
                    (not (Bc_not_checked_p6))

                    ; #45232: <==negation-removal== 70446 (pos)
                    (not (Pb_not_checked_p6))

                    ; #50877: <==negation-removal== 67518 (pos)
                    (not (Pc_not_checked_p6))

                    ; #54303: <==negation-removal== 86314 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #64901: <==negation-removal== 42305 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #67999: <==negation-removal== 34332 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #68153: <==negation-removal== 42958 (pos)
                    (not (Bb_not_checked_p6))

                    ; #85269: <==uncertain_firing== 42305 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #85559: <==unclosure== 89059 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #89059: <==uncertain_firing== 86314 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #92579: <==unclosure== 85269 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #15594: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #26394: <==commonly_known== 84324 (pos)
                    (Bc_checked_p7)

                    ; #33827: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #36195: <==closure== 26394 (pos)
                    (Pc_checked_p7)

                    ; #46807: <==closure== 81584 (pos)
                    (Pa_checked_p7)

                    ; #55826: <==commonly_known== 84324 (pos)
                    (Bb_checked_p7)

                    ; #57201: <==closure== 33827 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #81521: <==closure== 15594 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #81584: <==commonly_known== 84324 (pos)
                    (Ba_checked_p7)

                    ; #84324: origin
                    (checked_p7)

                    ; #84478: <==closure== 55826 (pos)
                    (Pb_checked_p7)

                    ; #17367: <==negation-removal== 46807 (pos)
                    (not (Ba_not_checked_p7))

                    ; #35750: <==negation-removal== 36195 (pos)
                    (not (Bc_not_checked_p7))

                    ; #41803: <==negation-removal== 33827 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #46088: <==negation-removal== 84478 (pos)
                    (not (Bb_not_checked_p7))

                    ; #53505: <==negation-removal== 81584 (pos)
                    (not (Pa_not_checked_p7))

                    ; #57597: <==negation-removal== 84324 (pos)
                    (not (not_checked_p7))

                    ; #59551: <==unclosure== 69898 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #59832: <==negation-removal== 55826 (pos)
                    (not (Pb_not_checked_p7))

                    ; #68304: <==negation-removal== 26394 (pos)
                    (not (Pc_not_checked_p7))

                    ; #69898: <==uncertain_firing== 33827 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #77301: <==negation-removal== 81521 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #82315: <==uncertain_firing== 15594 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #84235: <==negation-removal== 15594 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #85129: <==negation-removal== 57201 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #86991: <==unclosure== 82315 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #11513: <==commonly_known== 27434 (pos)
                    (Bc_checked_p8)

                    ; #13020: <==closure== 11513 (pos)
                    (Pc_checked_p8)

                    ; #14889: <==closure== 89901 (pos)
                    (Pb_checked_p8)

                    ; #15827: <==closure== 55615 (pos)
                    (Pa_checked_p8)

                    ; #27434: origin
                    (checked_p8)

                    ; #29289: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #43162: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #51044: <==closure== 29289 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #55615: <==commonly_known== 27434 (pos)
                    (Ba_checked_p8)

                    ; #76369: <==closure== 43162 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #89901: <==commonly_known== 27434 (pos)
                    (Bb_checked_p8)

                    ; #10043: <==uncertain_firing== 29289 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #17863: <==negation-removal== 89901 (pos)
                    (not (Pb_not_checked_p8))

                    ; #18860: <==negation-removal== 27434 (pos)
                    (not (not_checked_p8))

                    ; #24373: <==unclosure== 77767 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #28371: <==negation-removal== 43162 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #58303: <==unclosure== 10043 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #58709: <==negation-removal== 11513 (pos)
                    (not (Pc_not_checked_p8))

                    ; #59949: <==negation-removal== 51044 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #60709: <==negation-removal== 76369 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #63781: <==negation-removal== 29289 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #68975: <==negation-removal== 13020 (pos)
                    (not (Bc_not_checked_p8))

                    ; #77767: <==uncertain_firing== 43162 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #90040: <==negation-removal== 15827 (pos)
                    (not (Ba_not_checked_p8))

                    ; #91067: <==negation-removal== 14889 (pos)
                    (not (Bb_not_checked_p8))

                    ; #96186: <==negation-removal== 55615 (pos)
                    (not (Pa_not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12246: <==closure== 40732 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #17678: <==closure== 59624 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #40732: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #55679: <==closure== 86242 (pos)
                    (Pa_checked_p9)

                    ; #56095: origin
                    (checked_p9)

                    ; #59624: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #60255: <==closure== 90496 (pos)
                    (Pc_checked_p9)

                    ; #81253: <==commonly_known== 56095 (pos)
                    (Bb_checked_p9)

                    ; #86242: <==commonly_known== 56095 (pos)
                    (Ba_checked_p9)

                    ; #90496: <==commonly_known== 56095 (pos)
                    (Bc_checked_p9)

                    ; #94418: <==closure== 81253 (pos)
                    (Pb_checked_p9)

                    ; #12949: <==negation-removal== 17678 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #15912: <==uncertain_firing== 59624 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #17443: <==negation-removal== 40732 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #23764: <==negation-removal== 59624 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #24848: <==unclosure== 15912 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #39958: <==negation-removal== 60255 (pos)
                    (not (Bc_not_checked_p9))

                    ; #41232: <==negation-removal== 90496 (pos)
                    (not (Pc_not_checked_p9))

                    ; #44829: <==uncertain_firing== 40732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50868: <==negation-removal== 86242 (pos)
                    (not (Pa_not_checked_p9))

                    ; #64511: <==negation-removal== 94418 (pos)
                    (not (Bb_not_checked_p9))

                    ; #71605: <==unclosure== 44829 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #74553: <==negation-removal== 55679 (pos)
                    (not (Ba_not_checked_p9))

                    ; #75359: <==negation-removal== 56095 (pos)
                    (not (not_checked_p9))

                    ; #75680: <==negation-removal== 12246 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #90952: <==negation-removal== 81253 (pos)
                    (not (Pb_not_checked_p9))))

)