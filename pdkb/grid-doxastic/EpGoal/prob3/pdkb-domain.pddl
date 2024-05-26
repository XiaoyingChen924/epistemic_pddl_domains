(define (domain grid)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_p1)
        (not_at_a_p2)
        (not_at_a_p3)
        (not_at_a_p4)
        (not_at_a_p5)
        (not_at_a_p6)
        (not_at_a_p7)
        (not_at_a_p8)
        (not_at_a_p9)
        (not_at_b_p1)
        (not_at_b_p2)
        (not_at_b_p3)
        (not_at_b_p4)
        (not_at_b_p5)
        (not_at_b_p6)
        (not_at_b_p7)
        (not_at_b_p8)
        (not_at_b_p9)
        (not_at_c_p1)
        (not_at_c_p2)
        (not_at_c_p3)
        (not_at_c_p4)
        (not_at_c_p5)
        (not_at_c_p6)
        (not_at_c_p7)
        (not_at_c_p8)
        (not_at_c_p9)
        (not_at_d_p1)
        (not_at_d_p2)
        (not_at_d_p3)
        (not_at_d_p4)
        (not_at_d_p5)
        (not_at_d_p6)
        (not_at_d_p7)
        (not_at_d_p8)
        (not_at_d_p9)
        (not_checked_p1)
        (not_checked_p2)
        (not_checked_p3)
        (not_checked_p4)
        (not_checked_p5)
        (not_checked_p6)
        (not_checked_p7)
        (not_checked_p8)
        (not_checked_p9)
        (not_hiddensurvivorat_s_p1)
        (not_hiddensurvivorat_s_p2)
        (not_hiddensurvivorat_s_p3)
        (not_hiddensurvivorat_s_p4)
        (not_hiddensurvivorat_s_p5)
        (not_hiddensurvivorat_s_p6)
        (not_hiddensurvivorat_s_p7)
        (not_hiddensurvivorat_s_p8)
        (not_hiddensurvivorat_s_p9)
        (not_succ_p1_p1)
        (not_succ_p1_p2)
        (not_succ_p1_p3)
        (not_succ_p1_p4)
        (not_succ_p1_p5)
        (not_succ_p1_p6)
        (not_succ_p1_p7)
        (not_succ_p1_p8)
        (not_succ_p1_p9)
        (not_succ_p2_p1)
        (not_succ_p2_p2)
        (not_succ_p2_p3)
        (not_succ_p2_p4)
        (not_succ_p2_p5)
        (not_succ_p2_p6)
        (not_succ_p2_p7)
        (not_succ_p2_p8)
        (not_succ_p2_p9)
        (not_succ_p3_p1)
        (not_succ_p3_p2)
        (not_succ_p3_p3)
        (not_succ_p3_p4)
        (not_succ_p3_p5)
        (not_succ_p3_p6)
        (not_succ_p3_p7)
        (not_succ_p3_p8)
        (not_succ_p3_p9)
        (not_succ_p4_p1)
        (not_succ_p4_p2)
        (not_succ_p4_p3)
        (not_succ_p4_p4)
        (not_succ_p4_p5)
        (not_succ_p4_p6)
        (not_succ_p4_p7)
        (not_succ_p4_p8)
        (not_succ_p4_p9)
        (not_succ_p5_p1)
        (not_succ_p5_p2)
        (not_succ_p5_p3)
        (not_succ_p5_p4)
        (not_succ_p5_p5)
        (not_succ_p5_p6)
        (not_succ_p5_p7)
        (not_succ_p5_p8)
        (not_succ_p5_p9)
        (not_succ_p6_p1)
        (not_succ_p6_p2)
        (not_succ_p6_p3)
        (not_succ_p6_p4)
        (not_succ_p6_p5)
        (not_succ_p6_p6)
        (not_succ_p6_p7)
        (not_succ_p6_p8)
        (not_succ_p6_p9)
        (not_succ_p7_p1)
        (not_succ_p7_p2)
        (not_succ_p7_p3)
        (not_succ_p7_p4)
        (not_succ_p7_p5)
        (not_succ_p7_p6)
        (not_succ_p7_p7)
        (not_succ_p7_p8)
        (not_succ_p7_p9)
        (not_succ_p8_p1)
        (not_succ_p8_p2)
        (not_succ_p8_p3)
        (not_succ_p8_p4)
        (not_succ_p8_p5)
        (not_succ_p8_p6)
        (not_succ_p8_p7)
        (not_succ_p8_p8)
        (not_succ_p8_p9)
        (not_succ_p9_p1)
        (not_succ_p9_p2)
        (not_succ_p9_p3)
        (not_succ_p9_p4)
        (not_succ_p9_p5)
        (not_succ_p9_p6)
        (not_succ_p9_p7)
        (not_succ_p9_p8)
        (not_succ_p9_p9)
        (not_survivorat_s_p1)
        (not_survivorat_s_p2)
        (not_survivorat_s_p3)
        (not_survivorat_s_p4)
        (not_survivorat_s_p5)
        (not_survivorat_s_p6)
        (not_survivorat_s_p7)
        (not_survivorat_s_p8)
        (not_survivorat_s_p9)
        (Ba_not_checked_p1)
        (Ba_not_checked_p2)
        (Ba_not_checked_p3)
        (Ba_not_checked_p4)
        (Ba_not_checked_p5)
        (Ba_not_checked_p6)
        (Ba_not_checked_p7)
        (Ba_not_checked_p8)
        (Ba_not_checked_p9)
        (Ba_not_hiddensurvivorat_s_p1)
        (Ba_not_hiddensurvivorat_s_p2)
        (Ba_not_hiddensurvivorat_s_p3)
        (Ba_not_hiddensurvivorat_s_p4)
        (Ba_not_hiddensurvivorat_s_p5)
        (Ba_not_hiddensurvivorat_s_p6)
        (Ba_not_hiddensurvivorat_s_p7)
        (Ba_not_hiddensurvivorat_s_p8)
        (Ba_not_hiddensurvivorat_s_p9)
        (Ba_not_survivorat_s_p1)
        (Ba_not_survivorat_s_p2)
        (Ba_not_survivorat_s_p3)
        (Ba_not_survivorat_s_p4)
        (Ba_not_survivorat_s_p5)
        (Ba_not_survivorat_s_p6)
        (Ba_not_survivorat_s_p7)
        (Ba_not_survivorat_s_p8)
        (Ba_not_survivorat_s_p9)
        (Ba_checked_p1)
        (Ba_checked_p2)
        (Ba_checked_p3)
        (Ba_checked_p4)
        (Ba_checked_p5)
        (Ba_checked_p6)
        (Ba_checked_p7)
        (Ba_checked_p8)
        (Ba_checked_p9)
        (Ba_hiddensurvivorat_s_p1)
        (Ba_hiddensurvivorat_s_p2)
        (Ba_hiddensurvivorat_s_p3)
        (Ba_hiddensurvivorat_s_p4)
        (Ba_hiddensurvivorat_s_p5)
        (Ba_hiddensurvivorat_s_p6)
        (Ba_hiddensurvivorat_s_p7)
        (Ba_hiddensurvivorat_s_p8)
        (Ba_hiddensurvivorat_s_p9)
        (Ba_survivorat_s_p1)
        (Ba_survivorat_s_p2)
        (Ba_survivorat_s_p3)
        (Ba_survivorat_s_p4)
        (Ba_survivorat_s_p5)
        (Ba_survivorat_s_p6)
        (Ba_survivorat_s_p7)
        (Ba_survivorat_s_p8)
        (Ba_survivorat_s_p9)
        (Bb_not_checked_p1)
        (Bb_not_checked_p2)
        (Bb_not_checked_p3)
        (Bb_not_checked_p4)
        (Bb_not_checked_p5)
        (Bb_not_checked_p6)
        (Bb_not_checked_p7)
        (Bb_not_checked_p8)
        (Bb_not_checked_p9)
        (Bb_not_hiddensurvivorat_s_p1)
        (Bb_not_hiddensurvivorat_s_p2)
        (Bb_not_hiddensurvivorat_s_p3)
        (Bb_not_hiddensurvivorat_s_p4)
        (Bb_not_hiddensurvivorat_s_p5)
        (Bb_not_hiddensurvivorat_s_p6)
        (Bb_not_hiddensurvivorat_s_p7)
        (Bb_not_hiddensurvivorat_s_p8)
        (Bb_not_hiddensurvivorat_s_p9)
        (Bb_not_survivorat_s_p1)
        (Bb_not_survivorat_s_p2)
        (Bb_not_survivorat_s_p3)
        (Bb_not_survivorat_s_p4)
        (Bb_not_survivorat_s_p5)
        (Bb_not_survivorat_s_p6)
        (Bb_not_survivorat_s_p7)
        (Bb_not_survivorat_s_p8)
        (Bb_not_survivorat_s_p9)
        (Bb_checked_p1)
        (Bb_checked_p2)
        (Bb_checked_p3)
        (Bb_checked_p4)
        (Bb_checked_p5)
        (Bb_checked_p6)
        (Bb_checked_p7)
        (Bb_checked_p8)
        (Bb_checked_p9)
        (Bb_hiddensurvivorat_s_p1)
        (Bb_hiddensurvivorat_s_p2)
        (Bb_hiddensurvivorat_s_p3)
        (Bb_hiddensurvivorat_s_p4)
        (Bb_hiddensurvivorat_s_p5)
        (Bb_hiddensurvivorat_s_p6)
        (Bb_hiddensurvivorat_s_p7)
        (Bb_hiddensurvivorat_s_p8)
        (Bb_hiddensurvivorat_s_p9)
        (Bb_survivorat_s_p1)
        (Bb_survivorat_s_p2)
        (Bb_survivorat_s_p3)
        (Bb_survivorat_s_p4)
        (Bb_survivorat_s_p5)
        (Bb_survivorat_s_p6)
        (Bb_survivorat_s_p7)
        (Bb_survivorat_s_p8)
        (Bb_survivorat_s_p9)
        (Bc_not_checked_p1)
        (Bc_not_checked_p2)
        (Bc_not_checked_p3)
        (Bc_not_checked_p4)
        (Bc_not_checked_p5)
        (Bc_not_checked_p6)
        (Bc_not_checked_p7)
        (Bc_not_checked_p8)
        (Bc_not_checked_p9)
        (Bc_not_hiddensurvivorat_s_p1)
        (Bc_not_hiddensurvivorat_s_p2)
        (Bc_not_hiddensurvivorat_s_p3)
        (Bc_not_hiddensurvivorat_s_p4)
        (Bc_not_hiddensurvivorat_s_p5)
        (Bc_not_hiddensurvivorat_s_p6)
        (Bc_not_hiddensurvivorat_s_p7)
        (Bc_not_hiddensurvivorat_s_p8)
        (Bc_not_hiddensurvivorat_s_p9)
        (Bc_not_survivorat_s_p1)
        (Bc_not_survivorat_s_p2)
        (Bc_not_survivorat_s_p3)
        (Bc_not_survivorat_s_p4)
        (Bc_not_survivorat_s_p5)
        (Bc_not_survivorat_s_p6)
        (Bc_not_survivorat_s_p7)
        (Bc_not_survivorat_s_p8)
        (Bc_not_survivorat_s_p9)
        (Bc_checked_p1)
        (Bc_checked_p2)
        (Bc_checked_p3)
        (Bc_checked_p4)
        (Bc_checked_p5)
        (Bc_checked_p6)
        (Bc_checked_p7)
        (Bc_checked_p8)
        (Bc_checked_p9)
        (Bc_hiddensurvivorat_s_p1)
        (Bc_hiddensurvivorat_s_p2)
        (Bc_hiddensurvivorat_s_p3)
        (Bc_hiddensurvivorat_s_p4)
        (Bc_hiddensurvivorat_s_p5)
        (Bc_hiddensurvivorat_s_p6)
        (Bc_hiddensurvivorat_s_p7)
        (Bc_hiddensurvivorat_s_p8)
        (Bc_hiddensurvivorat_s_p9)
        (Bc_survivorat_s_p1)
        (Bc_survivorat_s_p2)
        (Bc_survivorat_s_p3)
        (Bc_survivorat_s_p4)
        (Bc_survivorat_s_p5)
        (Bc_survivorat_s_p6)
        (Bc_survivorat_s_p7)
        (Bc_survivorat_s_p8)
        (Bc_survivorat_s_p9)
        (Bd_not_checked_p1)
        (Bd_not_checked_p2)
        (Bd_not_checked_p3)
        (Bd_not_checked_p4)
        (Bd_not_checked_p5)
        (Bd_not_checked_p6)
        (Bd_not_checked_p7)
        (Bd_not_checked_p8)
        (Bd_not_checked_p9)
        (Bd_not_hiddensurvivorat_s_p1)
        (Bd_not_hiddensurvivorat_s_p2)
        (Bd_not_hiddensurvivorat_s_p3)
        (Bd_not_hiddensurvivorat_s_p4)
        (Bd_not_hiddensurvivorat_s_p5)
        (Bd_not_hiddensurvivorat_s_p6)
        (Bd_not_hiddensurvivorat_s_p7)
        (Bd_not_hiddensurvivorat_s_p8)
        (Bd_not_hiddensurvivorat_s_p9)
        (Bd_not_survivorat_s_p1)
        (Bd_not_survivorat_s_p2)
        (Bd_not_survivorat_s_p3)
        (Bd_not_survivorat_s_p4)
        (Bd_not_survivorat_s_p5)
        (Bd_not_survivorat_s_p6)
        (Bd_not_survivorat_s_p7)
        (Bd_not_survivorat_s_p8)
        (Bd_not_survivorat_s_p9)
        (Bd_checked_p1)
        (Bd_checked_p2)
        (Bd_checked_p3)
        (Bd_checked_p4)
        (Bd_checked_p5)
        (Bd_checked_p6)
        (Bd_checked_p7)
        (Bd_checked_p8)
        (Bd_checked_p9)
        (Bd_hiddensurvivorat_s_p1)
        (Bd_hiddensurvivorat_s_p2)
        (Bd_hiddensurvivorat_s_p3)
        (Bd_hiddensurvivorat_s_p4)
        (Bd_hiddensurvivorat_s_p5)
        (Bd_hiddensurvivorat_s_p6)
        (Bd_hiddensurvivorat_s_p7)
        (Bd_hiddensurvivorat_s_p8)
        (Bd_hiddensurvivorat_s_p9)
        (Bd_survivorat_s_p1)
        (Bd_survivorat_s_p2)
        (Bd_survivorat_s_p3)
        (Bd_survivorat_s_p4)
        (Bd_survivorat_s_p5)
        (Bd_survivorat_s_p6)
        (Bd_survivorat_s_p7)
        (Bd_survivorat_s_p8)
        (Bd_survivorat_s_p9)
        (Pa_not_checked_p1)
        (Pa_not_checked_p2)
        (Pa_not_checked_p3)
        (Pa_not_checked_p4)
        (Pa_not_checked_p5)
        (Pa_not_checked_p6)
        (Pa_not_checked_p7)
        (Pa_not_checked_p8)
        (Pa_not_checked_p9)
        (Pa_not_hiddensurvivorat_s_p1)
        (Pa_not_hiddensurvivorat_s_p2)
        (Pa_not_hiddensurvivorat_s_p3)
        (Pa_not_hiddensurvivorat_s_p4)
        (Pa_not_hiddensurvivorat_s_p5)
        (Pa_not_hiddensurvivorat_s_p6)
        (Pa_not_hiddensurvivorat_s_p7)
        (Pa_not_hiddensurvivorat_s_p8)
        (Pa_not_hiddensurvivorat_s_p9)
        (Pa_not_survivorat_s_p1)
        (Pa_not_survivorat_s_p2)
        (Pa_not_survivorat_s_p3)
        (Pa_not_survivorat_s_p4)
        (Pa_not_survivorat_s_p5)
        (Pa_not_survivorat_s_p6)
        (Pa_not_survivorat_s_p7)
        (Pa_not_survivorat_s_p8)
        (Pa_not_survivorat_s_p9)
        (Pa_checked_p1)
        (Pa_checked_p2)
        (Pa_checked_p3)
        (Pa_checked_p4)
        (Pa_checked_p5)
        (Pa_checked_p6)
        (Pa_checked_p7)
        (Pa_checked_p8)
        (Pa_checked_p9)
        (Pa_hiddensurvivorat_s_p1)
        (Pa_hiddensurvivorat_s_p2)
        (Pa_hiddensurvivorat_s_p3)
        (Pa_hiddensurvivorat_s_p4)
        (Pa_hiddensurvivorat_s_p5)
        (Pa_hiddensurvivorat_s_p6)
        (Pa_hiddensurvivorat_s_p7)
        (Pa_hiddensurvivorat_s_p8)
        (Pa_hiddensurvivorat_s_p9)
        (Pa_survivorat_s_p1)
        (Pa_survivorat_s_p2)
        (Pa_survivorat_s_p3)
        (Pa_survivorat_s_p4)
        (Pa_survivorat_s_p5)
        (Pa_survivorat_s_p6)
        (Pa_survivorat_s_p7)
        (Pa_survivorat_s_p8)
        (Pa_survivorat_s_p9)
        (Pb_not_checked_p1)
        (Pb_not_checked_p2)
        (Pb_not_checked_p3)
        (Pb_not_checked_p4)
        (Pb_not_checked_p5)
        (Pb_not_checked_p6)
        (Pb_not_checked_p7)
        (Pb_not_checked_p8)
        (Pb_not_checked_p9)
        (Pb_not_hiddensurvivorat_s_p1)
        (Pb_not_hiddensurvivorat_s_p2)
        (Pb_not_hiddensurvivorat_s_p3)
        (Pb_not_hiddensurvivorat_s_p4)
        (Pb_not_hiddensurvivorat_s_p5)
        (Pb_not_hiddensurvivorat_s_p6)
        (Pb_not_hiddensurvivorat_s_p7)
        (Pb_not_hiddensurvivorat_s_p8)
        (Pb_not_hiddensurvivorat_s_p9)
        (Pb_not_survivorat_s_p1)
        (Pb_not_survivorat_s_p2)
        (Pb_not_survivorat_s_p3)
        (Pb_not_survivorat_s_p4)
        (Pb_not_survivorat_s_p5)
        (Pb_not_survivorat_s_p6)
        (Pb_not_survivorat_s_p7)
        (Pb_not_survivorat_s_p8)
        (Pb_not_survivorat_s_p9)
        (Pb_checked_p1)
        (Pb_checked_p2)
        (Pb_checked_p3)
        (Pb_checked_p4)
        (Pb_checked_p5)
        (Pb_checked_p6)
        (Pb_checked_p7)
        (Pb_checked_p8)
        (Pb_checked_p9)
        (Pb_hiddensurvivorat_s_p1)
        (Pb_hiddensurvivorat_s_p2)
        (Pb_hiddensurvivorat_s_p3)
        (Pb_hiddensurvivorat_s_p4)
        (Pb_hiddensurvivorat_s_p5)
        (Pb_hiddensurvivorat_s_p6)
        (Pb_hiddensurvivorat_s_p7)
        (Pb_hiddensurvivorat_s_p8)
        (Pb_hiddensurvivorat_s_p9)
        (Pb_survivorat_s_p1)
        (Pb_survivorat_s_p2)
        (Pb_survivorat_s_p3)
        (Pb_survivorat_s_p4)
        (Pb_survivorat_s_p5)
        (Pb_survivorat_s_p6)
        (Pb_survivorat_s_p7)
        (Pb_survivorat_s_p8)
        (Pb_survivorat_s_p9)
        (Pc_not_checked_p1)
        (Pc_not_checked_p2)
        (Pc_not_checked_p3)
        (Pc_not_checked_p4)
        (Pc_not_checked_p5)
        (Pc_not_checked_p6)
        (Pc_not_checked_p7)
        (Pc_not_checked_p8)
        (Pc_not_checked_p9)
        (Pc_not_hiddensurvivorat_s_p1)
        (Pc_not_hiddensurvivorat_s_p2)
        (Pc_not_hiddensurvivorat_s_p3)
        (Pc_not_hiddensurvivorat_s_p4)
        (Pc_not_hiddensurvivorat_s_p5)
        (Pc_not_hiddensurvivorat_s_p6)
        (Pc_not_hiddensurvivorat_s_p7)
        (Pc_not_hiddensurvivorat_s_p8)
        (Pc_not_hiddensurvivorat_s_p9)
        (Pc_not_survivorat_s_p1)
        (Pc_not_survivorat_s_p2)
        (Pc_not_survivorat_s_p3)
        (Pc_not_survivorat_s_p4)
        (Pc_not_survivorat_s_p5)
        (Pc_not_survivorat_s_p6)
        (Pc_not_survivorat_s_p7)
        (Pc_not_survivorat_s_p8)
        (Pc_not_survivorat_s_p9)
        (Pc_checked_p1)
        (Pc_checked_p2)
        (Pc_checked_p3)
        (Pc_checked_p4)
        (Pc_checked_p5)
        (Pc_checked_p6)
        (Pc_checked_p7)
        (Pc_checked_p8)
        (Pc_checked_p9)
        (Pc_hiddensurvivorat_s_p1)
        (Pc_hiddensurvivorat_s_p2)
        (Pc_hiddensurvivorat_s_p3)
        (Pc_hiddensurvivorat_s_p4)
        (Pc_hiddensurvivorat_s_p5)
        (Pc_hiddensurvivorat_s_p6)
        (Pc_hiddensurvivorat_s_p7)
        (Pc_hiddensurvivorat_s_p8)
        (Pc_hiddensurvivorat_s_p9)
        (Pc_survivorat_s_p1)
        (Pc_survivorat_s_p2)
        (Pc_survivorat_s_p3)
        (Pc_survivorat_s_p4)
        (Pc_survivorat_s_p5)
        (Pc_survivorat_s_p6)
        (Pc_survivorat_s_p7)
        (Pc_survivorat_s_p8)
        (Pc_survivorat_s_p9)
        (Pd_not_checked_p1)
        (Pd_not_checked_p2)
        (Pd_not_checked_p3)
        (Pd_not_checked_p4)
        (Pd_not_checked_p5)
        (Pd_not_checked_p6)
        (Pd_not_checked_p7)
        (Pd_not_checked_p8)
        (Pd_not_checked_p9)
        (Pd_not_hiddensurvivorat_s_p1)
        (Pd_not_hiddensurvivorat_s_p2)
        (Pd_not_hiddensurvivorat_s_p3)
        (Pd_not_hiddensurvivorat_s_p4)
        (Pd_not_hiddensurvivorat_s_p5)
        (Pd_not_hiddensurvivorat_s_p6)
        (Pd_not_hiddensurvivorat_s_p7)
        (Pd_not_hiddensurvivorat_s_p8)
        (Pd_not_hiddensurvivorat_s_p9)
        (Pd_not_survivorat_s_p1)
        (Pd_not_survivorat_s_p2)
        (Pd_not_survivorat_s_p3)
        (Pd_not_survivorat_s_p4)
        (Pd_not_survivorat_s_p5)
        (Pd_not_survivorat_s_p6)
        (Pd_not_survivorat_s_p7)
        (Pd_not_survivorat_s_p8)
        (Pd_not_survivorat_s_p9)
        (Pd_checked_p1)
        (Pd_checked_p2)
        (Pd_checked_p3)
        (Pd_checked_p4)
        (Pd_checked_p5)
        (Pd_checked_p6)
        (Pd_checked_p7)
        (Pd_checked_p8)
        (Pd_checked_p9)
        (Pd_hiddensurvivorat_s_p1)
        (Pd_hiddensurvivorat_s_p2)
        (Pd_hiddensurvivorat_s_p3)
        (Pd_hiddensurvivorat_s_p4)
        (Pd_hiddensurvivorat_s_p5)
        (Pd_hiddensurvivorat_s_p6)
        (Pd_hiddensurvivorat_s_p7)
        (Pd_hiddensurvivorat_s_p8)
        (Pd_hiddensurvivorat_s_p9)
        (Pd_survivorat_s_p1)
        (Pd_survivorat_s_p2)
        (Pd_survivorat_s_p3)
        (Pd_survivorat_s_p4)
        (Pd_survivorat_s_p5)
        (Pd_survivorat_s_p6)
        (Pd_survivorat_s_p7)
        (Pd_survivorat_s_p8)
        (Pd_survivorat_s_p9)
        (at_a_p1)
        (at_a_p2)
        (at_a_p3)
        (at_a_p4)
        (at_a_p5)
        (at_a_p6)
        (at_a_p7)
        (at_a_p8)
        (at_a_p9)
        (at_b_p1)
        (at_b_p2)
        (at_b_p3)
        (at_b_p4)
        (at_b_p5)
        (at_b_p6)
        (at_b_p7)
        (at_b_p8)
        (at_b_p9)
        (at_c_p1)
        (at_c_p2)
        (at_c_p3)
        (at_c_p4)
        (at_c_p5)
        (at_c_p6)
        (at_c_p7)
        (at_c_p8)
        (at_c_p9)
        (at_d_p1)
        (at_d_p2)
        (at_d_p3)
        (at_d_p4)
        (at_d_p5)
        (at_d_p6)
        (at_d_p7)
        (at_d_p8)
        (at_d_p9)
        (checked_p1)
        (checked_p2)
        (checked_p3)
        (checked_p4)
        (checked_p5)
        (checked_p6)
        (checked_p7)
        (checked_p8)
        (checked_p9)
        (hiddensurvivorat_s_p1)
        (hiddensurvivorat_s_p2)
        (hiddensurvivorat_s_p3)
        (hiddensurvivorat_s_p4)
        (hiddensurvivorat_s_p5)
        (hiddensurvivorat_s_p6)
        (hiddensurvivorat_s_p7)
        (hiddensurvivorat_s_p8)
        (hiddensurvivorat_s_p9)
        (succ_p1_p1)
        (succ_p1_p2)
        (succ_p1_p3)
        (succ_p1_p4)
        (succ_p1_p5)
        (succ_p1_p6)
        (succ_p1_p7)
        (succ_p1_p8)
        (succ_p1_p9)
        (succ_p2_p1)
        (succ_p2_p2)
        (succ_p2_p3)
        (succ_p2_p4)
        (succ_p2_p5)
        (succ_p2_p6)
        (succ_p2_p7)
        (succ_p2_p8)
        (succ_p2_p9)
        (succ_p3_p1)
        (succ_p3_p2)
        (succ_p3_p3)
        (succ_p3_p4)
        (succ_p3_p5)
        (succ_p3_p6)
        (succ_p3_p7)
        (succ_p3_p8)
        (succ_p3_p9)
        (succ_p4_p1)
        (succ_p4_p2)
        (succ_p4_p3)
        (succ_p4_p4)
        (succ_p4_p5)
        (succ_p4_p6)
        (succ_p4_p7)
        (succ_p4_p8)
        (succ_p4_p9)
        (succ_p5_p1)
        (succ_p5_p2)
        (succ_p5_p3)
        (succ_p5_p4)
        (succ_p5_p5)
        (succ_p5_p6)
        (succ_p5_p7)
        (succ_p5_p8)
        (succ_p5_p9)
        (succ_p6_p1)
        (succ_p6_p2)
        (succ_p6_p3)
        (succ_p6_p4)
        (succ_p6_p5)
        (succ_p6_p6)
        (succ_p6_p7)
        (succ_p6_p8)
        (succ_p6_p9)
        (succ_p7_p1)
        (succ_p7_p2)
        (succ_p7_p3)
        (succ_p7_p4)
        (succ_p7_p5)
        (succ_p7_p6)
        (succ_p7_p7)
        (succ_p7_p8)
        (succ_p7_p9)
        (succ_p8_p1)
        (succ_p8_p2)
        (succ_p8_p3)
        (succ_p8_p4)
        (succ_p8_p5)
        (succ_p8_p6)
        (succ_p8_p7)
        (succ_p8_p8)
        (succ_p8_p9)
        (succ_p9_p1)
        (succ_p9_p2)
        (succ_p9_p3)
        (succ_p9_p4)
        (succ_p9_p5)
        (succ_p9_p6)
        (succ_p9_p7)
        (succ_p9_p8)
        (succ_p9_p9)
        (survivorat_s_p1)
        (survivorat_s_p2)
        (survivorat_s_p3)
        (survivorat_s_p4)
        (survivorat_s_p5)
        (survivorat_s_p6)
        (survivorat_s_p7)
        (survivorat_s_p8)
        (survivorat_s_p9)
    )

    (:action badcomm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #17743: <==closure== 56933 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #31973: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #47133: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #51113: <==closure== 47133 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #56933: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #61963: <==closure== 85746 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #85746: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #99474: <==closure== 31973 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10905: <==negation-removal== 51113 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #14287: <==negation-removal== 56933 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #14390: <==uncertain_firing== 47133 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #18299: <==negation-removal== 99474 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #22198: <==negation-removal== 85746 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #23091: <==negation-removal== 47133 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #33713: <==unclosure== 42898 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #33856: <==unclosure== 14390 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #33939: <==negation-removal== 17743 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #42898: <==uncertain_firing== 85746 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #50088: <==unclosure== 90707 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #85160: <==negation-removal== 61963 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #86841: <==unclosure== 88776 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #88776: <==uncertain_firing== 31973 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #89325: <==negation-removal== 31973 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #90707: <==uncertain_firing== 56933 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #17743: <==closure== 56933 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #31973: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #47133: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #51113: <==closure== 47133 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #56933: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #61963: <==closure== 85746 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #85746: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #99474: <==closure== 31973 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10905: <==negation-removal== 51113 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #14287: <==negation-removal== 56933 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #14390: <==uncertain_firing== 47133 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #18299: <==negation-removal== 99474 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #22198: <==negation-removal== 85746 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #23091: <==negation-removal== 47133 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #33713: <==unclosure== 42898 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #33856: <==unclosure== 14390 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #33939: <==negation-removal== 17743 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #42898: <==uncertain_firing== 85746 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #50088: <==unclosure== 90707 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #85160: <==negation-removal== 61963 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #86841: <==unclosure== 88776 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #88776: <==uncertain_firing== 31973 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #89325: <==negation-removal== 31973 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #90707: <==uncertain_firing== 56933 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #17743: <==closure== 56933 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #31973: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #47133: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #51113: <==closure== 47133 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #56933: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #61963: <==closure== 85746 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #85746: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #99474: <==closure== 31973 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10905: <==negation-removal== 51113 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #14287: <==negation-removal== 56933 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #14390: <==uncertain_firing== 47133 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #18299: <==negation-removal== 99474 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #22198: <==negation-removal== 85746 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #23091: <==negation-removal== 47133 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #33713: <==unclosure== 42898 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #33856: <==unclosure== 14390 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #33939: <==negation-removal== 17743 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #42898: <==uncertain_firing== 85746 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #50088: <==unclosure== 90707 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #85160: <==negation-removal== 61963 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #86841: <==unclosure== 88776 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #88776: <==uncertain_firing== 31973 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #89325: <==negation-removal== 31973 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #90707: <==uncertain_firing== 56933 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #17743: <==closure== 56933 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #31973: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #47133: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #51113: <==closure== 47133 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #56933: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #61963: <==closure== 85746 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #85746: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #99474: <==closure== 31973 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10905: <==negation-removal== 51113 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #14287: <==negation-removal== 56933 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #14390: <==uncertain_firing== 47133 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #18299: <==negation-removal== 99474 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #22198: <==negation-removal== 85746 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #23091: <==negation-removal== 47133 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #33713: <==unclosure== 42898 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #33856: <==unclosure== 14390 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #33939: <==negation-removal== 17743 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #42898: <==uncertain_firing== 85746 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #50088: <==unclosure== 90707 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #85160: <==negation-removal== 61963 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #86841: <==unclosure== 88776 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #88776: <==uncertain_firing== 31973 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #89325: <==negation-removal== 31973 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #90707: <==uncertain_firing== 56933 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #19221: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #26291: <==closure== 19221 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #27431: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #27640: <==closure== 80511 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #29569: <==closure== 27431 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #34817: <==closure== 42479 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #42479: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #80511: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #11146: <==negation-removal== 26291 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #11659: <==uncertain_firing== 42479 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #12763: <==unclosure== 11659 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #13634: <==negation-removal== 80511 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #24545: <==unclosure== 30647 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #27376: <==negation-removal== 42479 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #29981: <==uncertain_firing== 80511 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #29983: <==unclosure== 56070 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #30647: <==uncertain_firing== 27431 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #49448: <==unclosure== 29981 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #55081: <==negation-removal== 27640 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #56070: <==uncertain_firing== 19221 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #75324: <==negation-removal== 34817 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #80420: <==negation-removal== 19221 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #81345: <==negation-removal== 29569 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #91149: <==negation-removal== 27431 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #19221: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #26291: <==closure== 19221 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #27431: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #27640: <==closure== 80511 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #29569: <==closure== 27431 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #34817: <==closure== 42479 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #42479: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #80511: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #11146: <==negation-removal== 26291 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #11659: <==uncertain_firing== 42479 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #12763: <==unclosure== 11659 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #13634: <==negation-removal== 80511 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #24545: <==unclosure== 30647 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #27376: <==negation-removal== 42479 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #29981: <==uncertain_firing== 80511 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #29983: <==unclosure== 56070 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #30647: <==uncertain_firing== 27431 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #49448: <==unclosure== 29981 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #55081: <==negation-removal== 27640 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #56070: <==uncertain_firing== 19221 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #75324: <==negation-removal== 34817 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #80420: <==negation-removal== 19221 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #81345: <==negation-removal== 29569 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #91149: <==negation-removal== 27431 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #19221: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #26291: <==closure== 19221 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #27431: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #27640: <==closure== 80511 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #29569: <==closure== 27431 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #34817: <==closure== 42479 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #42479: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #80511: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #11146: <==negation-removal== 26291 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #11659: <==uncertain_firing== 42479 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #12763: <==unclosure== 11659 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #13634: <==negation-removal== 80511 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #24545: <==unclosure== 30647 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #27376: <==negation-removal== 42479 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #29981: <==uncertain_firing== 80511 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #29983: <==unclosure== 56070 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #30647: <==uncertain_firing== 27431 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #49448: <==unclosure== 29981 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #55081: <==negation-removal== 27640 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #56070: <==uncertain_firing== 19221 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #75324: <==negation-removal== 34817 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #80420: <==negation-removal== 19221 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #81345: <==negation-removal== 29569 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #91149: <==negation-removal== 27431 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #19221: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #26291: <==closure== 19221 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #27431: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #27640: <==closure== 80511 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #29569: <==closure== 27431 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #34817: <==closure== 42479 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #42479: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #80511: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #11146: <==negation-removal== 26291 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #11659: <==uncertain_firing== 42479 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #12763: <==unclosure== 11659 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #13634: <==negation-removal== 80511 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #24545: <==unclosure== 30647 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #27376: <==negation-removal== 42479 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #29981: <==uncertain_firing== 80511 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #29983: <==unclosure== 56070 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #30647: <==uncertain_firing== 27431 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #49448: <==unclosure== 29981 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #55081: <==negation-removal== 27640 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #56070: <==uncertain_firing== 19221 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #75324: <==negation-removal== 34817 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #80420: <==negation-removal== 19221 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #81345: <==negation-removal== 29569 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #91149: <==negation-removal== 27431 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #28120: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #28772: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #41182: <==closure== 28120 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #49083: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #55379: <==closure== 72876 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #63073: <==closure== 28772 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #72876: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #86465: <==closure== 49083 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #16264: <==negation-removal== 28120 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #17939: <==negation-removal== 41182 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #23709: <==unclosure== 72466 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #24900: <==negation-removal== 55379 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #31151: <==uncertain_firing== 28772 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #51137: <==uncertain_firing== 49083 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #51706: <==unclosure== 31151 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #64331: <==negation-removal== 49083 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #68514: <==unclosure== 75590 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #72466: <==uncertain_firing== 72876 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #72569: <==negation-removal== 72876 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #75590: <==uncertain_firing== 28120 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #75681: <==negation-removal== 86465 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #76697: <==unclosure== 51137 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #77983: <==negation-removal== 63073 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #78193: <==negation-removal== 28772 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #28120: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #28772: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #41182: <==closure== 28120 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #49083: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #55379: <==closure== 72876 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #63073: <==closure== 28772 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #72876: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #86465: <==closure== 49083 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #16264: <==negation-removal== 28120 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #17939: <==negation-removal== 41182 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #23709: <==unclosure== 72466 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #24900: <==negation-removal== 55379 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #31151: <==uncertain_firing== 28772 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #51137: <==uncertain_firing== 49083 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #51706: <==unclosure== 31151 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #64331: <==negation-removal== 49083 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #68514: <==unclosure== 75590 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #72466: <==uncertain_firing== 72876 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #72569: <==negation-removal== 72876 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #75590: <==uncertain_firing== 28120 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #75681: <==negation-removal== 86465 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #76697: <==unclosure== 51137 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #77983: <==negation-removal== 63073 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #78193: <==negation-removal== 28772 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #28120: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #28772: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #41182: <==closure== 28120 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #49083: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #55379: <==closure== 72876 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #63073: <==closure== 28772 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #72876: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #86465: <==closure== 49083 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #16264: <==negation-removal== 28120 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #17939: <==negation-removal== 41182 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #23709: <==unclosure== 72466 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #24900: <==negation-removal== 55379 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #31151: <==uncertain_firing== 28772 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #51137: <==uncertain_firing== 49083 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #51706: <==unclosure== 31151 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #64331: <==negation-removal== 49083 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #68514: <==unclosure== 75590 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #72466: <==uncertain_firing== 72876 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #72569: <==negation-removal== 72876 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #75590: <==uncertain_firing== 28120 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #75681: <==negation-removal== 86465 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #76697: <==unclosure== 51137 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #77983: <==negation-removal== 63073 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #78193: <==negation-removal== 28772 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #28120: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #28772: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #41182: <==closure== 28120 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #49083: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #55379: <==closure== 72876 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #63073: <==closure== 28772 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #72876: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #86465: <==closure== 49083 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #16264: <==negation-removal== 28120 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #17939: <==negation-removal== 41182 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #23709: <==unclosure== 72466 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #24900: <==negation-removal== 55379 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #31151: <==uncertain_firing== 28772 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #51137: <==uncertain_firing== 49083 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #51706: <==unclosure== 31151 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #64331: <==negation-removal== 49083 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #68514: <==unclosure== 75590 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #72466: <==uncertain_firing== 72876 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #72569: <==negation-removal== 72876 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #75590: <==uncertain_firing== 28120 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #75681: <==negation-removal== 86465 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #76697: <==unclosure== 51137 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #77983: <==negation-removal== 63073 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #78193: <==negation-removal== 28772 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #21781: <==closure== 29877 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #29877: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #30182: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #38677: <==closure== 87466 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #46301: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #52856: <==closure== 30182 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #87466: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #87612: <==closure== 46301 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #13441: <==unclosure== 54537 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #14248: <==unclosure== 61676 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15709: <==negation-removal== 29877 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #16545: <==negation-removal== 87466 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #16989: <==negation-removal== 52856 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #33358: <==negation-removal== 46301 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #35388: <==negation-removal== 21781 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #39893: <==negation-removal== 87612 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #47473: <==negation-removal== 30182 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #54537: <==uncertain_firing== 30182 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #59363: <==uncertain_firing== 46301 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #61676: <==uncertain_firing== 29877 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #68048: <==unclosure== 80758 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #75734: <==unclosure== 59363 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #80758: <==uncertain_firing== 87466 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #80764: <==negation-removal== 38677 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #21781: <==closure== 29877 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #29877: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #30182: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #38677: <==closure== 87466 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #46301: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #52856: <==closure== 30182 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #87466: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #87612: <==closure== 46301 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #13441: <==unclosure== 54537 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #14248: <==unclosure== 61676 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15709: <==negation-removal== 29877 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #16545: <==negation-removal== 87466 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #16989: <==negation-removal== 52856 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #33358: <==negation-removal== 46301 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #35388: <==negation-removal== 21781 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #39893: <==negation-removal== 87612 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #47473: <==negation-removal== 30182 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #54537: <==uncertain_firing== 30182 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #59363: <==uncertain_firing== 46301 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #61676: <==uncertain_firing== 29877 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #68048: <==unclosure== 80758 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #75734: <==unclosure== 59363 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #80758: <==uncertain_firing== 87466 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #80764: <==negation-removal== 38677 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #21781: <==closure== 29877 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #29877: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #30182: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #38677: <==closure== 87466 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #46301: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #52856: <==closure== 30182 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #87466: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #87612: <==closure== 46301 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #13441: <==unclosure== 54537 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #14248: <==unclosure== 61676 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15709: <==negation-removal== 29877 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #16545: <==negation-removal== 87466 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #16989: <==negation-removal== 52856 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #33358: <==negation-removal== 46301 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #35388: <==negation-removal== 21781 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #39893: <==negation-removal== 87612 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #47473: <==negation-removal== 30182 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #54537: <==uncertain_firing== 30182 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #59363: <==uncertain_firing== 46301 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #61676: <==uncertain_firing== 29877 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #68048: <==unclosure== 80758 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #75734: <==unclosure== 59363 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #80758: <==uncertain_firing== 87466 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #80764: <==negation-removal== 38677 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #21781: <==closure== 29877 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #29877: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #30182: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #38677: <==closure== 87466 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #46301: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #52856: <==closure== 30182 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #87466: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #87612: <==closure== 46301 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #13441: <==unclosure== 54537 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #14248: <==unclosure== 61676 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15709: <==negation-removal== 29877 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #16545: <==negation-removal== 87466 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #16989: <==negation-removal== 52856 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #33358: <==negation-removal== 46301 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #35388: <==negation-removal== 21781 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #39893: <==negation-removal== 87612 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #47473: <==negation-removal== 30182 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #54537: <==uncertain_firing== 30182 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #59363: <==uncertain_firing== 46301 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #61676: <==uncertain_firing== 29877 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #68048: <==unclosure== 80758 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #75734: <==unclosure== 59363 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #80758: <==uncertain_firing== 87466 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #80764: <==negation-removal== 38677 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #29255: <==closure== 63176 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #34797: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #39408: <==closure== 57775 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #51859: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #57775: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #63176: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #66223: <==closure== 34797 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #91524: <==closure== 51859 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #19324: <==unclosure== 81311 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #20399: <==negation-removal== 57775 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #23463: <==uncertain_firing== 34797 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #34298: <==uncertain_firing== 63176 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #38377: <==negation-removal== 63176 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #40329: <==negation-removal== 34797 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #42269: <==unclosure== 23463 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #42423: <==negation-removal== 91524 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #44699: <==negation-removal== 39408 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #45201: <==unclosure== 70909 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #55318: <==negation-removal== 51859 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #55541: <==unclosure== 34298 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #61795: <==negation-removal== 66223 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #70909: <==uncertain_firing== 51859 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #81311: <==uncertain_firing== 57775 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #85750: <==negation-removal== 29255 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #29255: <==closure== 63176 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #34797: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #39408: <==closure== 57775 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #51859: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #57775: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #63176: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #66223: <==closure== 34797 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #91524: <==closure== 51859 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #19324: <==unclosure== 81311 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #20399: <==negation-removal== 57775 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #23463: <==uncertain_firing== 34797 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #34298: <==uncertain_firing== 63176 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #38377: <==negation-removal== 63176 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #40329: <==negation-removal== 34797 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #42269: <==unclosure== 23463 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #42423: <==negation-removal== 91524 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #44699: <==negation-removal== 39408 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #45201: <==unclosure== 70909 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #55318: <==negation-removal== 51859 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #55541: <==unclosure== 34298 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #61795: <==negation-removal== 66223 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #70909: <==uncertain_firing== 51859 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #81311: <==uncertain_firing== 57775 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #85750: <==negation-removal== 29255 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #29255: <==closure== 63176 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #34797: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #39408: <==closure== 57775 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #51859: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #57775: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #63176: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #66223: <==closure== 34797 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #91524: <==closure== 51859 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #19324: <==unclosure== 81311 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #20399: <==negation-removal== 57775 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #23463: <==uncertain_firing== 34797 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #34298: <==uncertain_firing== 63176 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #38377: <==negation-removal== 63176 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #40329: <==negation-removal== 34797 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #42269: <==unclosure== 23463 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #42423: <==negation-removal== 91524 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #44699: <==negation-removal== 39408 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #45201: <==unclosure== 70909 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #55318: <==negation-removal== 51859 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #55541: <==unclosure== 34298 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #61795: <==negation-removal== 66223 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #70909: <==uncertain_firing== 51859 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #81311: <==uncertain_firing== 57775 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #85750: <==negation-removal== 29255 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #29255: <==closure== 63176 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #34797: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #39408: <==closure== 57775 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #51859: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #57775: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #63176: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #66223: <==closure== 34797 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #91524: <==closure== 51859 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #19324: <==unclosure== 81311 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #20399: <==negation-removal== 57775 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #23463: <==uncertain_firing== 34797 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #34298: <==uncertain_firing== 63176 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #38377: <==negation-removal== 63176 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #40329: <==negation-removal== 34797 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #42269: <==unclosure== 23463 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #42423: <==negation-removal== 91524 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #44699: <==negation-removal== 39408 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #45201: <==unclosure== 70909 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #55318: <==negation-removal== 51859 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #55541: <==unclosure== 34298 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #61795: <==negation-removal== 66223 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #70909: <==uncertain_firing== 51859 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #81311: <==uncertain_firing== 57775 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #85750: <==negation-removal== 29255 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #21775: <==closure== 28430 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #28430: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #44711: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #49071: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #54773: <==closure== 59192 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #59192: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #88668: <==closure== 44711 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #91202: <==closure== 49071 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #17211: <==uncertain_firing== 28430 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #29391: <==uncertain_firing== 44711 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #39529: <==negation-removal== 54773 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #39820: <==negation-removal== 91202 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #45069: <==uncertain_firing== 59192 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49809: <==unclosure== 45069 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #53773: <==negation-removal== 59192 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #61783: <==negation-removal== 44711 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #62705: <==negation-removal== 49071 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #64198: <==unclosure== 29391 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #66831: <==unclosure== 68816 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #67456: <==unclosure== 17211 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #68816: <==uncertain_firing== 49071 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #73410: <==negation-removal== 21775 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #75531: <==negation-removal== 88668 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #84569: <==negation-removal== 28430 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #21775: <==closure== 28430 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #28430: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #44711: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #49071: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #54773: <==closure== 59192 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #59192: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #88668: <==closure== 44711 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #91202: <==closure== 49071 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #17211: <==uncertain_firing== 28430 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #29391: <==uncertain_firing== 44711 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #39529: <==negation-removal== 54773 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #39820: <==negation-removal== 91202 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #45069: <==uncertain_firing== 59192 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49809: <==unclosure== 45069 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #53773: <==negation-removal== 59192 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #61783: <==negation-removal== 44711 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #62705: <==negation-removal== 49071 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #64198: <==unclosure== 29391 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #66831: <==unclosure== 68816 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #67456: <==unclosure== 17211 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #68816: <==uncertain_firing== 49071 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #73410: <==negation-removal== 21775 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #75531: <==negation-removal== 88668 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #84569: <==negation-removal== 28430 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #21775: <==closure== 28430 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #28430: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #44711: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #49071: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #54773: <==closure== 59192 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #59192: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #88668: <==closure== 44711 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #91202: <==closure== 49071 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #17211: <==uncertain_firing== 28430 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #29391: <==uncertain_firing== 44711 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #39529: <==negation-removal== 54773 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #39820: <==negation-removal== 91202 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #45069: <==uncertain_firing== 59192 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49809: <==unclosure== 45069 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #53773: <==negation-removal== 59192 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #61783: <==negation-removal== 44711 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #62705: <==negation-removal== 49071 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #64198: <==unclosure== 29391 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #66831: <==unclosure== 68816 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #67456: <==unclosure== 17211 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #68816: <==uncertain_firing== 49071 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #73410: <==negation-removal== 21775 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #75531: <==negation-removal== 88668 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #84569: <==negation-removal== 28430 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #21775: <==closure== 28430 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #28430: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #44711: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #49071: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #54773: <==closure== 59192 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #59192: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #88668: <==closure== 44711 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #91202: <==closure== 49071 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #17211: <==uncertain_firing== 28430 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #29391: <==uncertain_firing== 44711 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #39529: <==negation-removal== 54773 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #39820: <==negation-removal== 91202 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #45069: <==uncertain_firing== 59192 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #49809: <==unclosure== 45069 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #53773: <==negation-removal== 59192 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #61783: <==negation-removal== 44711 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #62705: <==negation-removal== 49071 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #64198: <==unclosure== 29391 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #66831: <==unclosure== 68816 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #67456: <==unclosure== 17211 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #68816: <==uncertain_firing== 49071 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #73410: <==negation-removal== 21775 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #75531: <==negation-removal== 88668 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #84569: <==negation-removal== 28430 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #41149: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #52231: <==closure== 66104 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #54563: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #58006: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #66104: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #69289: <==closure== 58006 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #78546: <==closure== 54563 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #87314: <==closure== 41149 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #10686: <==uncertain_firing== 41149 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #13476: <==negation-removal== 69289 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #17897: <==unclosure== 35532 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #18386: <==negation-removal== 41149 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #23089: <==negation-removal== 52231 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #35532: <==uncertain_firing== 58006 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #48394: <==unclosure== 81494 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #59755: <==negation-removal== 78546 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #60634: <==negation-removal== 66104 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #68316: <==negation-removal== 87314 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #71508: <==negation-removal== 58006 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #72596: <==uncertain_firing== 66104 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #78534: <==unclosure== 10686 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81494: <==uncertain_firing== 54563 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #88315: <==negation-removal== 54563 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #95449: <==unclosure== 72596 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #41149: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #52231: <==closure== 66104 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #54563: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #58006: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #66104: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #69289: <==closure== 58006 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #78546: <==closure== 54563 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #87314: <==closure== 41149 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #10686: <==uncertain_firing== 41149 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #13476: <==negation-removal== 69289 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #17897: <==unclosure== 35532 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #18386: <==negation-removal== 41149 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #23089: <==negation-removal== 52231 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #35532: <==uncertain_firing== 58006 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #48394: <==unclosure== 81494 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #59755: <==negation-removal== 78546 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #60634: <==negation-removal== 66104 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #68316: <==negation-removal== 87314 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #71508: <==negation-removal== 58006 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #72596: <==uncertain_firing== 66104 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #78534: <==unclosure== 10686 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81494: <==uncertain_firing== 54563 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #88315: <==negation-removal== 54563 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #95449: <==unclosure== 72596 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #41149: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #52231: <==closure== 66104 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #54563: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #58006: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #66104: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #69289: <==closure== 58006 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #78546: <==closure== 54563 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #87314: <==closure== 41149 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #10686: <==uncertain_firing== 41149 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #13476: <==negation-removal== 69289 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #17897: <==unclosure== 35532 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #18386: <==negation-removal== 41149 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #23089: <==negation-removal== 52231 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #35532: <==uncertain_firing== 58006 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #48394: <==unclosure== 81494 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #59755: <==negation-removal== 78546 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #60634: <==negation-removal== 66104 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #68316: <==negation-removal== 87314 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #71508: <==negation-removal== 58006 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #72596: <==uncertain_firing== 66104 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #78534: <==unclosure== 10686 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81494: <==uncertain_firing== 54563 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #88315: <==negation-removal== 54563 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #95449: <==unclosure== 72596 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #41149: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #52231: <==closure== 66104 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #54563: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #58006: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #66104: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #69289: <==closure== 58006 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #78546: <==closure== 54563 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #87314: <==closure== 41149 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #10686: <==uncertain_firing== 41149 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #13476: <==negation-removal== 69289 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #17897: <==unclosure== 35532 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #18386: <==negation-removal== 41149 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #23089: <==negation-removal== 52231 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #35532: <==uncertain_firing== 58006 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #48394: <==unclosure== 81494 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #59755: <==negation-removal== 78546 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #60634: <==negation-removal== 66104 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #68316: <==negation-removal== 87314 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #71508: <==negation-removal== 58006 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #72596: <==uncertain_firing== 66104 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #78534: <==unclosure== 10686 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81494: <==uncertain_firing== 54563 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #88315: <==negation-removal== 54563 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #95449: <==unclosure== 72596 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #19057: <==closure== 80038 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #36240: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #38137: <==closure== 56777 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #56777: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #80038: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #86870: <==closure== 89192 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #89192: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #98253: <==closure== 36240 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #18837: <==unclosure== 28835 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #21505: <==uncertain_firing== 89192 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #28835: <==uncertain_firing== 56777 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #33920: <==negation-removal== 36240 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #34166: <==negation-removal== 19057 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #38185: <==negation-removal== 89192 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #39887: <==negation-removal== 80038 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #58551: <==uncertain_firing== 36240 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #60223: <==negation-removal== 56777 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #65304: <==unclosure== 75554 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #65855: <==unclosure== 58551 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #75554: <==uncertain_firing== 80038 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #76015: <==negation-removal== 98253 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #76983: <==unclosure== 21505 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #84567: <==negation-removal== 86870 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #91979: <==negation-removal== 38137 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #19057: <==closure== 80038 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #36240: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #38137: <==closure== 56777 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #56777: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #80038: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #86870: <==closure== 89192 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #89192: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #98253: <==closure== 36240 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #18837: <==unclosure== 28835 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #21505: <==uncertain_firing== 89192 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #28835: <==uncertain_firing== 56777 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #33920: <==negation-removal== 36240 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #34166: <==negation-removal== 19057 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #38185: <==negation-removal== 89192 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #39887: <==negation-removal== 80038 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #58551: <==uncertain_firing== 36240 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #60223: <==negation-removal== 56777 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #65304: <==unclosure== 75554 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #65855: <==unclosure== 58551 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #75554: <==uncertain_firing== 80038 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #76015: <==negation-removal== 98253 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #76983: <==unclosure== 21505 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #84567: <==negation-removal== 86870 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #91979: <==negation-removal== 38137 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #19057: <==closure== 80038 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #36240: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #38137: <==closure== 56777 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #56777: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #80038: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #86870: <==closure== 89192 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #89192: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #98253: <==closure== 36240 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #18837: <==unclosure== 28835 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #21505: <==uncertain_firing== 89192 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #28835: <==uncertain_firing== 56777 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #33920: <==negation-removal== 36240 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #34166: <==negation-removal== 19057 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #38185: <==negation-removal== 89192 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #39887: <==negation-removal== 80038 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #58551: <==uncertain_firing== 36240 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #60223: <==negation-removal== 56777 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #65304: <==unclosure== 75554 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #65855: <==unclosure== 58551 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #75554: <==uncertain_firing== 80038 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #76015: <==negation-removal== 98253 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #76983: <==unclosure== 21505 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #84567: <==negation-removal== 86870 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #91979: <==negation-removal== 38137 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #19057: <==closure== 80038 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #36240: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #38137: <==closure== 56777 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #56777: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #80038: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #86870: <==closure== 89192 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #89192: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #98253: <==closure== 36240 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #18837: <==unclosure== 28835 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #21505: <==uncertain_firing== 89192 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #28835: <==uncertain_firing== 56777 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #33920: <==negation-removal== 36240 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #34166: <==negation-removal== 19057 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #38185: <==negation-removal== 89192 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #39887: <==negation-removal== 80038 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #58551: <==uncertain_firing== 36240 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #60223: <==negation-removal== 56777 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #65304: <==unclosure== 75554 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #65855: <==unclosure== 58551 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #75554: <==uncertain_firing== 80038 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #76015: <==negation-removal== 98253 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #76983: <==unclosure== 21505 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #84567: <==negation-removal== 86870 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #91979: <==negation-removal== 38137 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #15099: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #31998: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #34285: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #36801: <==closure== 55346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #45077: <==closure== 34285 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #55346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #66622: <==closure== 15099 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #73087: <==closure== 31998 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #14716: <==uncertain_firing== 34285 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #21835: <==uncertain_firing== 15099 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #26401: <==unclosure== 21835 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #26781: <==negation-removal== 34285 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #27695: <==negation-removal== 15099 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #41687: <==negation-removal== 66622 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #51796: <==unclosure== 69047 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #66346: <==unclosure== 14716 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #68856: <==negation-removal== 45077 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #69047: <==uncertain_firing== 55346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #70820: <==negation-removal== 31998 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #80674: <==negation-removal== 73087 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #86830: <==negation-removal== 55346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #87938: <==unclosure== 97335 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #88905: <==negation-removal== 36801 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #97335: <==uncertain_firing== 31998 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #15099: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #31998: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #34285: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #36801: <==closure== 55346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #45077: <==closure== 34285 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #55346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #66622: <==closure== 15099 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #73087: <==closure== 31998 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #14716: <==uncertain_firing== 34285 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #21835: <==uncertain_firing== 15099 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #26401: <==unclosure== 21835 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #26781: <==negation-removal== 34285 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #27695: <==negation-removal== 15099 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #41687: <==negation-removal== 66622 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #51796: <==unclosure== 69047 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #66346: <==unclosure== 14716 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #68856: <==negation-removal== 45077 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #69047: <==uncertain_firing== 55346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #70820: <==negation-removal== 31998 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #80674: <==negation-removal== 73087 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #86830: <==negation-removal== 55346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #87938: <==unclosure== 97335 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #88905: <==negation-removal== 36801 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #97335: <==uncertain_firing== 31998 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #15099: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #31998: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #34285: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #36801: <==closure== 55346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #45077: <==closure== 34285 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #55346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #66622: <==closure== 15099 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #73087: <==closure== 31998 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #14716: <==uncertain_firing== 34285 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #21835: <==uncertain_firing== 15099 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #26401: <==unclosure== 21835 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #26781: <==negation-removal== 34285 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #27695: <==negation-removal== 15099 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #41687: <==negation-removal== 66622 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #51796: <==unclosure== 69047 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #66346: <==unclosure== 14716 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #68856: <==negation-removal== 45077 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #69047: <==uncertain_firing== 55346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #70820: <==negation-removal== 31998 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #80674: <==negation-removal== 73087 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #86830: <==negation-removal== 55346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #87938: <==unclosure== 97335 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #88905: <==negation-removal== 36801 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #97335: <==uncertain_firing== 31998 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #15099: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #31998: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #34285: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #36801: <==closure== 55346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #45077: <==closure== 34285 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #55346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #66622: <==closure== 15099 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #73087: <==closure== 31998 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #14716: <==uncertain_firing== 34285 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #21835: <==uncertain_firing== 15099 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #26401: <==unclosure== 21835 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #26781: <==negation-removal== 34285 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #27695: <==negation-removal== 15099 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #41687: <==negation-removal== 66622 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #51796: <==unclosure== 69047 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #66346: <==unclosure== 14716 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #68856: <==negation-removal== 45077 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #69047: <==uncertain_firing== 55346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #70820: <==negation-removal== 31998 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #80674: <==negation-removal== 73087 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #86830: <==negation-removal== 55346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #87938: <==unclosure== 97335 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #88905: <==negation-removal== 36801 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #97335: <==uncertain_firing== 31998 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #13616: origin
                    (Bb_survivorat_s_p1)

                    ; #16106: origin
                    (Bd_survivorat_s_p1)

                    ; #18474: origin
                    (Ba_survivorat_s_p1)

                    ; #35375: origin
                    (Bc_survivorat_s_p1)

                    ; #59355: <==closure== 35375 (pos)
                    (Pc_survivorat_s_p1)

                    ; #66651: <==closure== 16106 (pos)
                    (Pd_survivorat_s_p1)

                    ; #71697: <==closure== 18474 (pos)
                    (Pa_survivorat_s_p1)

                    ; #80495: <==closure== 13616 (pos)
                    (Pb_survivorat_s_p1)

                    ; #24721: <==negation-removal== 66651 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #49416: <==negation-removal== 80495 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #50148: <==negation-removal== 35375 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #54209: <==negation-removal== 59355 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #63093: <==negation-removal== 16106 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #64960: <==negation-removal== 71697 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #75073: <==negation-removal== 13616 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #87835: <==negation-removal== 18474 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #13616: origin
                    (Bb_survivorat_s_p1)

                    ; #16106: origin
                    (Bd_survivorat_s_p1)

                    ; #18474: origin
                    (Ba_survivorat_s_p1)

                    ; #35375: origin
                    (Bc_survivorat_s_p1)

                    ; #59355: <==closure== 35375 (pos)
                    (Pc_survivorat_s_p1)

                    ; #66651: <==closure== 16106 (pos)
                    (Pd_survivorat_s_p1)

                    ; #71697: <==closure== 18474 (pos)
                    (Pa_survivorat_s_p1)

                    ; #80495: <==closure== 13616 (pos)
                    (Pb_survivorat_s_p1)

                    ; #24721: <==negation-removal== 66651 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #49416: <==negation-removal== 80495 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #50148: <==negation-removal== 35375 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #54209: <==negation-removal== 59355 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #63093: <==negation-removal== 16106 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #64960: <==negation-removal== 71697 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #75073: <==negation-removal== 13616 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #87835: <==negation-removal== 18474 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #13616: origin
                    (Bb_survivorat_s_p1)

                    ; #16106: origin
                    (Bd_survivorat_s_p1)

                    ; #18474: origin
                    (Ba_survivorat_s_p1)

                    ; #35375: origin
                    (Bc_survivorat_s_p1)

                    ; #59355: <==closure== 35375 (pos)
                    (Pc_survivorat_s_p1)

                    ; #66651: <==closure== 16106 (pos)
                    (Pd_survivorat_s_p1)

                    ; #71697: <==closure== 18474 (pos)
                    (Pa_survivorat_s_p1)

                    ; #80495: <==closure== 13616 (pos)
                    (Pb_survivorat_s_p1)

                    ; #24721: <==negation-removal== 66651 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #49416: <==negation-removal== 80495 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #50148: <==negation-removal== 35375 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #54209: <==negation-removal== 59355 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #63093: <==negation-removal== 16106 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #64960: <==negation-removal== 71697 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #75073: <==negation-removal== 13616 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #87835: <==negation-removal== 18474 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #13616: origin
                    (Bb_survivorat_s_p1)

                    ; #16106: origin
                    (Bd_survivorat_s_p1)

                    ; #18474: origin
                    (Ba_survivorat_s_p1)

                    ; #35375: origin
                    (Bc_survivorat_s_p1)

                    ; #59355: <==closure== 35375 (pos)
                    (Pc_survivorat_s_p1)

                    ; #66651: <==closure== 16106 (pos)
                    (Pd_survivorat_s_p1)

                    ; #71697: <==closure== 18474 (pos)
                    (Pa_survivorat_s_p1)

                    ; #80495: <==closure== 13616 (pos)
                    (Pb_survivorat_s_p1)

                    ; #24721: <==negation-removal== 66651 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #49416: <==negation-removal== 80495 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #50148: <==negation-removal== 35375 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #54209: <==negation-removal== 59355 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #63093: <==negation-removal== 16106 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #64960: <==negation-removal== 71697 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #75073: <==negation-removal== 13616 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #87835: <==negation-removal== 18474 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #28811: origin
                    (Bd_survivorat_s_p2)

                    ; #44307: origin
                    (Ba_survivorat_s_p2)

                    ; #52836: <==closure== 78064 (pos)
                    (Pb_survivorat_s_p2)

                    ; #59745: <==closure== 72476 (pos)
                    (Pc_survivorat_s_p2)

                    ; #72476: origin
                    (Bc_survivorat_s_p2)

                    ; #78064: origin
                    (Bb_survivorat_s_p2)

                    ; #89105: <==closure== 44307 (pos)
                    (Pa_survivorat_s_p2)

                    ; #91038: <==closure== 28811 (pos)
                    (Pd_survivorat_s_p2)

                    ; #16121: <==negation-removal== 72476 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #29132: <==negation-removal== 78064 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #61430: <==negation-removal== 59745 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #68574: <==negation-removal== 52836 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #69085: <==negation-removal== 91038 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #70611: <==negation-removal== 89105 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #81973: <==negation-removal== 28811 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #96650: <==negation-removal== 44307 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #28811: origin
                    (Bd_survivorat_s_p2)

                    ; #44307: origin
                    (Ba_survivorat_s_p2)

                    ; #52836: <==closure== 78064 (pos)
                    (Pb_survivorat_s_p2)

                    ; #59745: <==closure== 72476 (pos)
                    (Pc_survivorat_s_p2)

                    ; #72476: origin
                    (Bc_survivorat_s_p2)

                    ; #78064: origin
                    (Bb_survivorat_s_p2)

                    ; #89105: <==closure== 44307 (pos)
                    (Pa_survivorat_s_p2)

                    ; #91038: <==closure== 28811 (pos)
                    (Pd_survivorat_s_p2)

                    ; #16121: <==negation-removal== 72476 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #29132: <==negation-removal== 78064 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #61430: <==negation-removal== 59745 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #68574: <==negation-removal== 52836 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #69085: <==negation-removal== 91038 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #70611: <==negation-removal== 89105 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #81973: <==negation-removal== 28811 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #96650: <==negation-removal== 44307 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #28811: origin
                    (Bd_survivorat_s_p2)

                    ; #44307: origin
                    (Ba_survivorat_s_p2)

                    ; #52836: <==closure== 78064 (pos)
                    (Pb_survivorat_s_p2)

                    ; #59745: <==closure== 72476 (pos)
                    (Pc_survivorat_s_p2)

                    ; #72476: origin
                    (Bc_survivorat_s_p2)

                    ; #78064: origin
                    (Bb_survivorat_s_p2)

                    ; #89105: <==closure== 44307 (pos)
                    (Pa_survivorat_s_p2)

                    ; #91038: <==closure== 28811 (pos)
                    (Pd_survivorat_s_p2)

                    ; #16121: <==negation-removal== 72476 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #29132: <==negation-removal== 78064 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #61430: <==negation-removal== 59745 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #68574: <==negation-removal== 52836 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #69085: <==negation-removal== 91038 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #70611: <==negation-removal== 89105 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #81973: <==negation-removal== 28811 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #96650: <==negation-removal== 44307 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #28811: origin
                    (Bd_survivorat_s_p2)

                    ; #44307: origin
                    (Ba_survivorat_s_p2)

                    ; #52836: <==closure== 78064 (pos)
                    (Pb_survivorat_s_p2)

                    ; #59745: <==closure== 72476 (pos)
                    (Pc_survivorat_s_p2)

                    ; #72476: origin
                    (Bc_survivorat_s_p2)

                    ; #78064: origin
                    (Bb_survivorat_s_p2)

                    ; #89105: <==closure== 44307 (pos)
                    (Pa_survivorat_s_p2)

                    ; #91038: <==closure== 28811 (pos)
                    (Pd_survivorat_s_p2)

                    ; #16121: <==negation-removal== 72476 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #29132: <==negation-removal== 78064 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #61430: <==negation-removal== 59745 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #68574: <==negation-removal== 52836 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #69085: <==negation-removal== 91038 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #70611: <==negation-removal== 89105 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #81973: <==negation-removal== 28811 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #96650: <==negation-removal== 44307 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #18665: origin
                    (Bb_survivorat_s_p3)

                    ; #33560: <==closure== 67722 (pos)
                    (Pc_survivorat_s_p3)

                    ; #39560: <==closure== 54127 (pos)
                    (Pd_survivorat_s_p3)

                    ; #41026: origin
                    (Ba_survivorat_s_p3)

                    ; #47367: <==closure== 18665 (pos)
                    (Pb_survivorat_s_p3)

                    ; #54127: origin
                    (Bd_survivorat_s_p3)

                    ; #67722: origin
                    (Bc_survivorat_s_p3)

                    ; #72055: <==closure== 41026 (pos)
                    (Pa_survivorat_s_p3)

                    ; #30022: <==negation-removal== 39560 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #34925: <==negation-removal== 33560 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #47962: <==negation-removal== 54127 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #52584: <==negation-removal== 47367 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #60436: <==negation-removal== 72055 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #60868: <==negation-removal== 67722 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #87965: <==negation-removal== 41026 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #88403: <==negation-removal== 18665 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #18665: origin
                    (Bb_survivorat_s_p3)

                    ; #33560: <==closure== 67722 (pos)
                    (Pc_survivorat_s_p3)

                    ; #39560: <==closure== 54127 (pos)
                    (Pd_survivorat_s_p3)

                    ; #41026: origin
                    (Ba_survivorat_s_p3)

                    ; #47367: <==closure== 18665 (pos)
                    (Pb_survivorat_s_p3)

                    ; #54127: origin
                    (Bd_survivorat_s_p3)

                    ; #67722: origin
                    (Bc_survivorat_s_p3)

                    ; #72055: <==closure== 41026 (pos)
                    (Pa_survivorat_s_p3)

                    ; #30022: <==negation-removal== 39560 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #34925: <==negation-removal== 33560 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #47962: <==negation-removal== 54127 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #52584: <==negation-removal== 47367 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #60436: <==negation-removal== 72055 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #60868: <==negation-removal== 67722 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #87965: <==negation-removal== 41026 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #88403: <==negation-removal== 18665 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #18665: origin
                    (Bb_survivorat_s_p3)

                    ; #33560: <==closure== 67722 (pos)
                    (Pc_survivorat_s_p3)

                    ; #39560: <==closure== 54127 (pos)
                    (Pd_survivorat_s_p3)

                    ; #41026: origin
                    (Ba_survivorat_s_p3)

                    ; #47367: <==closure== 18665 (pos)
                    (Pb_survivorat_s_p3)

                    ; #54127: origin
                    (Bd_survivorat_s_p3)

                    ; #67722: origin
                    (Bc_survivorat_s_p3)

                    ; #72055: <==closure== 41026 (pos)
                    (Pa_survivorat_s_p3)

                    ; #30022: <==negation-removal== 39560 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #34925: <==negation-removal== 33560 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #47962: <==negation-removal== 54127 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #52584: <==negation-removal== 47367 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #60436: <==negation-removal== 72055 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #60868: <==negation-removal== 67722 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #87965: <==negation-removal== 41026 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #88403: <==negation-removal== 18665 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #18665: origin
                    (Bb_survivorat_s_p3)

                    ; #33560: <==closure== 67722 (pos)
                    (Pc_survivorat_s_p3)

                    ; #39560: <==closure== 54127 (pos)
                    (Pd_survivorat_s_p3)

                    ; #41026: origin
                    (Ba_survivorat_s_p3)

                    ; #47367: <==closure== 18665 (pos)
                    (Pb_survivorat_s_p3)

                    ; #54127: origin
                    (Bd_survivorat_s_p3)

                    ; #67722: origin
                    (Bc_survivorat_s_p3)

                    ; #72055: <==closure== 41026 (pos)
                    (Pa_survivorat_s_p3)

                    ; #30022: <==negation-removal== 39560 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #34925: <==negation-removal== 33560 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #47962: <==negation-removal== 54127 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #52584: <==negation-removal== 47367 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #60436: <==negation-removal== 72055 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #60868: <==negation-removal== 67722 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #87965: <==negation-removal== 41026 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #88403: <==negation-removal== 18665 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #16364: origin
                    (Bc_survivorat_s_p4)

                    ; #17590: origin
                    (Bb_survivorat_s_p4)

                    ; #48586: <==closure== 17590 (pos)
                    (Pb_survivorat_s_p4)

                    ; #49471: <==closure== 16364 (pos)
                    (Pc_survivorat_s_p4)

                    ; #51775: origin
                    (Ba_survivorat_s_p4)

                    ; #73063: <==closure== 89578 (pos)
                    (Pd_survivorat_s_p4)

                    ; #73177: <==closure== 51775 (pos)
                    (Pa_survivorat_s_p4)

                    ; #89578: origin
                    (Bd_survivorat_s_p4)

                    ; #16905: <==negation-removal== 51775 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #27660: <==negation-removal== 49471 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #27940: <==negation-removal== 89578 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #28086: <==negation-removal== 17590 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #78293: <==negation-removal== 73063 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #79044: <==negation-removal== 16364 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #80293: <==negation-removal== 48586 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #92619: <==negation-removal== 73177 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #16364: origin
                    (Bc_survivorat_s_p4)

                    ; #17590: origin
                    (Bb_survivorat_s_p4)

                    ; #48586: <==closure== 17590 (pos)
                    (Pb_survivorat_s_p4)

                    ; #49471: <==closure== 16364 (pos)
                    (Pc_survivorat_s_p4)

                    ; #51775: origin
                    (Ba_survivorat_s_p4)

                    ; #73063: <==closure== 89578 (pos)
                    (Pd_survivorat_s_p4)

                    ; #73177: <==closure== 51775 (pos)
                    (Pa_survivorat_s_p4)

                    ; #89578: origin
                    (Bd_survivorat_s_p4)

                    ; #16905: <==negation-removal== 51775 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #27660: <==negation-removal== 49471 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #27940: <==negation-removal== 89578 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #28086: <==negation-removal== 17590 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #78293: <==negation-removal== 73063 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #79044: <==negation-removal== 16364 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #80293: <==negation-removal== 48586 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #92619: <==negation-removal== 73177 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #16364: origin
                    (Bc_survivorat_s_p4)

                    ; #17590: origin
                    (Bb_survivorat_s_p4)

                    ; #48586: <==closure== 17590 (pos)
                    (Pb_survivorat_s_p4)

                    ; #49471: <==closure== 16364 (pos)
                    (Pc_survivorat_s_p4)

                    ; #51775: origin
                    (Ba_survivorat_s_p4)

                    ; #73063: <==closure== 89578 (pos)
                    (Pd_survivorat_s_p4)

                    ; #73177: <==closure== 51775 (pos)
                    (Pa_survivorat_s_p4)

                    ; #89578: origin
                    (Bd_survivorat_s_p4)

                    ; #16905: <==negation-removal== 51775 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #27660: <==negation-removal== 49471 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #27940: <==negation-removal== 89578 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #28086: <==negation-removal== 17590 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #78293: <==negation-removal== 73063 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #79044: <==negation-removal== 16364 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #80293: <==negation-removal== 48586 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #92619: <==negation-removal== 73177 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #16364: origin
                    (Bc_survivorat_s_p4)

                    ; #17590: origin
                    (Bb_survivorat_s_p4)

                    ; #48586: <==closure== 17590 (pos)
                    (Pb_survivorat_s_p4)

                    ; #49471: <==closure== 16364 (pos)
                    (Pc_survivorat_s_p4)

                    ; #51775: origin
                    (Ba_survivorat_s_p4)

                    ; #73063: <==closure== 89578 (pos)
                    (Pd_survivorat_s_p4)

                    ; #73177: <==closure== 51775 (pos)
                    (Pa_survivorat_s_p4)

                    ; #89578: origin
                    (Bd_survivorat_s_p4)

                    ; #16905: <==negation-removal== 51775 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #27660: <==negation-removal== 49471 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #27940: <==negation-removal== 89578 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #28086: <==negation-removal== 17590 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #78293: <==negation-removal== 73063 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #79044: <==negation-removal== 16364 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #80293: <==negation-removal== 48586 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #92619: <==negation-removal== 73177 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #16030: origin
                    (Bd_survivorat_s_p5)

                    ; #22544: <==closure== 16030 (pos)
                    (Pd_survivorat_s_p5)

                    ; #24147: origin
                    (Bc_survivorat_s_p5)

                    ; #35432: <==closure== 38868 (pos)
                    (Pa_survivorat_s_p5)

                    ; #37253: origin
                    (Bb_survivorat_s_p5)

                    ; #38868: origin
                    (Ba_survivorat_s_p5)

                    ; #45690: <==closure== 24147 (pos)
                    (Pc_survivorat_s_p5)

                    ; #91293: <==closure== 37253 (pos)
                    (Pb_survivorat_s_p5)

                    ; #41468: <==negation-removal== 91293 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #69317: <==negation-removal== 45690 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #76064: <==negation-removal== 16030 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #76635: <==negation-removal== 22544 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #77742: <==negation-removal== 37253 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #82122: <==negation-removal== 35432 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #83051: <==negation-removal== 38868 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88190: <==negation-removal== 24147 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #16030: origin
                    (Bd_survivorat_s_p5)

                    ; #22544: <==closure== 16030 (pos)
                    (Pd_survivorat_s_p5)

                    ; #24147: origin
                    (Bc_survivorat_s_p5)

                    ; #35432: <==closure== 38868 (pos)
                    (Pa_survivorat_s_p5)

                    ; #37253: origin
                    (Bb_survivorat_s_p5)

                    ; #38868: origin
                    (Ba_survivorat_s_p5)

                    ; #45690: <==closure== 24147 (pos)
                    (Pc_survivorat_s_p5)

                    ; #91293: <==closure== 37253 (pos)
                    (Pb_survivorat_s_p5)

                    ; #41468: <==negation-removal== 91293 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #69317: <==negation-removal== 45690 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #76064: <==negation-removal== 16030 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #76635: <==negation-removal== 22544 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #77742: <==negation-removal== 37253 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #82122: <==negation-removal== 35432 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #83051: <==negation-removal== 38868 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88190: <==negation-removal== 24147 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #16030: origin
                    (Bd_survivorat_s_p5)

                    ; #22544: <==closure== 16030 (pos)
                    (Pd_survivorat_s_p5)

                    ; #24147: origin
                    (Bc_survivorat_s_p5)

                    ; #35432: <==closure== 38868 (pos)
                    (Pa_survivorat_s_p5)

                    ; #37253: origin
                    (Bb_survivorat_s_p5)

                    ; #38868: origin
                    (Ba_survivorat_s_p5)

                    ; #45690: <==closure== 24147 (pos)
                    (Pc_survivorat_s_p5)

                    ; #91293: <==closure== 37253 (pos)
                    (Pb_survivorat_s_p5)

                    ; #41468: <==negation-removal== 91293 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #69317: <==negation-removal== 45690 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #76064: <==negation-removal== 16030 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #76635: <==negation-removal== 22544 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #77742: <==negation-removal== 37253 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #82122: <==negation-removal== 35432 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #83051: <==negation-removal== 38868 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88190: <==negation-removal== 24147 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #16030: origin
                    (Bd_survivorat_s_p5)

                    ; #22544: <==closure== 16030 (pos)
                    (Pd_survivorat_s_p5)

                    ; #24147: origin
                    (Bc_survivorat_s_p5)

                    ; #35432: <==closure== 38868 (pos)
                    (Pa_survivorat_s_p5)

                    ; #37253: origin
                    (Bb_survivorat_s_p5)

                    ; #38868: origin
                    (Ba_survivorat_s_p5)

                    ; #45690: <==closure== 24147 (pos)
                    (Pc_survivorat_s_p5)

                    ; #91293: <==closure== 37253 (pos)
                    (Pb_survivorat_s_p5)

                    ; #41468: <==negation-removal== 91293 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #69317: <==negation-removal== 45690 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #76064: <==negation-removal== 16030 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #76635: <==negation-removal== 22544 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #77742: <==negation-removal== 37253 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #82122: <==negation-removal== 35432 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #83051: <==negation-removal== 38868 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #88190: <==negation-removal== 24147 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #11272: <==closure== 85212 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19034: origin
                    (Bb_survivorat_s_p6)

                    ; #48963: <==closure== 19034 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58843: origin
                    (Bd_survivorat_s_p6)

                    ; #59519: <==closure== 58843 (pos)
                    (Pd_survivorat_s_p6)

                    ; #69115: origin
                    (Bc_survivorat_s_p6)

                    ; #85212: origin
                    (Ba_survivorat_s_p6)

                    ; #89353: <==closure== 69115 (pos)
                    (Pc_survivorat_s_p6)

                    ; #13295: <==negation-removal== 48963 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #27728: <==negation-removal== 58843 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #28593: <==negation-removal== 89353 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #41229: <==negation-removal== 11272 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #49631: <==negation-removal== 85212 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60866: <==negation-removal== 19034 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #66140: <==negation-removal== 69115 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #82819: <==negation-removal== 59519 (pos)
                    (not (Bd_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #11272: <==closure== 85212 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19034: origin
                    (Bb_survivorat_s_p6)

                    ; #48963: <==closure== 19034 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58843: origin
                    (Bd_survivorat_s_p6)

                    ; #59519: <==closure== 58843 (pos)
                    (Pd_survivorat_s_p6)

                    ; #69115: origin
                    (Bc_survivorat_s_p6)

                    ; #85212: origin
                    (Ba_survivorat_s_p6)

                    ; #89353: <==closure== 69115 (pos)
                    (Pc_survivorat_s_p6)

                    ; #13295: <==negation-removal== 48963 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #27728: <==negation-removal== 58843 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #28593: <==negation-removal== 89353 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #41229: <==negation-removal== 11272 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #49631: <==negation-removal== 85212 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60866: <==negation-removal== 19034 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #66140: <==negation-removal== 69115 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #82819: <==negation-removal== 59519 (pos)
                    (not (Bd_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #11272: <==closure== 85212 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19034: origin
                    (Bb_survivorat_s_p6)

                    ; #48963: <==closure== 19034 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58843: origin
                    (Bd_survivorat_s_p6)

                    ; #59519: <==closure== 58843 (pos)
                    (Pd_survivorat_s_p6)

                    ; #69115: origin
                    (Bc_survivorat_s_p6)

                    ; #85212: origin
                    (Ba_survivorat_s_p6)

                    ; #89353: <==closure== 69115 (pos)
                    (Pc_survivorat_s_p6)

                    ; #13295: <==negation-removal== 48963 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #27728: <==negation-removal== 58843 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #28593: <==negation-removal== 89353 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #41229: <==negation-removal== 11272 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #49631: <==negation-removal== 85212 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60866: <==negation-removal== 19034 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #66140: <==negation-removal== 69115 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #82819: <==negation-removal== 59519 (pos)
                    (not (Bd_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #11272: <==closure== 85212 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19034: origin
                    (Bb_survivorat_s_p6)

                    ; #48963: <==closure== 19034 (pos)
                    (Pb_survivorat_s_p6)

                    ; #58843: origin
                    (Bd_survivorat_s_p6)

                    ; #59519: <==closure== 58843 (pos)
                    (Pd_survivorat_s_p6)

                    ; #69115: origin
                    (Bc_survivorat_s_p6)

                    ; #85212: origin
                    (Ba_survivorat_s_p6)

                    ; #89353: <==closure== 69115 (pos)
                    (Pc_survivorat_s_p6)

                    ; #13295: <==negation-removal== 48963 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #27728: <==negation-removal== 58843 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #28593: <==negation-removal== 89353 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #41229: <==negation-removal== 11272 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #49631: <==negation-removal== 85212 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60866: <==negation-removal== 19034 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #66140: <==negation-removal== 69115 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #82819: <==negation-removal== 59519 (pos)
                    (not (Bd_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #28791: origin
                    (Bd_survivorat_s_p7)

                    ; #41821: origin
                    (Bb_survivorat_s_p7)

                    ; #47568: origin
                    (Ba_survivorat_s_p7)

                    ; #51749: <==closure== 80632 (pos)
                    (Pc_survivorat_s_p7)

                    ; #63017: <==closure== 41821 (pos)
                    (Pb_survivorat_s_p7)

                    ; #76466: <==closure== 28791 (pos)
                    (Pd_survivorat_s_p7)

                    ; #80632: origin
                    (Bc_survivorat_s_p7)

                    ; #83253: <==closure== 47568 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14582: <==negation-removal== 41821 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #26385: <==negation-removal== 47568 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #37293: <==negation-removal== 63017 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #37463: <==negation-removal== 76466 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #48796: <==negation-removal== 80632 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #72539: <==negation-removal== 51749 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #77353: <==negation-removal== 83253 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #89105: <==negation-removal== 28791 (pos)
                    (not (Pd_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #28791: origin
                    (Bd_survivorat_s_p7)

                    ; #41821: origin
                    (Bb_survivorat_s_p7)

                    ; #47568: origin
                    (Ba_survivorat_s_p7)

                    ; #51749: <==closure== 80632 (pos)
                    (Pc_survivorat_s_p7)

                    ; #63017: <==closure== 41821 (pos)
                    (Pb_survivorat_s_p7)

                    ; #76466: <==closure== 28791 (pos)
                    (Pd_survivorat_s_p7)

                    ; #80632: origin
                    (Bc_survivorat_s_p7)

                    ; #83253: <==closure== 47568 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14582: <==negation-removal== 41821 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #26385: <==negation-removal== 47568 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #37293: <==negation-removal== 63017 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #37463: <==negation-removal== 76466 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #48796: <==negation-removal== 80632 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #72539: <==negation-removal== 51749 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #77353: <==negation-removal== 83253 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #89105: <==negation-removal== 28791 (pos)
                    (not (Pd_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #28791: origin
                    (Bd_survivorat_s_p7)

                    ; #41821: origin
                    (Bb_survivorat_s_p7)

                    ; #47568: origin
                    (Ba_survivorat_s_p7)

                    ; #51749: <==closure== 80632 (pos)
                    (Pc_survivorat_s_p7)

                    ; #63017: <==closure== 41821 (pos)
                    (Pb_survivorat_s_p7)

                    ; #76466: <==closure== 28791 (pos)
                    (Pd_survivorat_s_p7)

                    ; #80632: origin
                    (Bc_survivorat_s_p7)

                    ; #83253: <==closure== 47568 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14582: <==negation-removal== 41821 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #26385: <==negation-removal== 47568 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #37293: <==negation-removal== 63017 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #37463: <==negation-removal== 76466 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #48796: <==negation-removal== 80632 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #72539: <==negation-removal== 51749 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #77353: <==negation-removal== 83253 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #89105: <==negation-removal== 28791 (pos)
                    (not (Pd_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #28791: origin
                    (Bd_survivorat_s_p7)

                    ; #41821: origin
                    (Bb_survivorat_s_p7)

                    ; #47568: origin
                    (Ba_survivorat_s_p7)

                    ; #51749: <==closure== 80632 (pos)
                    (Pc_survivorat_s_p7)

                    ; #63017: <==closure== 41821 (pos)
                    (Pb_survivorat_s_p7)

                    ; #76466: <==closure== 28791 (pos)
                    (Pd_survivorat_s_p7)

                    ; #80632: origin
                    (Bc_survivorat_s_p7)

                    ; #83253: <==closure== 47568 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14582: <==negation-removal== 41821 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #26385: <==negation-removal== 47568 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #37293: <==negation-removal== 63017 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #37463: <==negation-removal== 76466 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #48796: <==negation-removal== 80632 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #72539: <==negation-removal== 51749 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #77353: <==negation-removal== 83253 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #89105: <==negation-removal== 28791 (pos)
                    (not (Pd_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #11415: origin
                    (Bd_survivorat_s_p8)

                    ; #16853: <==closure== 48422 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46276: origin
                    (Bc_survivorat_s_p8)

                    ; #48422: origin
                    (Bb_survivorat_s_p8)

                    ; #55208: <==closure== 11415 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62057: origin
                    (Ba_survivorat_s_p8)

                    ; #63699: <==closure== 62057 (pos)
                    (Pa_survivorat_s_p8)

                    ; #82062: <==closure== 46276 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21450: <==negation-removal== 16853 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #28883: <==negation-removal== 62057 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35760: <==negation-removal== 55208 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #40957: <==negation-removal== 46276 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #46864: <==negation-removal== 63699 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #65295: <==negation-removal== 82062 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #75820: <==negation-removal== 48422 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #80191: <==negation-removal== 11415 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #11415: origin
                    (Bd_survivorat_s_p8)

                    ; #16853: <==closure== 48422 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46276: origin
                    (Bc_survivorat_s_p8)

                    ; #48422: origin
                    (Bb_survivorat_s_p8)

                    ; #55208: <==closure== 11415 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62057: origin
                    (Ba_survivorat_s_p8)

                    ; #63699: <==closure== 62057 (pos)
                    (Pa_survivorat_s_p8)

                    ; #82062: <==closure== 46276 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21450: <==negation-removal== 16853 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #28883: <==negation-removal== 62057 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35760: <==negation-removal== 55208 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #40957: <==negation-removal== 46276 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #46864: <==negation-removal== 63699 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #65295: <==negation-removal== 82062 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #75820: <==negation-removal== 48422 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #80191: <==negation-removal== 11415 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #11415: origin
                    (Bd_survivorat_s_p8)

                    ; #16853: <==closure== 48422 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46276: origin
                    (Bc_survivorat_s_p8)

                    ; #48422: origin
                    (Bb_survivorat_s_p8)

                    ; #55208: <==closure== 11415 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62057: origin
                    (Ba_survivorat_s_p8)

                    ; #63699: <==closure== 62057 (pos)
                    (Pa_survivorat_s_p8)

                    ; #82062: <==closure== 46276 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21450: <==negation-removal== 16853 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #28883: <==negation-removal== 62057 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35760: <==negation-removal== 55208 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #40957: <==negation-removal== 46276 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #46864: <==negation-removal== 63699 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #65295: <==negation-removal== 82062 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #75820: <==negation-removal== 48422 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #80191: <==negation-removal== 11415 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #11415: origin
                    (Bd_survivorat_s_p8)

                    ; #16853: <==closure== 48422 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46276: origin
                    (Bc_survivorat_s_p8)

                    ; #48422: origin
                    (Bb_survivorat_s_p8)

                    ; #55208: <==closure== 11415 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62057: origin
                    (Ba_survivorat_s_p8)

                    ; #63699: <==closure== 62057 (pos)
                    (Pa_survivorat_s_p8)

                    ; #82062: <==closure== 46276 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21450: <==negation-removal== 16853 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #28883: <==negation-removal== 62057 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35760: <==negation-removal== 55208 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #40957: <==negation-removal== 46276 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #46864: <==negation-removal== 63699 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #65295: <==negation-removal== 82062 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #75820: <==negation-removal== 48422 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #80191: <==negation-removal== 11415 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #23114: origin
                    (Ba_survivorat_s_p9)

                    ; #29334: <==closure== 34252 (pos)
                    (Pc_survivorat_s_p9)

                    ; #34252: origin
                    (Bc_survivorat_s_p9)

                    ; #54948: <==closure== 62420 (pos)
                    (Pb_survivorat_s_p9)

                    ; #62420: origin
                    (Bb_survivorat_s_p9)

                    ; #82320: origin
                    (Bd_survivorat_s_p9)

                    ; #88858: <==closure== 23114 (pos)
                    (Pa_survivorat_s_p9)

                    ; #91819: <==closure== 82320 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12804: <==negation-removal== 88858 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #16426: <==negation-removal== 34252 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #26997: <==negation-removal== 91819 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #39230: <==negation-removal== 54948 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #39621: <==negation-removal== 62420 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #46583: <==negation-removal== 23114 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #85781: <==negation-removal== 82320 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #89093: <==negation-removal== 29334 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #23114: origin
                    (Ba_survivorat_s_p9)

                    ; #29334: <==closure== 34252 (pos)
                    (Pc_survivorat_s_p9)

                    ; #34252: origin
                    (Bc_survivorat_s_p9)

                    ; #54948: <==closure== 62420 (pos)
                    (Pb_survivorat_s_p9)

                    ; #62420: origin
                    (Bb_survivorat_s_p9)

                    ; #82320: origin
                    (Bd_survivorat_s_p9)

                    ; #88858: <==closure== 23114 (pos)
                    (Pa_survivorat_s_p9)

                    ; #91819: <==closure== 82320 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12804: <==negation-removal== 88858 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #16426: <==negation-removal== 34252 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #26997: <==negation-removal== 91819 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #39230: <==negation-removal== 54948 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #39621: <==negation-removal== 62420 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #46583: <==negation-removal== 23114 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #85781: <==negation-removal== 82320 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #89093: <==negation-removal== 29334 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #23114: origin
                    (Ba_survivorat_s_p9)

                    ; #29334: <==closure== 34252 (pos)
                    (Pc_survivorat_s_p9)

                    ; #34252: origin
                    (Bc_survivorat_s_p9)

                    ; #54948: <==closure== 62420 (pos)
                    (Pb_survivorat_s_p9)

                    ; #62420: origin
                    (Bb_survivorat_s_p9)

                    ; #82320: origin
                    (Bd_survivorat_s_p9)

                    ; #88858: <==closure== 23114 (pos)
                    (Pa_survivorat_s_p9)

                    ; #91819: <==closure== 82320 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12804: <==negation-removal== 88858 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #16426: <==negation-removal== 34252 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #26997: <==negation-removal== 91819 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #39230: <==negation-removal== 54948 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #39621: <==negation-removal== 62420 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #46583: <==negation-removal== 23114 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #85781: <==negation-removal== 82320 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #89093: <==negation-removal== 29334 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #23114: origin
                    (Ba_survivorat_s_p9)

                    ; #29334: <==closure== 34252 (pos)
                    (Pc_survivorat_s_p9)

                    ; #34252: origin
                    (Bc_survivorat_s_p9)

                    ; #54948: <==closure== 62420 (pos)
                    (Pb_survivorat_s_p9)

                    ; #62420: origin
                    (Bb_survivorat_s_p9)

                    ; #82320: origin
                    (Bd_survivorat_s_p9)

                    ; #88858: <==closure== 23114 (pos)
                    (Pa_survivorat_s_p9)

                    ; #91819: <==closure== 82320 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12804: <==negation-removal== 88858 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #16426: <==negation-removal== 34252 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #26997: <==negation-removal== 91819 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #39230: <==negation-removal== 54948 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #39621: <==negation-removal== 62420 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #46583: <==negation-removal== 23114 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #85781: <==negation-removal== 82320 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #89093: <==negation-removal== 29334 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #12828: origin
                    (at_a_p1)

                    ; #16860: origin
                    (not_at_a_p1)

                    ; #12828: <==negation-removal== 16860 (pos)
                    (not (at_a_p1))

                    ; #16860: <==negation-removal== 12828 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #16860: origin
                    (not_at_a_p1)

                    ; #87034: origin
                    (at_a_p2)

                    ; #12828: <==negation-removal== 16860 (pos)
                    (not (at_a_p1))

                    ; #55555: <==negation-removal== 87034 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #16860: origin
                    (not_at_a_p1)

                    ; #48211: origin
                    (at_a_p3)

                    ; #12828: <==negation-removal== 16860 (pos)
                    (not (at_a_p1))

                    ; #26577: <==negation-removal== 48211 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #16860: origin
                    (not_at_a_p1)

                    ; #46773: origin
                    (at_a_p4)

                    ; #12828: <==negation-removal== 16860 (pos)
                    (not (at_a_p1))

                    ; #82970: <==negation-removal== 46773 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #16860: origin
                    (not_at_a_p1)

                    ; #57009: origin
                    (at_a_p5)

                    ; #12828: <==negation-removal== 16860 (pos)
                    (not (at_a_p1))

                    ; #19748: <==negation-removal== 57009 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #16860: origin
                    (not_at_a_p1)

                    ; #52170: origin
                    (at_a_p6)

                    ; #12828: <==negation-removal== 16860 (pos)
                    (not (at_a_p1))

                    ; #26836: <==negation-removal== 52170 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #16860: origin
                    (not_at_a_p1)

                    ; #38339: origin
                    (at_a_p7)

                    ; #12828: <==negation-removal== 16860 (pos)
                    (not (at_a_p1))

                    ; #24775: <==negation-removal== 38339 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #16860: origin
                    (not_at_a_p1)

                    ; #37908: origin
                    (at_a_p8)

                    ; #12828: <==negation-removal== 16860 (pos)
                    (not (at_a_p1))

                    ; #45604: <==negation-removal== 37908 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #16860: origin
                    (not_at_a_p1)

                    ; #70752: origin
                    (at_a_p9)

                    ; #12828: <==negation-removal== 16860 (pos)
                    (not (at_a_p1))

                    ; #49641: <==negation-removal== 70752 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #12828: origin
                    (at_a_p1)

                    ; #55555: origin
                    (not_at_a_p2)

                    ; #16860: <==negation-removal== 12828 (pos)
                    (not (not_at_a_p1))

                    ; #87034: <==negation-removal== 55555 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #55555: origin
                    (not_at_a_p2)

                    ; #87034: origin
                    (at_a_p2)

                    ; #55555: <==negation-removal== 87034 (pos)
                    (not (not_at_a_p2))

                    ; #87034: <==negation-removal== 55555 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #48211: origin
                    (at_a_p3)

                    ; #55555: origin
                    (not_at_a_p2)

                    ; #26577: <==negation-removal== 48211 (pos)
                    (not (not_at_a_p3))

                    ; #87034: <==negation-removal== 55555 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #46773: origin
                    (at_a_p4)

                    ; #55555: origin
                    (not_at_a_p2)

                    ; #82970: <==negation-removal== 46773 (pos)
                    (not (not_at_a_p4))

                    ; #87034: <==negation-removal== 55555 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #55555: origin
                    (not_at_a_p2)

                    ; #57009: origin
                    (at_a_p5)

                    ; #19748: <==negation-removal== 57009 (pos)
                    (not (not_at_a_p5))

                    ; #87034: <==negation-removal== 55555 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #52170: origin
                    (at_a_p6)

                    ; #55555: origin
                    (not_at_a_p2)

                    ; #26836: <==negation-removal== 52170 (pos)
                    (not (not_at_a_p6))

                    ; #87034: <==negation-removal== 55555 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #38339: origin
                    (at_a_p7)

                    ; #55555: origin
                    (not_at_a_p2)

                    ; #24775: <==negation-removal== 38339 (pos)
                    (not (not_at_a_p7))

                    ; #87034: <==negation-removal== 55555 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #37908: origin
                    (at_a_p8)

                    ; #55555: origin
                    (not_at_a_p2)

                    ; #45604: <==negation-removal== 37908 (pos)
                    (not (not_at_a_p8))

                    ; #87034: <==negation-removal== 55555 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #55555: origin
                    (not_at_a_p2)

                    ; #70752: origin
                    (at_a_p9)

                    ; #49641: <==negation-removal== 70752 (pos)
                    (not (not_at_a_p9))

                    ; #87034: <==negation-removal== 55555 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #12828: origin
                    (at_a_p1)

                    ; #26577: origin
                    (not_at_a_p3)

                    ; #16860: <==negation-removal== 12828 (pos)
                    (not (not_at_a_p1))

                    ; #48211: <==negation-removal== 26577 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #26577: origin
                    (not_at_a_p3)

                    ; #87034: origin
                    (at_a_p2)

                    ; #48211: <==negation-removal== 26577 (pos)
                    (not (at_a_p3))

                    ; #55555: <==negation-removal== 87034 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #26577: origin
                    (not_at_a_p3)

                    ; #48211: origin
                    (at_a_p3)

                    ; #26577: <==negation-removal== 48211 (pos)
                    (not (not_at_a_p3))

                    ; #48211: <==negation-removal== 26577 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #26577: origin
                    (not_at_a_p3)

                    ; #46773: origin
                    (at_a_p4)

                    ; #48211: <==negation-removal== 26577 (pos)
                    (not (at_a_p3))

                    ; #82970: <==negation-removal== 46773 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #26577: origin
                    (not_at_a_p3)

                    ; #57009: origin
                    (at_a_p5)

                    ; #19748: <==negation-removal== 57009 (pos)
                    (not (not_at_a_p5))

                    ; #48211: <==negation-removal== 26577 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #26577: origin
                    (not_at_a_p3)

                    ; #52170: origin
                    (at_a_p6)

                    ; #26836: <==negation-removal== 52170 (pos)
                    (not (not_at_a_p6))

                    ; #48211: <==negation-removal== 26577 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #26577: origin
                    (not_at_a_p3)

                    ; #38339: origin
                    (at_a_p7)

                    ; #24775: <==negation-removal== 38339 (pos)
                    (not (not_at_a_p7))

                    ; #48211: <==negation-removal== 26577 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #26577: origin
                    (not_at_a_p3)

                    ; #37908: origin
                    (at_a_p8)

                    ; #45604: <==negation-removal== 37908 (pos)
                    (not (not_at_a_p8))

                    ; #48211: <==negation-removal== 26577 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #26577: origin
                    (not_at_a_p3)

                    ; #70752: origin
                    (at_a_p9)

                    ; #48211: <==negation-removal== 26577 (pos)
                    (not (at_a_p3))

                    ; #49641: <==negation-removal== 70752 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #12828: origin
                    (at_a_p1)

                    ; #82970: origin
                    (not_at_a_p4)

                    ; #16860: <==negation-removal== 12828 (pos)
                    (not (not_at_a_p1))

                    ; #46773: <==negation-removal== 82970 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #82970: origin
                    (not_at_a_p4)

                    ; #87034: origin
                    (at_a_p2)

                    ; #46773: <==negation-removal== 82970 (pos)
                    (not (at_a_p4))

                    ; #55555: <==negation-removal== 87034 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #48211: origin
                    (at_a_p3)

                    ; #82970: origin
                    (not_at_a_p4)

                    ; #26577: <==negation-removal== 48211 (pos)
                    (not (not_at_a_p3))

                    ; #46773: <==negation-removal== 82970 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #46773: origin
                    (at_a_p4)

                    ; #82970: origin
                    (not_at_a_p4)

                    ; #46773: <==negation-removal== 82970 (pos)
                    (not (at_a_p4))

                    ; #82970: <==negation-removal== 46773 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #57009: origin
                    (at_a_p5)

                    ; #82970: origin
                    (not_at_a_p4)

                    ; #19748: <==negation-removal== 57009 (pos)
                    (not (not_at_a_p5))

                    ; #46773: <==negation-removal== 82970 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #52170: origin
                    (at_a_p6)

                    ; #82970: origin
                    (not_at_a_p4)

                    ; #26836: <==negation-removal== 52170 (pos)
                    (not (not_at_a_p6))

                    ; #46773: <==negation-removal== 82970 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #38339: origin
                    (at_a_p7)

                    ; #82970: origin
                    (not_at_a_p4)

                    ; #24775: <==negation-removal== 38339 (pos)
                    (not (not_at_a_p7))

                    ; #46773: <==negation-removal== 82970 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #37908: origin
                    (at_a_p8)

                    ; #82970: origin
                    (not_at_a_p4)

                    ; #45604: <==negation-removal== 37908 (pos)
                    (not (not_at_a_p8))

                    ; #46773: <==negation-removal== 82970 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #70752: origin
                    (at_a_p9)

                    ; #82970: origin
                    (not_at_a_p4)

                    ; #46773: <==negation-removal== 82970 (pos)
                    (not (at_a_p4))

                    ; #49641: <==negation-removal== 70752 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #12828: origin
                    (at_a_p1)

                    ; #19748: origin
                    (not_at_a_p5)

                    ; #16860: <==negation-removal== 12828 (pos)
                    (not (not_at_a_p1))

                    ; #57009: <==negation-removal== 19748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #19748: origin
                    (not_at_a_p5)

                    ; #87034: origin
                    (at_a_p2)

                    ; #55555: <==negation-removal== 87034 (pos)
                    (not (not_at_a_p2))

                    ; #57009: <==negation-removal== 19748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #19748: origin
                    (not_at_a_p5)

                    ; #48211: origin
                    (at_a_p3)

                    ; #26577: <==negation-removal== 48211 (pos)
                    (not (not_at_a_p3))

                    ; #57009: <==negation-removal== 19748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #19748: origin
                    (not_at_a_p5)

                    ; #46773: origin
                    (at_a_p4)

                    ; #57009: <==negation-removal== 19748 (pos)
                    (not (at_a_p5))

                    ; #82970: <==negation-removal== 46773 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #19748: origin
                    (not_at_a_p5)

                    ; #57009: origin
                    (at_a_p5)

                    ; #19748: <==negation-removal== 57009 (pos)
                    (not (not_at_a_p5))

                    ; #57009: <==negation-removal== 19748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #19748: origin
                    (not_at_a_p5)

                    ; #52170: origin
                    (at_a_p6)

                    ; #26836: <==negation-removal== 52170 (pos)
                    (not (not_at_a_p6))

                    ; #57009: <==negation-removal== 19748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #19748: origin
                    (not_at_a_p5)

                    ; #38339: origin
                    (at_a_p7)

                    ; #24775: <==negation-removal== 38339 (pos)
                    (not (not_at_a_p7))

                    ; #57009: <==negation-removal== 19748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #19748: origin
                    (not_at_a_p5)

                    ; #37908: origin
                    (at_a_p8)

                    ; #45604: <==negation-removal== 37908 (pos)
                    (not (not_at_a_p8))

                    ; #57009: <==negation-removal== 19748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #19748: origin
                    (not_at_a_p5)

                    ; #70752: origin
                    (at_a_p9)

                    ; #49641: <==negation-removal== 70752 (pos)
                    (not (not_at_a_p9))

                    ; #57009: <==negation-removal== 19748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #12828: origin
                    (at_a_p1)

                    ; #26836: origin
                    (not_at_a_p6)

                    ; #16860: <==negation-removal== 12828 (pos)
                    (not (not_at_a_p1))

                    ; #52170: <==negation-removal== 26836 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #26836: origin
                    (not_at_a_p6)

                    ; #87034: origin
                    (at_a_p2)

                    ; #52170: <==negation-removal== 26836 (pos)
                    (not (at_a_p6))

                    ; #55555: <==negation-removal== 87034 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #26836: origin
                    (not_at_a_p6)

                    ; #48211: origin
                    (at_a_p3)

                    ; #26577: <==negation-removal== 48211 (pos)
                    (not (not_at_a_p3))

                    ; #52170: <==negation-removal== 26836 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #26836: origin
                    (not_at_a_p6)

                    ; #46773: origin
                    (at_a_p4)

                    ; #52170: <==negation-removal== 26836 (pos)
                    (not (at_a_p6))

                    ; #82970: <==negation-removal== 46773 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #26836: origin
                    (not_at_a_p6)

                    ; #57009: origin
                    (at_a_p5)

                    ; #19748: <==negation-removal== 57009 (pos)
                    (not (not_at_a_p5))

                    ; #52170: <==negation-removal== 26836 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #26836: origin
                    (not_at_a_p6)

                    ; #52170: origin
                    (at_a_p6)

                    ; #26836: <==negation-removal== 52170 (pos)
                    (not (not_at_a_p6))

                    ; #52170: <==negation-removal== 26836 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #26836: origin
                    (not_at_a_p6)

                    ; #38339: origin
                    (at_a_p7)

                    ; #24775: <==negation-removal== 38339 (pos)
                    (not (not_at_a_p7))

                    ; #52170: <==negation-removal== 26836 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #26836: origin
                    (not_at_a_p6)

                    ; #37908: origin
                    (at_a_p8)

                    ; #45604: <==negation-removal== 37908 (pos)
                    (not (not_at_a_p8))

                    ; #52170: <==negation-removal== 26836 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #26836: origin
                    (not_at_a_p6)

                    ; #70752: origin
                    (at_a_p9)

                    ; #49641: <==negation-removal== 70752 (pos)
                    (not (not_at_a_p9))

                    ; #52170: <==negation-removal== 26836 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #12828: origin
                    (at_a_p1)

                    ; #24775: origin
                    (not_at_a_p7)

                    ; #16860: <==negation-removal== 12828 (pos)
                    (not (not_at_a_p1))

                    ; #38339: <==negation-removal== 24775 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #24775: origin
                    (not_at_a_p7)

                    ; #87034: origin
                    (at_a_p2)

                    ; #38339: <==negation-removal== 24775 (pos)
                    (not (at_a_p7))

                    ; #55555: <==negation-removal== 87034 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #24775: origin
                    (not_at_a_p7)

                    ; #48211: origin
                    (at_a_p3)

                    ; #26577: <==negation-removal== 48211 (pos)
                    (not (not_at_a_p3))

                    ; #38339: <==negation-removal== 24775 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #24775: origin
                    (not_at_a_p7)

                    ; #46773: origin
                    (at_a_p4)

                    ; #38339: <==negation-removal== 24775 (pos)
                    (not (at_a_p7))

                    ; #82970: <==negation-removal== 46773 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #24775: origin
                    (not_at_a_p7)

                    ; #57009: origin
                    (at_a_p5)

                    ; #19748: <==negation-removal== 57009 (pos)
                    (not (not_at_a_p5))

                    ; #38339: <==negation-removal== 24775 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #24775: origin
                    (not_at_a_p7)

                    ; #52170: origin
                    (at_a_p6)

                    ; #26836: <==negation-removal== 52170 (pos)
                    (not (not_at_a_p6))

                    ; #38339: <==negation-removal== 24775 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #24775: origin
                    (not_at_a_p7)

                    ; #38339: origin
                    (at_a_p7)

                    ; #24775: <==negation-removal== 38339 (pos)
                    (not (not_at_a_p7))

                    ; #38339: <==negation-removal== 24775 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #24775: origin
                    (not_at_a_p7)

                    ; #37908: origin
                    (at_a_p8)

                    ; #38339: <==negation-removal== 24775 (pos)
                    (not (at_a_p7))

                    ; #45604: <==negation-removal== 37908 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #24775: origin
                    (not_at_a_p7)

                    ; #70752: origin
                    (at_a_p9)

                    ; #38339: <==negation-removal== 24775 (pos)
                    (not (at_a_p7))

                    ; #49641: <==negation-removal== 70752 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #12828: origin
                    (at_a_p1)

                    ; #45604: origin
                    (not_at_a_p8)

                    ; #16860: <==negation-removal== 12828 (pos)
                    (not (not_at_a_p1))

                    ; #37908: <==negation-removal== 45604 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #45604: origin
                    (not_at_a_p8)

                    ; #87034: origin
                    (at_a_p2)

                    ; #37908: <==negation-removal== 45604 (pos)
                    (not (at_a_p8))

                    ; #55555: <==negation-removal== 87034 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #45604: origin
                    (not_at_a_p8)

                    ; #48211: origin
                    (at_a_p3)

                    ; #26577: <==negation-removal== 48211 (pos)
                    (not (not_at_a_p3))

                    ; #37908: <==negation-removal== 45604 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #45604: origin
                    (not_at_a_p8)

                    ; #46773: origin
                    (at_a_p4)

                    ; #37908: <==negation-removal== 45604 (pos)
                    (not (at_a_p8))

                    ; #82970: <==negation-removal== 46773 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #45604: origin
                    (not_at_a_p8)

                    ; #57009: origin
                    (at_a_p5)

                    ; #19748: <==negation-removal== 57009 (pos)
                    (not (not_at_a_p5))

                    ; #37908: <==negation-removal== 45604 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #45604: origin
                    (not_at_a_p8)

                    ; #52170: origin
                    (at_a_p6)

                    ; #26836: <==negation-removal== 52170 (pos)
                    (not (not_at_a_p6))

                    ; #37908: <==negation-removal== 45604 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #38339: origin
                    (at_a_p7)

                    ; #45604: origin
                    (not_at_a_p8)

                    ; #24775: <==negation-removal== 38339 (pos)
                    (not (not_at_a_p7))

                    ; #37908: <==negation-removal== 45604 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #37908: origin
                    (at_a_p8)

                    ; #45604: origin
                    (not_at_a_p8)

                    ; #37908: <==negation-removal== 45604 (pos)
                    (not (at_a_p8))

                    ; #45604: <==negation-removal== 37908 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #45604: origin
                    (not_at_a_p8)

                    ; #70752: origin
                    (at_a_p9)

                    ; #37908: <==negation-removal== 45604 (pos)
                    (not (at_a_p8))

                    ; #49641: <==negation-removal== 70752 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #12828: origin
                    (at_a_p1)

                    ; #49641: origin
                    (not_at_a_p9)

                    ; #16860: <==negation-removal== 12828 (pos)
                    (not (not_at_a_p1))

                    ; #70752: <==negation-removal== 49641 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #49641: origin
                    (not_at_a_p9)

                    ; #87034: origin
                    (at_a_p2)

                    ; #55555: <==negation-removal== 87034 (pos)
                    (not (not_at_a_p2))

                    ; #70752: <==negation-removal== 49641 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #48211: origin
                    (at_a_p3)

                    ; #49641: origin
                    (not_at_a_p9)

                    ; #26577: <==negation-removal== 48211 (pos)
                    (not (not_at_a_p3))

                    ; #70752: <==negation-removal== 49641 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #46773: origin
                    (at_a_p4)

                    ; #49641: origin
                    (not_at_a_p9)

                    ; #70752: <==negation-removal== 49641 (pos)
                    (not (at_a_p9))

                    ; #82970: <==negation-removal== 46773 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #49641: origin
                    (not_at_a_p9)

                    ; #57009: origin
                    (at_a_p5)

                    ; #19748: <==negation-removal== 57009 (pos)
                    (not (not_at_a_p5))

                    ; #70752: <==negation-removal== 49641 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #49641: origin
                    (not_at_a_p9)

                    ; #52170: origin
                    (at_a_p6)

                    ; #26836: <==negation-removal== 52170 (pos)
                    (not (not_at_a_p6))

                    ; #70752: <==negation-removal== 49641 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #38339: origin
                    (at_a_p7)

                    ; #49641: origin
                    (not_at_a_p9)

                    ; #24775: <==negation-removal== 38339 (pos)
                    (not (not_at_a_p7))

                    ; #70752: <==negation-removal== 49641 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #37908: origin
                    (at_a_p8)

                    ; #49641: origin
                    (not_at_a_p9)

                    ; #45604: <==negation-removal== 37908 (pos)
                    (not (not_at_a_p8))

                    ; #70752: <==negation-removal== 49641 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #49641: origin
                    (not_at_a_p9)

                    ; #70752: origin
                    (at_a_p9)

                    ; #49641: <==negation-removal== 70752 (pos)
                    (not (not_at_a_p9))

                    ; #70752: <==negation-removal== 49641 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #20327: origin
                    (at_b_p1)

                    ; #33883: origin
                    (not_at_b_p1)

                    ; #20327: <==negation-removal== 33883 (pos)
                    (not (at_b_p1))

                    ; #33883: <==negation-removal== 20327 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #33883: origin
                    (not_at_b_p1)

                    ; #78871: origin
                    (at_b_p2)

                    ; #20327: <==negation-removal== 33883 (pos)
                    (not (at_b_p1))

                    ; #21884: <==negation-removal== 78871 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #15339: origin
                    (at_b_p3)

                    ; #33883: origin
                    (not_at_b_p1)

                    ; #20327: <==negation-removal== 33883 (pos)
                    (not (at_b_p1))

                    ; #57132: <==negation-removal== 15339 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #33883: origin
                    (not_at_b_p1)

                    ; #42263: origin
                    (at_b_p4)

                    ; #20327: <==negation-removal== 33883 (pos)
                    (not (at_b_p1))

                    ; #42265: <==negation-removal== 42263 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #33883: origin
                    (not_at_b_p1)

                    ; #52742: origin
                    (at_b_p5)

                    ; #20327: <==negation-removal== 33883 (pos)
                    (not (at_b_p1))

                    ; #44413: <==negation-removal== 52742 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #33883: origin
                    (not_at_b_p1)

                    ; #40819: origin
                    (at_b_p6)

                    ; #20327: <==negation-removal== 33883 (pos)
                    (not (at_b_p1))

                    ; #44134: <==negation-removal== 40819 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #33883: origin
                    (not_at_b_p1)

                    ; #73282: origin
                    (at_b_p7)

                    ; #20327: <==negation-removal== 33883 (pos)
                    (not (at_b_p1))

                    ; #60284: <==negation-removal== 73282 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #12406: origin
                    (at_b_p8)

                    ; #33883: origin
                    (not_at_b_p1)

                    ; #20327: <==negation-removal== 33883 (pos)
                    (not (at_b_p1))

                    ; #41460: <==negation-removal== 12406 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #33883: origin
                    (not_at_b_p1)

                    ; #73446: origin
                    (at_b_p9)

                    ; #15258: <==negation-removal== 73446 (pos)
                    (not (not_at_b_p9))

                    ; #20327: <==negation-removal== 33883 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #20327: origin
                    (at_b_p1)

                    ; #21884: origin
                    (not_at_b_p2)

                    ; #33883: <==negation-removal== 20327 (pos)
                    (not (not_at_b_p1))

                    ; #78871: <==negation-removal== 21884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p2)

                    ; #78871: origin
                    (at_b_p2)

                    ; #21884: <==negation-removal== 78871 (pos)
                    (not (not_at_b_p2))

                    ; #78871: <==negation-removal== 21884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #15339: origin
                    (at_b_p3)

                    ; #21884: origin
                    (not_at_b_p2)

                    ; #57132: <==negation-removal== 15339 (pos)
                    (not (not_at_b_p3))

                    ; #78871: <==negation-removal== 21884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p2)

                    ; #42263: origin
                    (at_b_p4)

                    ; #42265: <==negation-removal== 42263 (pos)
                    (not (not_at_b_p4))

                    ; #78871: <==negation-removal== 21884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p2)

                    ; #52742: origin
                    (at_b_p5)

                    ; #44413: <==negation-removal== 52742 (pos)
                    (not (not_at_b_p5))

                    ; #78871: <==negation-removal== 21884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p2)

                    ; #40819: origin
                    (at_b_p6)

                    ; #44134: <==negation-removal== 40819 (pos)
                    (not (not_at_b_p6))

                    ; #78871: <==negation-removal== 21884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p2)

                    ; #73282: origin
                    (at_b_p7)

                    ; #60284: <==negation-removal== 73282 (pos)
                    (not (not_at_b_p7))

                    ; #78871: <==negation-removal== 21884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #12406: origin
                    (at_b_p8)

                    ; #21884: origin
                    (not_at_b_p2)

                    ; #41460: <==negation-removal== 12406 (pos)
                    (not (not_at_b_p8))

                    ; #78871: <==negation-removal== 21884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p2)

                    ; #73446: origin
                    (at_b_p9)

                    ; #15258: <==negation-removal== 73446 (pos)
                    (not (not_at_b_p9))

                    ; #78871: <==negation-removal== 21884 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #20327: origin
                    (at_b_p1)

                    ; #57132: origin
                    (not_at_b_p3)

                    ; #15339: <==negation-removal== 57132 (pos)
                    (not (at_b_p3))

                    ; #33883: <==negation-removal== 20327 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #57132: origin
                    (not_at_b_p3)

                    ; #78871: origin
                    (at_b_p2)

                    ; #15339: <==negation-removal== 57132 (pos)
                    (not (at_b_p3))

                    ; #21884: <==negation-removal== 78871 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #15339: origin
                    (at_b_p3)

                    ; #57132: origin
                    (not_at_b_p3)

                    ; #15339: <==negation-removal== 57132 (pos)
                    (not (at_b_p3))

                    ; #57132: <==negation-removal== 15339 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #42263: origin
                    (at_b_p4)

                    ; #57132: origin
                    (not_at_b_p3)

                    ; #15339: <==negation-removal== 57132 (pos)
                    (not (at_b_p3))

                    ; #42265: <==negation-removal== 42263 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #52742: origin
                    (at_b_p5)

                    ; #57132: origin
                    (not_at_b_p3)

                    ; #15339: <==negation-removal== 57132 (pos)
                    (not (at_b_p3))

                    ; #44413: <==negation-removal== 52742 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #40819: origin
                    (at_b_p6)

                    ; #57132: origin
                    (not_at_b_p3)

                    ; #15339: <==negation-removal== 57132 (pos)
                    (not (at_b_p3))

                    ; #44134: <==negation-removal== 40819 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #57132: origin
                    (not_at_b_p3)

                    ; #73282: origin
                    (at_b_p7)

                    ; #15339: <==negation-removal== 57132 (pos)
                    (not (at_b_p3))

                    ; #60284: <==negation-removal== 73282 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #12406: origin
                    (at_b_p8)

                    ; #57132: origin
                    (not_at_b_p3)

                    ; #15339: <==negation-removal== 57132 (pos)
                    (not (at_b_p3))

                    ; #41460: <==negation-removal== 12406 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #57132: origin
                    (not_at_b_p3)

                    ; #73446: origin
                    (at_b_p9)

                    ; #15258: <==negation-removal== 73446 (pos)
                    (not (not_at_b_p9))

                    ; #15339: <==negation-removal== 57132 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #20327: origin
                    (at_b_p1)

                    ; #42265: origin
                    (not_at_b_p4)

                    ; #33883: <==negation-removal== 20327 (pos)
                    (not (not_at_b_p1))

                    ; #42263: <==negation-removal== 42265 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #42265: origin
                    (not_at_b_p4)

                    ; #78871: origin
                    (at_b_p2)

                    ; #21884: <==negation-removal== 78871 (pos)
                    (not (not_at_b_p2))

                    ; #42263: <==negation-removal== 42265 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #15339: origin
                    (at_b_p3)

                    ; #42265: origin
                    (not_at_b_p4)

                    ; #42263: <==negation-removal== 42265 (pos)
                    (not (at_b_p4))

                    ; #57132: <==negation-removal== 15339 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #42263: origin
                    (at_b_p4)

                    ; #42265: origin
                    (not_at_b_p4)

                    ; #42263: <==negation-removal== 42265 (pos)
                    (not (at_b_p4))

                    ; #42265: <==negation-removal== 42263 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #42265: origin
                    (not_at_b_p4)

                    ; #52742: origin
                    (at_b_p5)

                    ; #42263: <==negation-removal== 42265 (pos)
                    (not (at_b_p4))

                    ; #44413: <==negation-removal== 52742 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #40819: origin
                    (at_b_p6)

                    ; #42265: origin
                    (not_at_b_p4)

                    ; #42263: <==negation-removal== 42265 (pos)
                    (not (at_b_p4))

                    ; #44134: <==negation-removal== 40819 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #42265: origin
                    (not_at_b_p4)

                    ; #73282: origin
                    (at_b_p7)

                    ; #42263: <==negation-removal== 42265 (pos)
                    (not (at_b_p4))

                    ; #60284: <==negation-removal== 73282 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #12406: origin
                    (at_b_p8)

                    ; #42265: origin
                    (not_at_b_p4)

                    ; #41460: <==negation-removal== 12406 (pos)
                    (not (not_at_b_p8))

                    ; #42263: <==negation-removal== 42265 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #42265: origin
                    (not_at_b_p4)

                    ; #73446: origin
                    (at_b_p9)

                    ; #15258: <==negation-removal== 73446 (pos)
                    (not (not_at_b_p9))

                    ; #42263: <==negation-removal== 42265 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #20327: origin
                    (at_b_p1)

                    ; #44413: origin
                    (not_at_b_p5)

                    ; #33883: <==negation-removal== 20327 (pos)
                    (not (not_at_b_p1))

                    ; #52742: <==negation-removal== 44413 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #44413: origin
                    (not_at_b_p5)

                    ; #78871: origin
                    (at_b_p2)

                    ; #21884: <==negation-removal== 78871 (pos)
                    (not (not_at_b_p2))

                    ; #52742: <==negation-removal== 44413 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #15339: origin
                    (at_b_p3)

                    ; #44413: origin
                    (not_at_b_p5)

                    ; #52742: <==negation-removal== 44413 (pos)
                    (not (at_b_p5))

                    ; #57132: <==negation-removal== 15339 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #42263: origin
                    (at_b_p4)

                    ; #44413: origin
                    (not_at_b_p5)

                    ; #42265: <==negation-removal== 42263 (pos)
                    (not (not_at_b_p4))

                    ; #52742: <==negation-removal== 44413 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #44413: origin
                    (not_at_b_p5)

                    ; #52742: origin
                    (at_b_p5)

                    ; #44413: <==negation-removal== 52742 (pos)
                    (not (not_at_b_p5))

                    ; #52742: <==negation-removal== 44413 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #40819: origin
                    (at_b_p6)

                    ; #44413: origin
                    (not_at_b_p5)

                    ; #44134: <==negation-removal== 40819 (pos)
                    (not (not_at_b_p6))

                    ; #52742: <==negation-removal== 44413 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #44413: origin
                    (not_at_b_p5)

                    ; #73282: origin
                    (at_b_p7)

                    ; #52742: <==negation-removal== 44413 (pos)
                    (not (at_b_p5))

                    ; #60284: <==negation-removal== 73282 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #12406: origin
                    (at_b_p8)

                    ; #44413: origin
                    (not_at_b_p5)

                    ; #41460: <==negation-removal== 12406 (pos)
                    (not (not_at_b_p8))

                    ; #52742: <==negation-removal== 44413 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #44413: origin
                    (not_at_b_p5)

                    ; #73446: origin
                    (at_b_p9)

                    ; #15258: <==negation-removal== 73446 (pos)
                    (not (not_at_b_p9))

                    ; #52742: <==negation-removal== 44413 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #20327: origin
                    (at_b_p1)

                    ; #44134: origin
                    (not_at_b_p6)

                    ; #33883: <==negation-removal== 20327 (pos)
                    (not (not_at_b_p1))

                    ; #40819: <==negation-removal== 44134 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #44134: origin
                    (not_at_b_p6)

                    ; #78871: origin
                    (at_b_p2)

                    ; #21884: <==negation-removal== 78871 (pos)
                    (not (not_at_b_p2))

                    ; #40819: <==negation-removal== 44134 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #15339: origin
                    (at_b_p3)

                    ; #44134: origin
                    (not_at_b_p6)

                    ; #40819: <==negation-removal== 44134 (pos)
                    (not (at_b_p6))

                    ; #57132: <==negation-removal== 15339 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #42263: origin
                    (at_b_p4)

                    ; #44134: origin
                    (not_at_b_p6)

                    ; #40819: <==negation-removal== 44134 (pos)
                    (not (at_b_p6))

                    ; #42265: <==negation-removal== 42263 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #44134: origin
                    (not_at_b_p6)

                    ; #52742: origin
                    (at_b_p5)

                    ; #40819: <==negation-removal== 44134 (pos)
                    (not (at_b_p6))

                    ; #44413: <==negation-removal== 52742 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #40819: origin
                    (at_b_p6)

                    ; #44134: origin
                    (not_at_b_p6)

                    ; #40819: <==negation-removal== 44134 (pos)
                    (not (at_b_p6))

                    ; #44134: <==negation-removal== 40819 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #44134: origin
                    (not_at_b_p6)

                    ; #73282: origin
                    (at_b_p7)

                    ; #40819: <==negation-removal== 44134 (pos)
                    (not (at_b_p6))

                    ; #60284: <==negation-removal== 73282 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #12406: origin
                    (at_b_p8)

                    ; #44134: origin
                    (not_at_b_p6)

                    ; #40819: <==negation-removal== 44134 (pos)
                    (not (at_b_p6))

                    ; #41460: <==negation-removal== 12406 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #44134: origin
                    (not_at_b_p6)

                    ; #73446: origin
                    (at_b_p9)

                    ; #15258: <==negation-removal== 73446 (pos)
                    (not (not_at_b_p9))

                    ; #40819: <==negation-removal== 44134 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #20327: origin
                    (at_b_p1)

                    ; #60284: origin
                    (not_at_b_p7)

                    ; #33883: <==negation-removal== 20327 (pos)
                    (not (not_at_b_p1))

                    ; #73282: <==negation-removal== 60284 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #60284: origin
                    (not_at_b_p7)

                    ; #78871: origin
                    (at_b_p2)

                    ; #21884: <==negation-removal== 78871 (pos)
                    (not (not_at_b_p2))

                    ; #73282: <==negation-removal== 60284 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #15339: origin
                    (at_b_p3)

                    ; #60284: origin
                    (not_at_b_p7)

                    ; #57132: <==negation-removal== 15339 (pos)
                    (not (not_at_b_p3))

                    ; #73282: <==negation-removal== 60284 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #42263: origin
                    (at_b_p4)

                    ; #60284: origin
                    (not_at_b_p7)

                    ; #42265: <==negation-removal== 42263 (pos)
                    (not (not_at_b_p4))

                    ; #73282: <==negation-removal== 60284 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #52742: origin
                    (at_b_p5)

                    ; #60284: origin
                    (not_at_b_p7)

                    ; #44413: <==negation-removal== 52742 (pos)
                    (not (not_at_b_p5))

                    ; #73282: <==negation-removal== 60284 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #40819: origin
                    (at_b_p6)

                    ; #60284: origin
                    (not_at_b_p7)

                    ; #44134: <==negation-removal== 40819 (pos)
                    (not (not_at_b_p6))

                    ; #73282: <==negation-removal== 60284 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #60284: origin
                    (not_at_b_p7)

                    ; #73282: origin
                    (at_b_p7)

                    ; #60284: <==negation-removal== 73282 (pos)
                    (not (not_at_b_p7))

                    ; #73282: <==negation-removal== 60284 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #12406: origin
                    (at_b_p8)

                    ; #60284: origin
                    (not_at_b_p7)

                    ; #41460: <==negation-removal== 12406 (pos)
                    (not (not_at_b_p8))

                    ; #73282: <==negation-removal== 60284 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #60284: origin
                    (not_at_b_p7)

                    ; #73446: origin
                    (at_b_p9)

                    ; #15258: <==negation-removal== 73446 (pos)
                    (not (not_at_b_p9))

                    ; #73282: <==negation-removal== 60284 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #20327: origin
                    (at_b_p1)

                    ; #41460: origin
                    (not_at_b_p8)

                    ; #12406: <==negation-removal== 41460 (pos)
                    (not (at_b_p8))

                    ; #33883: <==negation-removal== 20327 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #41460: origin
                    (not_at_b_p8)

                    ; #78871: origin
                    (at_b_p2)

                    ; #12406: <==negation-removal== 41460 (pos)
                    (not (at_b_p8))

                    ; #21884: <==negation-removal== 78871 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #15339: origin
                    (at_b_p3)

                    ; #41460: origin
                    (not_at_b_p8)

                    ; #12406: <==negation-removal== 41460 (pos)
                    (not (at_b_p8))

                    ; #57132: <==negation-removal== 15339 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #41460: origin
                    (not_at_b_p8)

                    ; #42263: origin
                    (at_b_p4)

                    ; #12406: <==negation-removal== 41460 (pos)
                    (not (at_b_p8))

                    ; #42265: <==negation-removal== 42263 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #41460: origin
                    (not_at_b_p8)

                    ; #52742: origin
                    (at_b_p5)

                    ; #12406: <==negation-removal== 41460 (pos)
                    (not (at_b_p8))

                    ; #44413: <==negation-removal== 52742 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #40819: origin
                    (at_b_p6)

                    ; #41460: origin
                    (not_at_b_p8)

                    ; #12406: <==negation-removal== 41460 (pos)
                    (not (at_b_p8))

                    ; #44134: <==negation-removal== 40819 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #41460: origin
                    (not_at_b_p8)

                    ; #73282: origin
                    (at_b_p7)

                    ; #12406: <==negation-removal== 41460 (pos)
                    (not (at_b_p8))

                    ; #60284: <==negation-removal== 73282 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #12406: origin
                    (at_b_p8)

                    ; #41460: origin
                    (not_at_b_p8)

                    ; #12406: <==negation-removal== 41460 (pos)
                    (not (at_b_p8))

                    ; #41460: <==negation-removal== 12406 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #41460: origin
                    (not_at_b_p8)

                    ; #73446: origin
                    (at_b_p9)

                    ; #12406: <==negation-removal== 41460 (pos)
                    (not (at_b_p8))

                    ; #15258: <==negation-removal== 73446 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #15258: origin
                    (not_at_b_p9)

                    ; #20327: origin
                    (at_b_p1)

                    ; #33883: <==negation-removal== 20327 (pos)
                    (not (not_at_b_p1))

                    ; #73446: <==negation-removal== 15258 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #15258: origin
                    (not_at_b_p9)

                    ; #78871: origin
                    (at_b_p2)

                    ; #21884: <==negation-removal== 78871 (pos)
                    (not (not_at_b_p2))

                    ; #73446: <==negation-removal== 15258 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #15258: origin
                    (not_at_b_p9)

                    ; #15339: origin
                    (at_b_p3)

                    ; #57132: <==negation-removal== 15339 (pos)
                    (not (not_at_b_p3))

                    ; #73446: <==negation-removal== 15258 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #15258: origin
                    (not_at_b_p9)

                    ; #42263: origin
                    (at_b_p4)

                    ; #42265: <==negation-removal== 42263 (pos)
                    (not (not_at_b_p4))

                    ; #73446: <==negation-removal== 15258 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #15258: origin
                    (not_at_b_p9)

                    ; #52742: origin
                    (at_b_p5)

                    ; #44413: <==negation-removal== 52742 (pos)
                    (not (not_at_b_p5))

                    ; #73446: <==negation-removal== 15258 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #15258: origin
                    (not_at_b_p9)

                    ; #40819: origin
                    (at_b_p6)

                    ; #44134: <==negation-removal== 40819 (pos)
                    (not (not_at_b_p6))

                    ; #73446: <==negation-removal== 15258 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #15258: origin
                    (not_at_b_p9)

                    ; #73282: origin
                    (at_b_p7)

                    ; #60284: <==negation-removal== 73282 (pos)
                    (not (not_at_b_p7))

                    ; #73446: <==negation-removal== 15258 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #12406: origin
                    (at_b_p8)

                    ; #15258: origin
                    (not_at_b_p9)

                    ; #41460: <==negation-removal== 12406 (pos)
                    (not (not_at_b_p8))

                    ; #73446: <==negation-removal== 15258 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #15258: origin
                    (not_at_b_p9)

                    ; #73446: origin
                    (at_b_p9)

                    ; #15258: <==negation-removal== 73446 (pos)
                    (not (not_at_b_p9))

                    ; #73446: <==negation-removal== 15258 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #54495: origin
                    (not_at_c_p1)

                    ; #64189: origin
                    (at_c_p1)

                    ; #54495: <==negation-removal== 64189 (pos)
                    (not (not_at_c_p1))

                    ; #64189: <==negation-removal== 54495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #17988: origin
                    (at_c_p2)

                    ; #54495: origin
                    (not_at_c_p1)

                    ; #64189: <==negation-removal== 54495 (pos)
                    (not (at_c_p1))

                    ; #71246: <==negation-removal== 17988 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #54495: origin
                    (not_at_c_p1)

                    ; #64778: origin
                    (at_c_p3)

                    ; #64189: <==negation-removal== 54495 (pos)
                    (not (at_c_p1))

                    ; #87266: <==negation-removal== 64778 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #54495: origin
                    (not_at_c_p1)

                    ; #67634: origin
                    (at_c_p4)

                    ; #56303: <==negation-removal== 67634 (pos)
                    (not (not_at_c_p4))

                    ; #64189: <==negation-removal== 54495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #25175: origin
                    (at_c_p5)

                    ; #54495: origin
                    (not_at_c_p1)

                    ; #10438: <==negation-removal== 25175 (pos)
                    (not (not_at_c_p5))

                    ; #64189: <==negation-removal== 54495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #13895: origin
                    (at_c_p6)

                    ; #54495: origin
                    (not_at_c_p1)

                    ; #31286: <==negation-removal== 13895 (pos)
                    (not (not_at_c_p6))

                    ; #64189: <==negation-removal== 54495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #51764: origin
                    (at_c_p7)

                    ; #54495: origin
                    (not_at_c_p1)

                    ; #64189: <==negation-removal== 54495 (pos)
                    (not (at_c_p1))

                    ; #95495: <==negation-removal== 51764 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #54495: origin
                    (not_at_c_p1)

                    ; #62742: origin
                    (at_c_p8)

                    ; #13207: <==negation-removal== 62742 (pos)
                    (not (not_at_c_p8))

                    ; #64189: <==negation-removal== 54495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #53879: origin
                    (at_c_p9)

                    ; #54495: origin
                    (not_at_c_p1)

                    ; #63207: <==negation-removal== 53879 (pos)
                    (not (not_at_c_p9))

                    ; #64189: <==negation-removal== 54495 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #64189: origin
                    (at_c_p1)

                    ; #71246: origin
                    (not_at_c_p2)

                    ; #17988: <==negation-removal== 71246 (pos)
                    (not (at_c_p2))

                    ; #54495: <==negation-removal== 64189 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #17988: origin
                    (at_c_p2)

                    ; #71246: origin
                    (not_at_c_p2)

                    ; #17988: <==negation-removal== 71246 (pos)
                    (not (at_c_p2))

                    ; #71246: <==negation-removal== 17988 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #64778: origin
                    (at_c_p3)

                    ; #71246: origin
                    (not_at_c_p2)

                    ; #17988: <==negation-removal== 71246 (pos)
                    (not (at_c_p2))

                    ; #87266: <==negation-removal== 64778 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #67634: origin
                    (at_c_p4)

                    ; #71246: origin
                    (not_at_c_p2)

                    ; #17988: <==negation-removal== 71246 (pos)
                    (not (at_c_p2))

                    ; #56303: <==negation-removal== 67634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #25175: origin
                    (at_c_p5)

                    ; #71246: origin
                    (not_at_c_p2)

                    ; #10438: <==negation-removal== 25175 (pos)
                    (not (not_at_c_p5))

                    ; #17988: <==negation-removal== 71246 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #13895: origin
                    (at_c_p6)

                    ; #71246: origin
                    (not_at_c_p2)

                    ; #17988: <==negation-removal== 71246 (pos)
                    (not (at_c_p2))

                    ; #31286: <==negation-removal== 13895 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #51764: origin
                    (at_c_p7)

                    ; #71246: origin
                    (not_at_c_p2)

                    ; #17988: <==negation-removal== 71246 (pos)
                    (not (at_c_p2))

                    ; #95495: <==negation-removal== 51764 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #62742: origin
                    (at_c_p8)

                    ; #71246: origin
                    (not_at_c_p2)

                    ; #13207: <==negation-removal== 62742 (pos)
                    (not (not_at_c_p8))

                    ; #17988: <==negation-removal== 71246 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #53879: origin
                    (at_c_p9)

                    ; #71246: origin
                    (not_at_c_p2)

                    ; #17988: <==negation-removal== 71246 (pos)
                    (not (at_c_p2))

                    ; #63207: <==negation-removal== 53879 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #64189: origin
                    (at_c_p1)

                    ; #87266: origin
                    (not_at_c_p3)

                    ; #54495: <==negation-removal== 64189 (pos)
                    (not (not_at_c_p1))

                    ; #64778: <==negation-removal== 87266 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #17988: origin
                    (at_c_p2)

                    ; #87266: origin
                    (not_at_c_p3)

                    ; #64778: <==negation-removal== 87266 (pos)
                    (not (at_c_p3))

                    ; #71246: <==negation-removal== 17988 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #64778: origin
                    (at_c_p3)

                    ; #87266: origin
                    (not_at_c_p3)

                    ; #64778: <==negation-removal== 87266 (pos)
                    (not (at_c_p3))

                    ; #87266: <==negation-removal== 64778 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #67634: origin
                    (at_c_p4)

                    ; #87266: origin
                    (not_at_c_p3)

                    ; #56303: <==negation-removal== 67634 (pos)
                    (not (not_at_c_p4))

                    ; #64778: <==negation-removal== 87266 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #25175: origin
                    (at_c_p5)

                    ; #87266: origin
                    (not_at_c_p3)

                    ; #10438: <==negation-removal== 25175 (pos)
                    (not (not_at_c_p5))

                    ; #64778: <==negation-removal== 87266 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #13895: origin
                    (at_c_p6)

                    ; #87266: origin
                    (not_at_c_p3)

                    ; #31286: <==negation-removal== 13895 (pos)
                    (not (not_at_c_p6))

                    ; #64778: <==negation-removal== 87266 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #51764: origin
                    (at_c_p7)

                    ; #87266: origin
                    (not_at_c_p3)

                    ; #64778: <==negation-removal== 87266 (pos)
                    (not (at_c_p3))

                    ; #95495: <==negation-removal== 51764 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #62742: origin
                    (at_c_p8)

                    ; #87266: origin
                    (not_at_c_p3)

                    ; #13207: <==negation-removal== 62742 (pos)
                    (not (not_at_c_p8))

                    ; #64778: <==negation-removal== 87266 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #53879: origin
                    (at_c_p9)

                    ; #87266: origin
                    (not_at_c_p3)

                    ; #63207: <==negation-removal== 53879 (pos)
                    (not (not_at_c_p9))

                    ; #64778: <==negation-removal== 87266 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #56303: origin
                    (not_at_c_p4)

                    ; #64189: origin
                    (at_c_p1)

                    ; #54495: <==negation-removal== 64189 (pos)
                    (not (not_at_c_p1))

                    ; #67634: <==negation-removal== 56303 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #17988: origin
                    (at_c_p2)

                    ; #56303: origin
                    (not_at_c_p4)

                    ; #67634: <==negation-removal== 56303 (pos)
                    (not (at_c_p4))

                    ; #71246: <==negation-removal== 17988 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #56303: origin
                    (not_at_c_p4)

                    ; #64778: origin
                    (at_c_p3)

                    ; #67634: <==negation-removal== 56303 (pos)
                    (not (at_c_p4))

                    ; #87266: <==negation-removal== 64778 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #56303: origin
                    (not_at_c_p4)

                    ; #67634: origin
                    (at_c_p4)

                    ; #56303: <==negation-removal== 67634 (pos)
                    (not (not_at_c_p4))

                    ; #67634: <==negation-removal== 56303 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #25175: origin
                    (at_c_p5)

                    ; #56303: origin
                    (not_at_c_p4)

                    ; #10438: <==negation-removal== 25175 (pos)
                    (not (not_at_c_p5))

                    ; #67634: <==negation-removal== 56303 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #13895: origin
                    (at_c_p6)

                    ; #56303: origin
                    (not_at_c_p4)

                    ; #31286: <==negation-removal== 13895 (pos)
                    (not (not_at_c_p6))

                    ; #67634: <==negation-removal== 56303 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #51764: origin
                    (at_c_p7)

                    ; #56303: origin
                    (not_at_c_p4)

                    ; #67634: <==negation-removal== 56303 (pos)
                    (not (at_c_p4))

                    ; #95495: <==negation-removal== 51764 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #56303: origin
                    (not_at_c_p4)

                    ; #62742: origin
                    (at_c_p8)

                    ; #13207: <==negation-removal== 62742 (pos)
                    (not (not_at_c_p8))

                    ; #67634: <==negation-removal== 56303 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #53879: origin
                    (at_c_p9)

                    ; #56303: origin
                    (not_at_c_p4)

                    ; #63207: <==negation-removal== 53879 (pos)
                    (not (not_at_c_p9))

                    ; #67634: <==negation-removal== 56303 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #10438: origin
                    (not_at_c_p5)

                    ; #64189: origin
                    (at_c_p1)

                    ; #25175: <==negation-removal== 10438 (pos)
                    (not (at_c_p5))

                    ; #54495: <==negation-removal== 64189 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #10438: origin
                    (not_at_c_p5)

                    ; #17988: origin
                    (at_c_p2)

                    ; #25175: <==negation-removal== 10438 (pos)
                    (not (at_c_p5))

                    ; #71246: <==negation-removal== 17988 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #10438: origin
                    (not_at_c_p5)

                    ; #64778: origin
                    (at_c_p3)

                    ; #25175: <==negation-removal== 10438 (pos)
                    (not (at_c_p5))

                    ; #87266: <==negation-removal== 64778 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #10438: origin
                    (not_at_c_p5)

                    ; #67634: origin
                    (at_c_p4)

                    ; #25175: <==negation-removal== 10438 (pos)
                    (not (at_c_p5))

                    ; #56303: <==negation-removal== 67634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #10438: origin
                    (not_at_c_p5)

                    ; #25175: origin
                    (at_c_p5)

                    ; #10438: <==negation-removal== 25175 (pos)
                    (not (not_at_c_p5))

                    ; #25175: <==negation-removal== 10438 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #10438: origin
                    (not_at_c_p5)

                    ; #13895: origin
                    (at_c_p6)

                    ; #25175: <==negation-removal== 10438 (pos)
                    (not (at_c_p5))

                    ; #31286: <==negation-removal== 13895 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #10438: origin
                    (not_at_c_p5)

                    ; #51764: origin
                    (at_c_p7)

                    ; #25175: <==negation-removal== 10438 (pos)
                    (not (at_c_p5))

                    ; #95495: <==negation-removal== 51764 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #10438: origin
                    (not_at_c_p5)

                    ; #62742: origin
                    (at_c_p8)

                    ; #13207: <==negation-removal== 62742 (pos)
                    (not (not_at_c_p8))

                    ; #25175: <==negation-removal== 10438 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #10438: origin
                    (not_at_c_p5)

                    ; #53879: origin
                    (at_c_p9)

                    ; #25175: <==negation-removal== 10438 (pos)
                    (not (at_c_p5))

                    ; #63207: <==negation-removal== 53879 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #31286: origin
                    (not_at_c_p6)

                    ; #64189: origin
                    (at_c_p1)

                    ; #13895: <==negation-removal== 31286 (pos)
                    (not (at_c_p6))

                    ; #54495: <==negation-removal== 64189 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #17988: origin
                    (at_c_p2)

                    ; #31286: origin
                    (not_at_c_p6)

                    ; #13895: <==negation-removal== 31286 (pos)
                    (not (at_c_p6))

                    ; #71246: <==negation-removal== 17988 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #31286: origin
                    (not_at_c_p6)

                    ; #64778: origin
                    (at_c_p3)

                    ; #13895: <==negation-removal== 31286 (pos)
                    (not (at_c_p6))

                    ; #87266: <==negation-removal== 64778 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #31286: origin
                    (not_at_c_p6)

                    ; #67634: origin
                    (at_c_p4)

                    ; #13895: <==negation-removal== 31286 (pos)
                    (not (at_c_p6))

                    ; #56303: <==negation-removal== 67634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #25175: origin
                    (at_c_p5)

                    ; #31286: origin
                    (not_at_c_p6)

                    ; #10438: <==negation-removal== 25175 (pos)
                    (not (not_at_c_p5))

                    ; #13895: <==negation-removal== 31286 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #13895: origin
                    (at_c_p6)

                    ; #31286: origin
                    (not_at_c_p6)

                    ; #13895: <==negation-removal== 31286 (pos)
                    (not (at_c_p6))

                    ; #31286: <==negation-removal== 13895 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #31286: origin
                    (not_at_c_p6)

                    ; #51764: origin
                    (at_c_p7)

                    ; #13895: <==negation-removal== 31286 (pos)
                    (not (at_c_p6))

                    ; #95495: <==negation-removal== 51764 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #31286: origin
                    (not_at_c_p6)

                    ; #62742: origin
                    (at_c_p8)

                    ; #13207: <==negation-removal== 62742 (pos)
                    (not (not_at_c_p8))

                    ; #13895: <==negation-removal== 31286 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #31286: origin
                    (not_at_c_p6)

                    ; #53879: origin
                    (at_c_p9)

                    ; #13895: <==negation-removal== 31286 (pos)
                    (not (at_c_p6))

                    ; #63207: <==negation-removal== 53879 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #64189: origin
                    (at_c_p1)

                    ; #95495: origin
                    (not_at_c_p7)

                    ; #51764: <==negation-removal== 95495 (pos)
                    (not (at_c_p7))

                    ; #54495: <==negation-removal== 64189 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #17988: origin
                    (at_c_p2)

                    ; #95495: origin
                    (not_at_c_p7)

                    ; #51764: <==negation-removal== 95495 (pos)
                    (not (at_c_p7))

                    ; #71246: <==negation-removal== 17988 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #64778: origin
                    (at_c_p3)

                    ; #95495: origin
                    (not_at_c_p7)

                    ; #51764: <==negation-removal== 95495 (pos)
                    (not (at_c_p7))

                    ; #87266: <==negation-removal== 64778 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #67634: origin
                    (at_c_p4)

                    ; #95495: origin
                    (not_at_c_p7)

                    ; #51764: <==negation-removal== 95495 (pos)
                    (not (at_c_p7))

                    ; #56303: <==negation-removal== 67634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #25175: origin
                    (at_c_p5)

                    ; #95495: origin
                    (not_at_c_p7)

                    ; #10438: <==negation-removal== 25175 (pos)
                    (not (not_at_c_p5))

                    ; #51764: <==negation-removal== 95495 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #13895: origin
                    (at_c_p6)

                    ; #95495: origin
                    (not_at_c_p7)

                    ; #31286: <==negation-removal== 13895 (pos)
                    (not (not_at_c_p6))

                    ; #51764: <==negation-removal== 95495 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #51764: origin
                    (at_c_p7)

                    ; #95495: origin
                    (not_at_c_p7)

                    ; #51764: <==negation-removal== 95495 (pos)
                    (not (at_c_p7))

                    ; #95495: <==negation-removal== 51764 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #62742: origin
                    (at_c_p8)

                    ; #95495: origin
                    (not_at_c_p7)

                    ; #13207: <==negation-removal== 62742 (pos)
                    (not (not_at_c_p8))

                    ; #51764: <==negation-removal== 95495 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #53879: origin
                    (at_c_p9)

                    ; #95495: origin
                    (not_at_c_p7)

                    ; #51764: <==negation-removal== 95495 (pos)
                    (not (at_c_p7))

                    ; #63207: <==negation-removal== 53879 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #13207: origin
                    (not_at_c_p8)

                    ; #64189: origin
                    (at_c_p1)

                    ; #54495: <==negation-removal== 64189 (pos)
                    (not (not_at_c_p1))

                    ; #62742: <==negation-removal== 13207 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #13207: origin
                    (not_at_c_p8)

                    ; #17988: origin
                    (at_c_p2)

                    ; #62742: <==negation-removal== 13207 (pos)
                    (not (at_c_p8))

                    ; #71246: <==negation-removal== 17988 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #13207: origin
                    (not_at_c_p8)

                    ; #64778: origin
                    (at_c_p3)

                    ; #62742: <==negation-removal== 13207 (pos)
                    (not (at_c_p8))

                    ; #87266: <==negation-removal== 64778 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #13207: origin
                    (not_at_c_p8)

                    ; #67634: origin
                    (at_c_p4)

                    ; #56303: <==negation-removal== 67634 (pos)
                    (not (not_at_c_p4))

                    ; #62742: <==negation-removal== 13207 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #13207: origin
                    (not_at_c_p8)

                    ; #25175: origin
                    (at_c_p5)

                    ; #10438: <==negation-removal== 25175 (pos)
                    (not (not_at_c_p5))

                    ; #62742: <==negation-removal== 13207 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #13207: origin
                    (not_at_c_p8)

                    ; #13895: origin
                    (at_c_p6)

                    ; #31286: <==negation-removal== 13895 (pos)
                    (not (not_at_c_p6))

                    ; #62742: <==negation-removal== 13207 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #13207: origin
                    (not_at_c_p8)

                    ; #51764: origin
                    (at_c_p7)

                    ; #62742: <==negation-removal== 13207 (pos)
                    (not (at_c_p8))

                    ; #95495: <==negation-removal== 51764 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #13207: origin
                    (not_at_c_p8)

                    ; #62742: origin
                    (at_c_p8)

                    ; #13207: <==negation-removal== 62742 (pos)
                    (not (not_at_c_p8))

                    ; #62742: <==negation-removal== 13207 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #13207: origin
                    (not_at_c_p8)

                    ; #53879: origin
                    (at_c_p9)

                    ; #62742: <==negation-removal== 13207 (pos)
                    (not (at_c_p8))

                    ; #63207: <==negation-removal== 53879 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #63207: origin
                    (not_at_c_p9)

                    ; #64189: origin
                    (at_c_p1)

                    ; #53879: <==negation-removal== 63207 (pos)
                    (not (at_c_p9))

                    ; #54495: <==negation-removal== 64189 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #17988: origin
                    (at_c_p2)

                    ; #63207: origin
                    (not_at_c_p9)

                    ; #53879: <==negation-removal== 63207 (pos)
                    (not (at_c_p9))

                    ; #71246: <==negation-removal== 17988 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #63207: origin
                    (not_at_c_p9)

                    ; #64778: origin
                    (at_c_p3)

                    ; #53879: <==negation-removal== 63207 (pos)
                    (not (at_c_p9))

                    ; #87266: <==negation-removal== 64778 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #63207: origin
                    (not_at_c_p9)

                    ; #67634: origin
                    (at_c_p4)

                    ; #53879: <==negation-removal== 63207 (pos)
                    (not (at_c_p9))

                    ; #56303: <==negation-removal== 67634 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #25175: origin
                    (at_c_p5)

                    ; #63207: origin
                    (not_at_c_p9)

                    ; #10438: <==negation-removal== 25175 (pos)
                    (not (not_at_c_p5))

                    ; #53879: <==negation-removal== 63207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #13895: origin
                    (at_c_p6)

                    ; #63207: origin
                    (not_at_c_p9)

                    ; #31286: <==negation-removal== 13895 (pos)
                    (not (not_at_c_p6))

                    ; #53879: <==negation-removal== 63207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #51764: origin
                    (at_c_p7)

                    ; #63207: origin
                    (not_at_c_p9)

                    ; #53879: <==negation-removal== 63207 (pos)
                    (not (at_c_p9))

                    ; #95495: <==negation-removal== 51764 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #62742: origin
                    (at_c_p8)

                    ; #63207: origin
                    (not_at_c_p9)

                    ; #13207: <==negation-removal== 62742 (pos)
                    (not (not_at_c_p8))

                    ; #53879: <==negation-removal== 63207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #53879: origin
                    (at_c_p9)

                    ; #63207: origin
                    (not_at_c_p9)

                    ; #53879: <==negation-removal== 63207 (pos)
                    (not (at_c_p9))

                    ; #63207: <==negation-removal== 53879 (pos)
                    (not (not_at_c_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #29334: origin
                    (at_d_p1)

                    ; #99404: origin
                    (not_at_d_p1)

                    ; #29334: <==negation-removal== 99404 (pos)
                    (not (at_d_p1))

                    ; #99404: <==negation-removal== 29334 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #56020: origin
                    (at_d_p2)

                    ; #99404: origin
                    (not_at_d_p1)

                    ; #29334: <==negation-removal== 99404 (pos)
                    (not (at_d_p1))

                    ; #53390: <==negation-removal== 56020 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (at_d_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #27212: origin
                    (at_d_p3)

                    ; #99404: origin
                    (not_at_d_p1)

                    ; #29334: <==negation-removal== 99404 (pos)
                    (not (at_d_p1))

                    ; #82860: <==negation-removal== 27212 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #50750: origin
                    (at_d_p4)

                    ; #99404: origin
                    (not_at_d_p1)

                    ; #29334: <==negation-removal== 99404 (pos)
                    (not (at_d_p1))

                    ; #76489: <==negation-removal== 50750 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1))
        :effect (and
                    ; #55986: origin
                    (at_d_p5)

                    ; #99404: origin
                    (not_at_d_p1)

                    ; #29334: <==negation-removal== 99404 (pos)
                    (not (at_d_p1))

                    ; #41320: <==negation-removal== 55986 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1))
        :effect (and
                    ; #10008: origin
                    (at_d_p6)

                    ; #99404: origin
                    (not_at_d_p1)

                    ; #26373: <==negation-removal== 10008 (pos)
                    (not (not_at_d_p6))

                    ; #29334: <==negation-removal== 99404 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #44652: origin
                    (at_d_p7)

                    ; #99404: origin
                    (not_at_d_p1)

                    ; #29334: <==negation-removal== 99404 (pos)
                    (not (at_d_p1))

                    ; #87794: <==negation-removal== 44652 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #45129: origin
                    (at_d_p8)

                    ; #99404: origin
                    (not_at_d_p1)

                    ; #29334: <==negation-removal== 99404 (pos)
                    (not (at_d_p1))

                    ; #38924: <==negation-removal== 45129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #76431: origin
                    (at_d_p9)

                    ; #99404: origin
                    (not_at_d_p1)

                    ; #29334: <==negation-removal== 99404 (pos)
                    (not (at_d_p1))

                    ; #61573: <==negation-removal== 76431 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #29334: origin
                    (at_d_p1)

                    ; #53390: origin
                    (not_at_d_p2)

                    ; #56020: <==negation-removal== 53390 (pos)
                    (not (at_d_p2))

                    ; #99404: <==negation-removal== 29334 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #53390: origin
                    (not_at_d_p2)

                    ; #56020: origin
                    (at_d_p2)

                    ; #53390: <==negation-removal== 56020 (pos)
                    (not (not_at_d_p2))

                    ; #56020: <==negation-removal== 53390 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #27212: origin
                    (at_d_p3)

                    ; #53390: origin
                    (not_at_d_p2)

                    ; #56020: <==negation-removal== 53390 (pos)
                    (not (at_d_p2))

                    ; #82860: <==negation-removal== 27212 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #50750: origin
                    (at_d_p4)

                    ; #53390: origin
                    (not_at_d_p2)

                    ; #56020: <==negation-removal== 53390 (pos)
                    (not (at_d_p2))

                    ; #76489: <==negation-removal== 50750 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #53390: origin
                    (not_at_d_p2)

                    ; #55986: origin
                    (at_d_p5)

                    ; #41320: <==negation-removal== 55986 (pos)
                    (not (not_at_d_p5))

                    ; #56020: <==negation-removal== 53390 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #10008: origin
                    (at_d_p6)

                    ; #53390: origin
                    (not_at_d_p2)

                    ; #26373: <==negation-removal== 10008 (pos)
                    (not (not_at_d_p6))

                    ; #56020: <==negation-removal== 53390 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #44652: origin
                    (at_d_p7)

                    ; #53390: origin
                    (not_at_d_p2)

                    ; #56020: <==negation-removal== 53390 (pos)
                    (not (at_d_p2))

                    ; #87794: <==negation-removal== 44652 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #45129: origin
                    (at_d_p8)

                    ; #53390: origin
                    (not_at_d_p2)

                    ; #38924: <==negation-removal== 45129 (pos)
                    (not (not_at_d_p8))

                    ; #56020: <==negation-removal== 53390 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #53390: origin
                    (not_at_d_p2)

                    ; #76431: origin
                    (at_d_p9)

                    ; #56020: <==negation-removal== 53390 (pos)
                    (not (at_d_p2))

                    ; #61573: <==negation-removal== 76431 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (at_d_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #29334: origin
                    (at_d_p1)

                    ; #82860: origin
                    (not_at_d_p3)

                    ; #27212: <==negation-removal== 82860 (pos)
                    (not (at_d_p3))

                    ; #99404: <==negation-removal== 29334 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p2
        :precondition (and (at_d_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #56020: origin
                    (at_d_p2)

                    ; #82860: origin
                    (not_at_d_p3)

                    ; #27212: <==negation-removal== 82860 (pos)
                    (not (at_d_p3))

                    ; #53390: <==negation-removal== 56020 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #27212: origin
                    (at_d_p3)

                    ; #82860: origin
                    (not_at_d_p3)

                    ; #27212: <==negation-removal== 82860 (pos)
                    (not (at_d_p3))

                    ; #82860: <==negation-removal== 27212 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #50750: origin
                    (at_d_p4)

                    ; #82860: origin
                    (not_at_d_p3)

                    ; #27212: <==negation-removal== 82860 (pos)
                    (not (at_d_p3))

                    ; #76489: <==negation-removal== 50750 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #55986: origin
                    (at_d_p5)

                    ; #82860: origin
                    (not_at_d_p3)

                    ; #27212: <==negation-removal== 82860 (pos)
                    (not (at_d_p3))

                    ; #41320: <==negation-removal== 55986 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #10008: origin
                    (at_d_p6)

                    ; #82860: origin
                    (not_at_d_p3)

                    ; #26373: <==negation-removal== 10008 (pos)
                    (not (not_at_d_p6))

                    ; #27212: <==negation-removal== 82860 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #44652: origin
                    (at_d_p7)

                    ; #82860: origin
                    (not_at_d_p3)

                    ; #27212: <==negation-removal== 82860 (pos)
                    (not (at_d_p3))

                    ; #87794: <==negation-removal== 44652 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (at_d_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #45129: origin
                    (at_d_p8)

                    ; #82860: origin
                    (not_at_d_p3)

                    ; #27212: <==negation-removal== 82860 (pos)
                    (not (at_d_p3))

                    ; #38924: <==negation-removal== 45129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (at_d_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #76431: origin
                    (at_d_p9)

                    ; #82860: origin
                    (not_at_d_p3)

                    ; #27212: <==negation-removal== 82860 (pos)
                    (not (at_d_p3))

                    ; #61573: <==negation-removal== 76431 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #29334: origin
                    (at_d_p1)

                    ; #76489: origin
                    (not_at_d_p4)

                    ; #50750: <==negation-removal== 76489 (pos)
                    (not (at_d_p4))

                    ; #99404: <==negation-removal== 29334 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #56020: origin
                    (at_d_p2)

                    ; #76489: origin
                    (not_at_d_p4)

                    ; #50750: <==negation-removal== 76489 (pos)
                    (not (at_d_p4))

                    ; #53390: <==negation-removal== 56020 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #27212: origin
                    (at_d_p3)

                    ; #76489: origin
                    (not_at_d_p4)

                    ; #50750: <==negation-removal== 76489 (pos)
                    (not (at_d_p4))

                    ; #82860: <==negation-removal== 27212 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #50750: origin
                    (at_d_p4)

                    ; #76489: origin
                    (not_at_d_p4)

                    ; #50750: <==negation-removal== 76489 (pos)
                    (not (at_d_p4))

                    ; #76489: <==negation-removal== 50750 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #55986: origin
                    (at_d_p5)

                    ; #76489: origin
                    (not_at_d_p4)

                    ; #41320: <==negation-removal== 55986 (pos)
                    (not (not_at_d_p5))

                    ; #50750: <==negation-removal== 76489 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #10008: origin
                    (at_d_p6)

                    ; #76489: origin
                    (not_at_d_p4)

                    ; #26373: <==negation-removal== 10008 (pos)
                    (not (not_at_d_p6))

                    ; #50750: <==negation-removal== 76489 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #44652: origin
                    (at_d_p7)

                    ; #76489: origin
                    (not_at_d_p4)

                    ; #50750: <==negation-removal== 76489 (pos)
                    (not (at_d_p4))

                    ; #87794: <==negation-removal== 44652 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #45129: origin
                    (at_d_p8)

                    ; #76489: origin
                    (not_at_d_p4)

                    ; #38924: <==negation-removal== 45129 (pos)
                    (not (not_at_d_p8))

                    ; #50750: <==negation-removal== 76489 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #76431: origin
                    (at_d_p9)

                    ; #76489: origin
                    (not_at_d_p4)

                    ; #50750: <==negation-removal== 76489 (pos)
                    (not (at_d_p4))

                    ; #61573: <==negation-removal== 76431 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (at_d_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #29334: origin
                    (at_d_p1)

                    ; #41320: origin
                    (not_at_d_p5)

                    ; #55986: <==negation-removal== 41320 (pos)
                    (not (at_d_p5))

                    ; #99404: <==negation-removal== 29334 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #41320: origin
                    (not_at_d_p5)

                    ; #56020: origin
                    (at_d_p2)

                    ; #53390: <==negation-removal== 56020 (pos)
                    (not (not_at_d_p2))

                    ; #55986: <==negation-removal== 41320 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #27212: origin
                    (at_d_p3)

                    ; #41320: origin
                    (not_at_d_p5)

                    ; #55986: <==negation-removal== 41320 (pos)
                    (not (at_d_p5))

                    ; #82860: <==negation-removal== 27212 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #41320: origin
                    (not_at_d_p5)

                    ; #50750: origin
                    (at_d_p4)

                    ; #55986: <==negation-removal== 41320 (pos)
                    (not (at_d_p5))

                    ; #76489: <==negation-removal== 50750 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #41320: origin
                    (not_at_d_p5)

                    ; #55986: origin
                    (at_d_p5)

                    ; #41320: <==negation-removal== 55986 (pos)
                    (not (not_at_d_p5))

                    ; #55986: <==negation-removal== 41320 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #10008: origin
                    (at_d_p6)

                    ; #41320: origin
                    (not_at_d_p5)

                    ; #26373: <==negation-removal== 10008 (pos)
                    (not (not_at_d_p6))

                    ; #55986: <==negation-removal== 41320 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #41320: origin
                    (not_at_d_p5)

                    ; #44652: origin
                    (at_d_p7)

                    ; #55986: <==negation-removal== 41320 (pos)
                    (not (at_d_p5))

                    ; #87794: <==negation-removal== 44652 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #41320: origin
                    (not_at_d_p5)

                    ; #45129: origin
                    (at_d_p8)

                    ; #38924: <==negation-removal== 45129 (pos)
                    (not (not_at_d_p8))

                    ; #55986: <==negation-removal== 41320 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #41320: origin
                    (not_at_d_p5)

                    ; #76431: origin
                    (at_d_p9)

                    ; #55986: <==negation-removal== 41320 (pos)
                    (not (at_d_p5))

                    ; #61573: <==negation-removal== 76431 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #26373: origin
                    (not_at_d_p6)

                    ; #29334: origin
                    (at_d_p1)

                    ; #10008: <==negation-removal== 26373 (pos)
                    (not (at_d_p6))

                    ; #99404: <==negation-removal== 29334 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #26373: origin
                    (not_at_d_p6)

                    ; #56020: origin
                    (at_d_p2)

                    ; #10008: <==negation-removal== 26373 (pos)
                    (not (at_d_p6))

                    ; #53390: <==negation-removal== 56020 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6))
        :effect (and
                    ; #26373: origin
                    (not_at_d_p6)

                    ; #27212: origin
                    (at_d_p3)

                    ; #10008: <==negation-removal== 26373 (pos)
                    (not (at_d_p6))

                    ; #82860: <==negation-removal== 27212 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6))
        :effect (and
                    ; #26373: origin
                    (not_at_d_p6)

                    ; #50750: origin
                    (at_d_p4)

                    ; #10008: <==negation-removal== 26373 (pos)
                    (not (at_d_p6))

                    ; #76489: <==negation-removal== 50750 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #26373: origin
                    (not_at_d_p6)

                    ; #55986: origin
                    (at_d_p5)

                    ; #10008: <==negation-removal== 26373 (pos)
                    (not (at_d_p6))

                    ; #41320: <==negation-removal== 55986 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #10008: origin
                    (at_d_p6)

                    ; #26373: origin
                    (not_at_d_p6)

                    ; #10008: <==negation-removal== 26373 (pos)
                    (not (at_d_p6))

                    ; #26373: <==negation-removal== 10008 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #26373: origin
                    (not_at_d_p6)

                    ; #44652: origin
                    (at_d_p7)

                    ; #10008: <==negation-removal== 26373 (pos)
                    (not (at_d_p6))

                    ; #87794: <==negation-removal== 44652 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #26373: origin
                    (not_at_d_p6)

                    ; #45129: origin
                    (at_d_p8)

                    ; #10008: <==negation-removal== 26373 (pos)
                    (not (at_d_p6))

                    ; #38924: <==negation-removal== 45129 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #26373: origin
                    (not_at_d_p6)

                    ; #76431: origin
                    (at_d_p9)

                    ; #10008: <==negation-removal== 26373 (pos)
                    (not (at_d_p6))

                    ; #61573: <==negation-removal== 76431 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #29334: origin
                    (at_d_p1)

                    ; #87794: origin
                    (not_at_d_p7)

                    ; #44652: <==negation-removal== 87794 (pos)
                    (not (at_d_p7))

                    ; #99404: <==negation-removal== 29334 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #56020: origin
                    (at_d_p2)

                    ; #87794: origin
                    (not_at_d_p7)

                    ; #44652: <==negation-removal== 87794 (pos)
                    (not (at_d_p7))

                    ; #53390: <==negation-removal== 56020 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #27212: origin
                    (at_d_p3)

                    ; #87794: origin
                    (not_at_d_p7)

                    ; #44652: <==negation-removal== 87794 (pos)
                    (not (at_d_p7))

                    ; #82860: <==negation-removal== 27212 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #50750: origin
                    (at_d_p4)

                    ; #87794: origin
                    (not_at_d_p7)

                    ; #44652: <==negation-removal== 87794 (pos)
                    (not (at_d_p7))

                    ; #76489: <==negation-removal== 50750 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #55986: origin
                    (at_d_p5)

                    ; #87794: origin
                    (not_at_d_p7)

                    ; #41320: <==negation-removal== 55986 (pos)
                    (not (not_at_d_p5))

                    ; #44652: <==negation-removal== 87794 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7))
        :effect (and
                    ; #10008: origin
                    (at_d_p6)

                    ; #87794: origin
                    (not_at_d_p7)

                    ; #26373: <==negation-removal== 10008 (pos)
                    (not (not_at_d_p6))

                    ; #44652: <==negation-removal== 87794 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #44652: origin
                    (at_d_p7)

                    ; #87794: origin
                    (not_at_d_p7)

                    ; #44652: <==negation-removal== 87794 (pos)
                    (not (at_d_p7))

                    ; #87794: <==negation-removal== 44652 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #45129: origin
                    (at_d_p8)

                    ; #87794: origin
                    (not_at_d_p7)

                    ; #38924: <==negation-removal== 45129 (pos)
                    (not (not_at_d_p8))

                    ; #44652: <==negation-removal== 87794 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #76431: origin
                    (at_d_p9)

                    ; #87794: origin
                    (not_at_d_p7)

                    ; #44652: <==negation-removal== 87794 (pos)
                    (not (at_d_p7))

                    ; #61573: <==negation-removal== 76431 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #29334: origin
                    (at_d_p1)

                    ; #38924: origin
                    (not_at_d_p8)

                    ; #45129: <==negation-removal== 38924 (pos)
                    (not (at_d_p8))

                    ; #99404: <==negation-removal== 29334 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #38924: origin
                    (not_at_d_p8)

                    ; #56020: origin
                    (at_d_p2)

                    ; #45129: <==negation-removal== 38924 (pos)
                    (not (at_d_p8))

                    ; #53390: <==negation-removal== 56020 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #27212: origin
                    (at_d_p3)

                    ; #38924: origin
                    (not_at_d_p8)

                    ; #45129: <==negation-removal== 38924 (pos)
                    (not (at_d_p8))

                    ; #82860: <==negation-removal== 27212 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #38924: origin
                    (not_at_d_p8)

                    ; #50750: origin
                    (at_d_p4)

                    ; #45129: <==negation-removal== 38924 (pos)
                    (not (at_d_p8))

                    ; #76489: <==negation-removal== 50750 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #38924: origin
                    (not_at_d_p8)

                    ; #55986: origin
                    (at_d_p5)

                    ; #41320: <==negation-removal== 55986 (pos)
                    (not (not_at_d_p5))

                    ; #45129: <==negation-removal== 38924 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #10008: origin
                    (at_d_p6)

                    ; #38924: origin
                    (not_at_d_p8)

                    ; #26373: <==negation-removal== 10008 (pos)
                    (not (not_at_d_p6))

                    ; #45129: <==negation-removal== 38924 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #38924: origin
                    (not_at_d_p8)

                    ; #44652: origin
                    (at_d_p7)

                    ; #45129: <==negation-removal== 38924 (pos)
                    (not (at_d_p8))

                    ; #87794: <==negation-removal== 44652 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #38924: origin
                    (not_at_d_p8)

                    ; #45129: origin
                    (at_d_p8)

                    ; #38924: <==negation-removal== 45129 (pos)
                    (not (not_at_d_p8))

                    ; #45129: <==negation-removal== 38924 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #38924: origin
                    (not_at_d_p8)

                    ; #76431: origin
                    (at_d_p9)

                    ; #45129: <==negation-removal== 38924 (pos)
                    (not (at_d_p8))

                    ; #61573: <==negation-removal== 76431 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #29334: origin
                    (at_d_p1)

                    ; #61573: origin
                    (not_at_d_p9)

                    ; #76431: <==negation-removal== 61573 (pos)
                    (not (at_d_p9))

                    ; #99404: <==negation-removal== 29334 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9))
        :effect (and
                    ; #56020: origin
                    (at_d_p2)

                    ; #61573: origin
                    (not_at_d_p9)

                    ; #53390: <==negation-removal== 56020 (pos)
                    (not (not_at_d_p2))

                    ; #76431: <==negation-removal== 61573 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9))
        :effect (and
                    ; #27212: origin
                    (at_d_p3)

                    ; #61573: origin
                    (not_at_d_p9)

                    ; #76431: <==negation-removal== 61573 (pos)
                    (not (at_d_p9))

                    ; #82860: <==negation-removal== 27212 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #50750: origin
                    (at_d_p4)

                    ; #61573: origin
                    (not_at_d_p9)

                    ; #76431: <==negation-removal== 61573 (pos)
                    (not (at_d_p9))

                    ; #76489: <==negation-removal== 50750 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #55986: origin
                    (at_d_p5)

                    ; #61573: origin
                    (not_at_d_p9)

                    ; #41320: <==negation-removal== 55986 (pos)
                    (not (not_at_d_p5))

                    ; #76431: <==negation-removal== 61573 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #10008: origin
                    (at_d_p6)

                    ; #61573: origin
                    (not_at_d_p9)

                    ; #26373: <==negation-removal== 10008 (pos)
                    (not (not_at_d_p6))

                    ; #76431: <==negation-removal== 61573 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #44652: origin
                    (at_d_p7)

                    ; #61573: origin
                    (not_at_d_p9)

                    ; #76431: <==negation-removal== 61573 (pos)
                    (not (at_d_p9))

                    ; #87794: <==negation-removal== 44652 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #45129: origin
                    (at_d_p8)

                    ; #61573: origin
                    (not_at_d_p9)

                    ; #38924: <==negation-removal== 45129 (pos)
                    (not (not_at_d_p8))

                    ; #76431: <==negation-removal== 61573 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #61573: origin
                    (not_at_d_p9)

                    ; #76431: origin
                    (at_d_p9)

                    ; #61573: <==negation-removal== 76431 (pos)
                    (not (not_at_d_p9))

                    ; #76431: <==negation-removal== 61573 (pos)
                    (not (at_d_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #19480: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #21431: <==closure== 64820 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #22980: <==commonly_known== 87817 (pos)
                    (Ba_checked_p1)

                    ; #25977: <==closure== 33137 (pos)
                    (Pb_checked_p1)

                    ; #33137: <==commonly_known== 87817 (pos)
                    (Bb_checked_p1)

                    ; #42596: <==closure== 22980 (pos)
                    (Pa_checked_p1)

                    ; #45759: <==closure== 70455 (pos)
                    (Pc_checked_p1)

                    ; #48689: <==commonly_known== 87817 (pos)
                    (Bd_checked_p1)

                    ; #55092: <==closure== 19480 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #64820: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #70455: <==commonly_known== 87817 (pos)
                    (Bc_checked_p1)

                    ; #76161: <==closure== 48689 (pos)
                    (Pd_checked_p1)

                    ; #87817: origin
                    (checked_p1)

                    ; #14088: <==negation-removal== 70455 (pos)
                    (not (Pc_not_checked_p1))

                    ; #22858: <==negation-removal== 42596 (pos)
                    (not (Ba_not_checked_p1))

                    ; #33777: <==negation-removal== 55092 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #36071: <==unclosure== 58321 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #42796: <==negation-removal== 64820 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #43766: <==unclosure== 73165 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #50577: <==negation-removal== 48689 (pos)
                    (not (Pd_not_checked_p1))

                    ; #51892: <==negation-removal== 45759 (pos)
                    (not (Bc_not_checked_p1))

                    ; #57235: <==negation-removal== 33137 (pos)
                    (not (Pb_not_checked_p1))

                    ; #58321: <==uncertain_firing== 64820 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #67143: <==negation-removal== 22980 (pos)
                    (not (Pa_not_checked_p1))

                    ; #73165: <==uncertain_firing== 19480 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #73617: <==negation-removal== 25977 (pos)
                    (not (Bb_not_checked_p1))

                    ; #74568: <==negation-removal== 21431 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #79940: <==negation-removal== 87817 (pos)
                    (not (not_checked_p1))

                    ; #86748: <==negation-removal== 76161 (pos)
                    (not (Bd_not_checked_p1))

                    ; #91639: <==negation-removal== 19480 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #31681: <==closure== 85234 (pos)
                    (Pc_checked_p2)

                    ; #32238: <==closure== 69991 (pos)
                    (Pd_checked_p2)

                    ; #42437: <==closure== 66400 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #50083: <==commonly_known== 99925 (pos)
                    (Bb_checked_p2)

                    ; #66400: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #69991: <==commonly_known== 99925 (pos)
                    (Bd_checked_p2)

                    ; #75105: <==closure== 83677 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #81915: <==commonly_known== 99925 (pos)
                    (Ba_checked_p2)

                    ; #83015: <==closure== 50083 (pos)
                    (Pb_checked_p2)

                    ; #83677: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #85234: <==commonly_known== 99925 (pos)
                    (Bc_checked_p2)

                    ; #90687: <==closure== 81915 (pos)
                    (Pa_checked_p2)

                    ; #99925: origin
                    (checked_p2)

                    ; #13952: <==negation-removal== 32238 (pos)
                    (not (Bd_not_checked_p2))

                    ; #14607: <==negation-removal== 66400 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #31562: <==negation-removal== 31681 (pos)
                    (not (Bc_not_checked_p2))

                    ; #35025: <==negation-removal== 50083 (pos)
                    (not (Pb_not_checked_p2))

                    ; #44192: <==unclosure== 66847 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #47285: <==negation-removal== 83677 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #50576: <==negation-removal== 81915 (pos)
                    (not (Pa_not_checked_p2))

                    ; #54158: <==unclosure== 68571 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #54524: <==negation-removal== 90687 (pos)
                    (not (Ba_not_checked_p2))

                    ; #57093: <==negation-removal== 99925 (pos)
                    (not (not_checked_p2))

                    ; #58217: <==negation-removal== 83015 (pos)
                    (not (Bb_not_checked_p2))

                    ; #64925: <==negation-removal== 75105 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #66847: <==uncertain_firing== 66400 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #68571: <==uncertain_firing== 83677 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #72123: <==negation-removal== 85234 (pos)
                    (not (Pc_not_checked_p2))

                    ; #75806: <==negation-removal== 42437 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #78919: <==negation-removal== 69991 (pos)
                    (not (Pd_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #26254: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #26374: <==commonly_known== 77379 (pos)
                    (Bb_checked_p3)

                    ; #34796: <==closure== 26254 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #35803: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #39463: <==closure== 26374 (pos)
                    (Pb_checked_p3)

                    ; #41672: <==closure== 74575 (pos)
                    (Pc_checked_p3)

                    ; #44506: <==closure== 35803 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #48515: <==commonly_known== 77379 (pos)
                    (Ba_checked_p3)

                    ; #69827: <==closure== 78871 (pos)
                    (Pd_checked_p3)

                    ; #74575: <==commonly_known== 77379 (pos)
                    (Bc_checked_p3)

                    ; #77379: origin
                    (checked_p3)

                    ; #78871: <==commonly_known== 77379 (pos)
                    (Bd_checked_p3)

                    ; #84181: <==closure== 48515 (pos)
                    (Pa_checked_p3)

                    ; #11598: <==negation-removal== 41672 (pos)
                    (not (Bc_not_checked_p3))

                    ; #30081: <==negation-removal== 34796 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #31275: <==negation-removal== 69827 (pos)
                    (not (Bd_not_checked_p3))

                    ; #34262: <==negation-removal== 48515 (pos)
                    (not (Pa_not_checked_p3))

                    ; #39012: <==uncertain_firing== 35803 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #58636: <==negation-removal== 84181 (pos)
                    (not (Ba_not_checked_p3))

                    ; #70123: <==unclosure== 39012 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #73307: <==negation-removal== 35803 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #74972: <==negation-removal== 26254 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #76087: <==unclosure== 77636 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #77089: <==negation-removal== 78871 (pos)
                    (not (Pd_not_checked_p3))

                    ; #77636: <==uncertain_firing== 26254 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #78264: <==negation-removal== 77379 (pos)
                    (not (not_checked_p3))

                    ; #80080: <==negation-removal== 26374 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80253: <==negation-removal== 39463 (pos)
                    (not (Bb_not_checked_p3))

                    ; #85206: <==negation-removal== 74575 (pos)
                    (not (Pc_not_checked_p3))

                    ; #90958: <==negation-removal== 44506 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #17437: <==commonly_known== 60093 (pos)
                    (Ba_checked_p4)

                    ; #19090: <==closure== 49967 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #26370: <==commonly_known== 60093 (pos)
                    (Bc_checked_p4)

                    ; #32753: <==commonly_known== 60093 (pos)
                    (Bb_checked_p4)

                    ; #39736: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #41926: <==closure== 17437 (pos)
                    (Pa_checked_p4)

                    ; #49967: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #50551: <==commonly_known== 60093 (pos)
                    (Bd_checked_p4)

                    ; #60093: origin
                    (checked_p4)

                    ; #64149: <==closure== 39736 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #75399: <==closure== 32753 (pos)
                    (Pb_checked_p4)

                    ; #85550: <==closure== 26370 (pos)
                    (Pc_checked_p4)

                    ; #87426: <==closure== 50551 (pos)
                    (Pd_checked_p4)

                    ; #14308: <==unclosure== 62405 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #23615: <==uncertain_firing== 39736 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #29987: <==negation-removal== 50551 (pos)
                    (not (Pd_not_checked_p4))

                    ; #39764: <==negation-removal== 60093 (pos)
                    (not (not_checked_p4))

                    ; #40569: <==unclosure== 23615 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #40643: <==negation-removal== 39736 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #43726: <==negation-removal== 49967 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #46083: <==negation-removal== 26370 (pos)
                    (not (Pc_not_checked_p4))

                    ; #50792: <==negation-removal== 64149 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #62210: <==negation-removal== 85550 (pos)
                    (not (Bc_not_checked_p4))

                    ; #62405: <==uncertain_firing== 49967 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #64646: <==negation-removal== 19090 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #75461: <==negation-removal== 17437 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77036: <==negation-removal== 41926 (pos)
                    (not (Ba_not_checked_p4))

                    ; #80039: <==negation-removal== 87426 (pos)
                    (not (Bd_not_checked_p4))

                    ; #88665: <==negation-removal== 32753 (pos)
                    (not (Pb_not_checked_p4))

                    ; #89390: <==negation-removal== 75399 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12230: <==closure== 60287 (pos)
                    (Pb_checked_p5)

                    ; #18919: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #22127: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #24921: <==closure== 39173 (pos)
                    (Pc_checked_p5)

                    ; #39173: <==commonly_known== 88461 (pos)
                    (Bc_checked_p5)

                    ; #55287: <==closure== 78689 (pos)
                    (Pd_checked_p5)

                    ; #60287: <==commonly_known== 88461 (pos)
                    (Bb_checked_p5)

                    ; #62210: <==closure== 88897 (pos)
                    (Pa_checked_p5)

                    ; #64188: <==closure== 18919 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #78689: <==commonly_known== 88461 (pos)
                    (Bd_checked_p5)

                    ; #88461: origin
                    (checked_p5)

                    ; #88897: <==commonly_known== 88461 (pos)
                    (Ba_checked_p5)

                    ; #94808: <==closure== 22127 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #13620: <==negation-removal== 22127 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #19147: <==unclosure== 20427 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #20427: <==uncertain_firing== 22127 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #20921: <==uncertain_firing== 18919 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #28207: <==negation-removal== 62210 (pos)
                    (not (Ba_not_checked_p5))

                    ; #31899: <==negation-removal== 24921 (pos)
                    (not (Bc_not_checked_p5))

                    ; #33745: <==negation-removal== 94808 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #34741: <==negation-removal== 88461 (pos)
                    (not (not_checked_p5))

                    ; #38881: <==negation-removal== 60287 (pos)
                    (not (Pb_not_checked_p5))

                    ; #46195: <==negation-removal== 88897 (pos)
                    (not (Pa_not_checked_p5))

                    ; #48876: <==negation-removal== 64188 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #52666: <==negation-removal== 12230 (pos)
                    (not (Bb_not_checked_p5))

                    ; #62422: <==negation-removal== 39173 (pos)
                    (not (Pc_not_checked_p5))

                    ; #70025: <==negation-removal== 78689 (pos)
                    (not (Pd_not_checked_p5))

                    ; #70107: <==negation-removal== 55287 (pos)
                    (not (Bd_not_checked_p5))

                    ; #92573: <==negation-removal== 18919 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #93717: <==unclosure== 20921 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #24863: <==closure== 64621 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #46688: <==commonly_known== 62156 (pos)
                    (Bd_checked_p6)

                    ; #52502: <==commonly_known== 62156 (pos)
                    (Bb_checked_p6)

                    ; #57402: <==closure== 87586 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #62156: origin
                    (checked_p6)

                    ; #64621: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #70231: <==commonly_known== 62156 (pos)
                    (Ba_checked_p6)

                    ; #77095: <==closure== 70231 (pos)
                    (Pa_checked_p6)

                    ; #82874: <==closure== 46688 (pos)
                    (Pd_checked_p6)

                    ; #83873: <==closure== 88674 (pos)
                    (Pc_checked_p6)

                    ; #86006: <==closure== 52502 (pos)
                    (Pb_checked_p6)

                    ; #87586: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #88674: <==commonly_known== 62156 (pos)
                    (Bc_checked_p6)

                    ; #15331: <==negation-removal== 88674 (pos)
                    (not (Pc_not_checked_p6))

                    ; #15724: <==negation-removal== 57402 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #19217: <==negation-removal== 83873 (pos)
                    (not (Bc_not_checked_p6))

                    ; #21997: <==negation-removal== 70231 (pos)
                    (not (Pa_not_checked_p6))

                    ; #24452: <==negation-removal== 82874 (pos)
                    (not (Bd_not_checked_p6))

                    ; #29427: <==negation-removal== 86006 (pos)
                    (not (Bb_not_checked_p6))

                    ; #29479: <==uncertain_firing== 64621 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #52525: <==uncertain_firing== 87586 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #58095: <==unclosure== 29479 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #58667: <==negation-removal== 64621 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #68714: <==negation-removal== 77095 (pos)
                    (not (Ba_not_checked_p6))

                    ; #70034: <==negation-removal== 87586 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #73946: <==negation-removal== 52502 (pos)
                    (not (Pb_not_checked_p6))

                    ; #82536: <==negation-removal== 24863 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #83358: <==unclosure== 52525 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #86083: <==negation-removal== 62156 (pos)
                    (not (not_checked_p6))

                    ; #91186: <==negation-removal== 46688 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #20530: <==commonly_known== 41785 (pos)
                    (Bc_checked_p7)

                    ; #22925: <==closure== 86000 (pos)
                    (Pb_checked_p7)

                    ; #27620: <==closure== 44183 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #29865: <==closure== 67900 (pos)
                    (Pa_checked_p7)

                    ; #40862: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #41785: origin
                    (checked_p7)

                    ; #43707: <==commonly_known== 41785 (pos)
                    (Bd_checked_p7)

                    ; #44183: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #44932: <==closure== 40862 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #67900: <==commonly_known== 41785 (pos)
                    (Ba_checked_p7)

                    ; #73766: <==closure== 20530 (pos)
                    (Pc_checked_p7)

                    ; #86000: <==commonly_known== 41785 (pos)
                    (Bb_checked_p7)

                    ; #91029: <==closure== 43707 (pos)
                    (Pd_checked_p7)

                    ; #10714: <==negation-removal== 20530 (pos)
                    (not (Pc_not_checked_p7))

                    ; #41001: <==negation-removal== 67900 (pos)
                    (not (Pa_not_checked_p7))

                    ; #45037: <==negation-removal== 43707 (pos)
                    (not (Pd_not_checked_p7))

                    ; #46636: <==negation-removal== 91029 (pos)
                    (not (Bd_not_checked_p7))

                    ; #48704: <==negation-removal== 44183 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #54273: <==negation-removal== 41785 (pos)
                    (not (not_checked_p7))

                    ; #54281: <==negation-removal== 29865 (pos)
                    (not (Ba_not_checked_p7))

                    ; #59383: <==negation-removal== 44932 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #65282: <==negation-removal== 22925 (pos)
                    (not (Bb_not_checked_p7))

                    ; #66593: <==negation-removal== 40862 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #67074: <==unclosure== 77421 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #69400: <==negation-removal== 27620 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #74394: <==uncertain_firing== 40862 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #77421: <==uncertain_firing== 44183 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #81924: <==negation-removal== 73766 (pos)
                    (not (Bc_not_checked_p7))

                    ; #86203: <==unclosure== 74394 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #91069: <==negation-removal== 86000 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #20231: <==closure== 55120 (pos)
                    (Pa_checked_p8)

                    ; #23406: <==closure== 57952 (pos)
                    (Pd_checked_p8)

                    ; #30734: <==closure== 63251 (pos)
                    (Pb_checked_p8)

                    ; #49069: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #55120: <==commonly_known== 83329 (pos)
                    (Ba_checked_p8)

                    ; #57952: <==commonly_known== 83329 (pos)
                    (Bd_checked_p8)

                    ; #63251: <==commonly_known== 83329 (pos)
                    (Bb_checked_p8)

                    ; #72859: <==commonly_known== 83329 (pos)
                    (Bc_checked_p8)

                    ; #74100: <==closure== 72859 (pos)
                    (Pc_checked_p8)

                    ; #79398: <==closure== 49069 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #79508: <==closure== 85553 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #83329: origin
                    (checked_p8)

                    ; #85553: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #21474: <==unclosure== 67784 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #22186: <==negation-removal== 83329 (pos)
                    (not (not_checked_p8))

                    ; #26656: <==negation-removal== 85553 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #26755: <==negation-removal== 63251 (pos)
                    (not (Pb_not_checked_p8))

                    ; #27423: <==negation-removal== 30734 (pos)
                    (not (Bb_not_checked_p8))

                    ; #33824: <==negation-removal== 57952 (pos)
                    (not (Pd_not_checked_p8))

                    ; #41715: <==negation-removal== 79398 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #46109: <==negation-removal== 72859 (pos)
                    (not (Pc_not_checked_p8))

                    ; #50461: <==negation-removal== 74100 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55400: <==uncertain_firing== 49069 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #67784: <==uncertain_firing== 85553 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78485: <==unclosure== 55400 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #80481: <==negation-removal== 79508 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #80652: <==negation-removal== 49069 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #85329: <==negation-removal== 23406 (pos)
                    (not (Bd_not_checked_p8))

                    ; #90936: <==negation-removal== 55120 (pos)
                    (not (Pa_not_checked_p8))

                    ; #94893: <==negation-removal== 20231 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #26072: <==closure== 48268 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #27485: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #32994: <==closure== 64388 (pos)
                    (Pd_checked_p9)

                    ; #33640: <==commonly_known== 96893 (pos)
                    (Bb_checked_p9)

                    ; #42164: <==closure== 27485 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #48268: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #48559: <==commonly_known== 96893 (pos)
                    (Ba_checked_p9)

                    ; #52351: <==closure== 33640 (pos)
                    (Pb_checked_p9)

                    ; #64388: <==commonly_known== 96893 (pos)
                    (Bd_checked_p9)

                    ; #66144: <==closure== 48559 (pos)
                    (Pa_checked_p9)

                    ; #70592: <==commonly_known== 96893 (pos)
                    (Bc_checked_p9)

                    ; #76183: <==closure== 70592 (pos)
                    (Pc_checked_p9)

                    ; #96893: origin
                    (checked_p9)

                    ; #18977: <==uncertain_firing== 48268 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #19588: <==negation-removal== 32994 (pos)
                    (not (Bd_not_checked_p9))

                    ; #22872: <==negation-removal== 96893 (pos)
                    (not (not_checked_p9))

                    ; #36495: <==negation-removal== 27485 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #38819: <==negation-removal== 66144 (pos)
                    (not (Ba_not_checked_p9))

                    ; #40414: <==negation-removal== 26072 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #46296: <==negation-removal== 70592 (pos)
                    (not (Pc_not_checked_p9))

                    ; #48850: <==unclosure== 18977 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #50348: <==negation-removal== 48268 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #54545: <==negation-removal== 76183 (pos)
                    (not (Bc_not_checked_p9))

                    ; #55271: <==negation-removal== 48559 (pos)
                    (not (Pa_not_checked_p9))

                    ; #65129: <==negation-removal== 64388 (pos)
                    (not (Pd_not_checked_p9))

                    ; #65690: <==negation-removal== 33640 (pos)
                    (not (Pb_not_checked_p9))

                    ; #67746: <==unclosure== 71500 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #71500: <==uncertain_firing== 27485 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #72446: <==negation-removal== 52351 (pos)
                    (not (Bb_not_checked_p9))

                    ; #75853: <==negation-removal== 42164 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #18213: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #22980: <==commonly_known== 87817 (pos)
                    (Ba_checked_p1)

                    ; #25977: <==closure== 33137 (pos)
                    (Pb_checked_p1)

                    ; #33137: <==commonly_known== 87817 (pos)
                    (Bb_checked_p1)

                    ; #42596: <==closure== 22980 (pos)
                    (Pa_checked_p1)

                    ; #45759: <==closure== 70455 (pos)
                    (Pc_checked_p1)

                    ; #48689: <==commonly_known== 87817 (pos)
                    (Bd_checked_p1)

                    ; #49276: <==closure== 18213 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #70455: <==commonly_known== 87817 (pos)
                    (Bc_checked_p1)

                    ; #76161: <==closure== 48689 (pos)
                    (Pd_checked_p1)

                    ; #76967: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #87817: origin
                    (checked_p1)

                    ; #91401: <==closure== 76967 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #13317: <==negation-removal== 76967 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #14088: <==negation-removal== 70455 (pos)
                    (not (Pc_not_checked_p1))

                    ; #20318: <==uncertain_firing== 18213 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #22858: <==negation-removal== 42596 (pos)
                    (not (Ba_not_checked_p1))

                    ; #25200: <==uncertain_firing== 76967 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #26003: <==negation-removal== 18213 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #32453: <==negation-removal== 49276 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #50577: <==negation-removal== 48689 (pos)
                    (not (Pd_not_checked_p1))

                    ; #51892: <==negation-removal== 45759 (pos)
                    (not (Bc_not_checked_p1))

                    ; #53208: <==negation-removal== 91401 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #57235: <==negation-removal== 33137 (pos)
                    (not (Pb_not_checked_p1))

                    ; #67143: <==negation-removal== 22980 (pos)
                    (not (Pa_not_checked_p1))

                    ; #68683: <==unclosure== 20318 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #73617: <==negation-removal== 25977 (pos)
                    (not (Bb_not_checked_p1))

                    ; #79940: <==negation-removal== 87817 (pos)
                    (not (not_checked_p1))

                    ; #85310: <==unclosure== 25200 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #86748: <==negation-removal== 76161 (pos)
                    (not (Bd_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #28686: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #31681: <==closure== 85234 (pos)
                    (Pc_checked_p2)

                    ; #32238: <==closure== 69991 (pos)
                    (Pd_checked_p2)

                    ; #50083: <==commonly_known== 99925 (pos)
                    (Bb_checked_p2)

                    ; #50381: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #60130: <==closure== 28686 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #61068: <==closure== 50381 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #69991: <==commonly_known== 99925 (pos)
                    (Bd_checked_p2)

                    ; #81915: <==commonly_known== 99925 (pos)
                    (Ba_checked_p2)

                    ; #83015: <==closure== 50083 (pos)
                    (Pb_checked_p2)

                    ; #85234: <==commonly_known== 99925 (pos)
                    (Bc_checked_p2)

                    ; #90687: <==closure== 81915 (pos)
                    (Pa_checked_p2)

                    ; #99925: origin
                    (checked_p2)

                    ; #13952: <==negation-removal== 32238 (pos)
                    (not (Bd_not_checked_p2))

                    ; #31562: <==negation-removal== 31681 (pos)
                    (not (Bc_not_checked_p2))

                    ; #35025: <==negation-removal== 50083 (pos)
                    (not (Pb_not_checked_p2))

                    ; #43928: <==uncertain_firing== 28686 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #50576: <==negation-removal== 81915 (pos)
                    (not (Pa_not_checked_p2))

                    ; #53172: <==negation-removal== 61068 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #54524: <==negation-removal== 90687 (pos)
                    (not (Ba_not_checked_p2))

                    ; #57093: <==negation-removal== 99925 (pos)
                    (not (not_checked_p2))

                    ; #58217: <==negation-removal== 83015 (pos)
                    (not (Bb_not_checked_p2))

                    ; #63475: <==unclosure== 43928 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #72123: <==negation-removal== 85234 (pos)
                    (not (Pc_not_checked_p2))

                    ; #74156: <==negation-removal== 60130 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #78919: <==negation-removal== 69991 (pos)
                    (not (Pd_not_checked_p2))

                    ; #85470: <==uncertain_firing== 50381 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #85963: <==negation-removal== 28686 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #89595: <==negation-removal== 50381 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #89634: <==unclosure== 85470 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #26374: <==commonly_known== 77379 (pos)
                    (Bb_checked_p3)

                    ; #39463: <==closure== 26374 (pos)
                    (Pb_checked_p3)

                    ; #41668: <==closure== 60294 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #41672: <==closure== 74575 (pos)
                    (Pc_checked_p3)

                    ; #48221: <==closure== 79513 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #48515: <==commonly_known== 77379 (pos)
                    (Ba_checked_p3)

                    ; #60294: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #69827: <==closure== 78871 (pos)
                    (Pd_checked_p3)

                    ; #74575: <==commonly_known== 77379 (pos)
                    (Bc_checked_p3)

                    ; #77379: origin
                    (checked_p3)

                    ; #78871: <==commonly_known== 77379 (pos)
                    (Bd_checked_p3)

                    ; #79513: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #84181: <==closure== 48515 (pos)
                    (Pa_checked_p3)

                    ; #10750: <==negation-removal== 79513 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #11598: <==negation-removal== 41672 (pos)
                    (not (Bc_not_checked_p3))

                    ; #31275: <==negation-removal== 69827 (pos)
                    (not (Bd_not_checked_p3))

                    ; #34262: <==negation-removal== 48515 (pos)
                    (not (Pa_not_checked_p3))

                    ; #37402: <==negation-removal== 60294 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #37441: <==unclosure== 79920 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #44036: <==unclosure== 49571 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #49571: <==uncertain_firing== 60294 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #58636: <==negation-removal== 84181 (pos)
                    (not (Ba_not_checked_p3))

                    ; #77089: <==negation-removal== 78871 (pos)
                    (not (Pd_not_checked_p3))

                    ; #78264: <==negation-removal== 77379 (pos)
                    (not (not_checked_p3))

                    ; #79000: <==negation-removal== 41668 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #79920: <==uncertain_firing== 79513 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #80080: <==negation-removal== 26374 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80253: <==negation-removal== 39463 (pos)
                    (not (Bb_not_checked_p3))

                    ; #80297: <==negation-removal== 48221 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #85206: <==negation-removal== 74575 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #17437: <==commonly_known== 60093 (pos)
                    (Ba_checked_p4)

                    ; #26370: <==commonly_known== 60093 (pos)
                    (Bc_checked_p4)

                    ; #26816: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #32753: <==commonly_known== 60093 (pos)
                    (Bb_checked_p4)

                    ; #41926: <==closure== 17437 (pos)
                    (Pa_checked_p4)

                    ; #47588: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #47650: <==closure== 26816 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #50551: <==commonly_known== 60093 (pos)
                    (Bd_checked_p4)

                    ; #60093: origin
                    (checked_p4)

                    ; #61140: <==closure== 47588 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #75399: <==closure== 32753 (pos)
                    (Pb_checked_p4)

                    ; #85550: <==closure== 26370 (pos)
                    (Pc_checked_p4)

                    ; #87426: <==closure== 50551 (pos)
                    (Pd_checked_p4)

                    ; #17299: <==negation-removal== 47588 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #22807: <==uncertain_firing== 47588 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #26103: <==negation-removal== 26816 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #29987: <==negation-removal== 50551 (pos)
                    (not (Pd_not_checked_p4))

                    ; #39764: <==negation-removal== 60093 (pos)
                    (not (not_checked_p4))

                    ; #42972: <==unclosure== 22807 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #45088: <==unclosure== 88996 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #46083: <==negation-removal== 26370 (pos)
                    (not (Pc_not_checked_p4))

                    ; #50460: <==negation-removal== 61140 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #62210: <==negation-removal== 85550 (pos)
                    (not (Bc_not_checked_p4))

                    ; #66799: <==negation-removal== 47650 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #75461: <==negation-removal== 17437 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77036: <==negation-removal== 41926 (pos)
                    (not (Ba_not_checked_p4))

                    ; #80039: <==negation-removal== 87426 (pos)
                    (not (Bd_not_checked_p4))

                    ; #88665: <==negation-removal== 32753 (pos)
                    (not (Pb_not_checked_p4))

                    ; #88996: <==uncertain_firing== 26816 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #89390: <==negation-removal== 75399 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12230: <==closure== 60287 (pos)
                    (Pb_checked_p5)

                    ; #19753: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #24921: <==closure== 39173 (pos)
                    (Pc_checked_p5)

                    ; #29229: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #39173: <==commonly_known== 88461 (pos)
                    (Bc_checked_p5)

                    ; #42909: <==closure== 19753 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #55287: <==closure== 78689 (pos)
                    (Pd_checked_p5)

                    ; #60287: <==commonly_known== 88461 (pos)
                    (Bb_checked_p5)

                    ; #62210: <==closure== 88897 (pos)
                    (Pa_checked_p5)

                    ; #78678: <==closure== 29229 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #78689: <==commonly_known== 88461 (pos)
                    (Bd_checked_p5)

                    ; #88461: origin
                    (checked_p5)

                    ; #88897: <==commonly_known== 88461 (pos)
                    (Ba_checked_p5)

                    ; #17301: <==negation-removal== 29229 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #21194: <==uncertain_firing== 29229 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #22465: <==unclosure== 21194 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #24203: <==negation-removal== 78678 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #28207: <==negation-removal== 62210 (pos)
                    (not (Ba_not_checked_p5))

                    ; #31484: <==uncertain_firing== 19753 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #31899: <==negation-removal== 24921 (pos)
                    (not (Bc_not_checked_p5))

                    ; #34741: <==negation-removal== 88461 (pos)
                    (not (not_checked_p5))

                    ; #38881: <==negation-removal== 60287 (pos)
                    (not (Pb_not_checked_p5))

                    ; #46195: <==negation-removal== 88897 (pos)
                    (not (Pa_not_checked_p5))

                    ; #48851: <==negation-removal== 42909 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #52666: <==negation-removal== 12230 (pos)
                    (not (Bb_not_checked_p5))

                    ; #62422: <==negation-removal== 39173 (pos)
                    (not (Pc_not_checked_p5))

                    ; #70025: <==negation-removal== 78689 (pos)
                    (not (Pd_not_checked_p5))

                    ; #70107: <==negation-removal== 55287 (pos)
                    (not (Bd_not_checked_p5))

                    ; #71809: <==unclosure== 31484 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #83921: <==negation-removal== 19753 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #40354: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #41563: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #46688: <==commonly_known== 62156 (pos)
                    (Bd_checked_p6)

                    ; #52502: <==commonly_known== 62156 (pos)
                    (Bb_checked_p6)

                    ; #59998: <==closure== 41563 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #60405: <==closure== 40354 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #62156: origin
                    (checked_p6)

                    ; #70231: <==commonly_known== 62156 (pos)
                    (Ba_checked_p6)

                    ; #77095: <==closure== 70231 (pos)
                    (Pa_checked_p6)

                    ; #82874: <==closure== 46688 (pos)
                    (Pd_checked_p6)

                    ; #83873: <==closure== 88674 (pos)
                    (Pc_checked_p6)

                    ; #86006: <==closure== 52502 (pos)
                    (Pb_checked_p6)

                    ; #88674: <==commonly_known== 62156 (pos)
                    (Bc_checked_p6)

                    ; #12761: <==negation-removal== 40354 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #15331: <==negation-removal== 88674 (pos)
                    (not (Pc_not_checked_p6))

                    ; #19217: <==negation-removal== 83873 (pos)
                    (not (Bc_not_checked_p6))

                    ; #21997: <==negation-removal== 70231 (pos)
                    (not (Pa_not_checked_p6))

                    ; #24452: <==negation-removal== 82874 (pos)
                    (not (Bd_not_checked_p6))

                    ; #29427: <==negation-removal== 86006 (pos)
                    (not (Bb_not_checked_p6))

                    ; #32446: <==negation-removal== 59998 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #36525: <==uncertain_firing== 41563 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #48363: <==uncertain_firing== 40354 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #65498: <==negation-removal== 60405 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #68714: <==negation-removal== 77095 (pos)
                    (not (Ba_not_checked_p6))

                    ; #70162: <==unclosure== 36525 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #73946: <==negation-removal== 52502 (pos)
                    (not (Pb_not_checked_p6))

                    ; #75461: <==unclosure== 48363 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #86083: <==negation-removal== 62156 (pos)
                    (not (not_checked_p6))

                    ; #91186: <==negation-removal== 46688 (pos)
                    (not (Pd_not_checked_p6))

                    ; #91854: <==negation-removal== 41563 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15859: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #20530: <==commonly_known== 41785 (pos)
                    (Bc_checked_p7)

                    ; #22925: <==closure== 86000 (pos)
                    (Pb_checked_p7)

                    ; #24142: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #29865: <==closure== 67900 (pos)
                    (Pa_checked_p7)

                    ; #41785: origin
                    (checked_p7)

                    ; #43707: <==commonly_known== 41785 (pos)
                    (Bd_checked_p7)

                    ; #67900: <==commonly_known== 41785 (pos)
                    (Ba_checked_p7)

                    ; #73766: <==closure== 20530 (pos)
                    (Pc_checked_p7)

                    ; #77801: <==closure== 24142 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #86000: <==commonly_known== 41785 (pos)
                    (Bb_checked_p7)

                    ; #91029: <==closure== 43707 (pos)
                    (Pd_checked_p7)

                    ; #91533: <==closure== 15859 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #10714: <==negation-removal== 20530 (pos)
                    (not (Pc_not_checked_p7))

                    ; #11179: <==negation-removal== 15859 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #23348: <==unclosure== 60917 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #39840: <==unclosure== 63010 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #41001: <==negation-removal== 67900 (pos)
                    (not (Pa_not_checked_p7))

                    ; #45037: <==negation-removal== 43707 (pos)
                    (not (Pd_not_checked_p7))

                    ; #46636: <==negation-removal== 91029 (pos)
                    (not (Bd_not_checked_p7))

                    ; #51644: <==negation-removal== 24142 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #54273: <==negation-removal== 41785 (pos)
                    (not (not_checked_p7))

                    ; #54281: <==negation-removal== 29865 (pos)
                    (not (Ba_not_checked_p7))

                    ; #60917: <==uncertain_firing== 15859 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #63010: <==uncertain_firing== 24142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #65282: <==negation-removal== 22925 (pos)
                    (not (Bb_not_checked_p7))

                    ; #73618: <==negation-removal== 77801 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #81924: <==negation-removal== 73766 (pos)
                    (not (Bc_not_checked_p7))

                    ; #90993: <==negation-removal== 91533 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #91069: <==negation-removal== 86000 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13061: <==closure== 61420 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #20231: <==closure== 55120 (pos)
                    (Pa_checked_p8)

                    ; #23406: <==closure== 57952 (pos)
                    (Pd_checked_p8)

                    ; #30734: <==closure== 63251 (pos)
                    (Pb_checked_p8)

                    ; #48546: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #55120: <==commonly_known== 83329 (pos)
                    (Ba_checked_p8)

                    ; #57952: <==commonly_known== 83329 (pos)
                    (Bd_checked_p8)

                    ; #61420: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #63251: <==commonly_known== 83329 (pos)
                    (Bb_checked_p8)

                    ; #72859: <==commonly_known== 83329 (pos)
                    (Bc_checked_p8)

                    ; #74100: <==closure== 72859 (pos)
                    (Pc_checked_p8)

                    ; #83329: origin
                    (checked_p8)

                    ; #88533: <==closure== 48546 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #22186: <==negation-removal== 83329 (pos)
                    (not (not_checked_p8))

                    ; #26755: <==negation-removal== 63251 (pos)
                    (not (Pb_not_checked_p8))

                    ; #27423: <==negation-removal== 30734 (pos)
                    (not (Bb_not_checked_p8))

                    ; #32257: <==unclosure== 44351 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #33824: <==negation-removal== 57952 (pos)
                    (not (Pd_not_checked_p8))

                    ; #40365: <==negation-removal== 88533 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #40940: <==negation-removal== 13061 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #42594: <==unclosure== 91632 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #44351: <==uncertain_firing== 48546 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #44503: <==negation-removal== 48546 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #46109: <==negation-removal== 72859 (pos)
                    (not (Pc_not_checked_p8))

                    ; #50461: <==negation-removal== 74100 (pos)
                    (not (Bc_not_checked_p8))

                    ; #68431: <==negation-removal== 61420 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #85329: <==negation-removal== 23406 (pos)
                    (not (Bd_not_checked_p8))

                    ; #90936: <==negation-removal== 55120 (pos)
                    (not (Pa_not_checked_p8))

                    ; #91632: <==uncertain_firing== 61420 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #94893: <==negation-removal== 20231 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #18488: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #22128: <==closure== 18488 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #22771: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #32994: <==closure== 64388 (pos)
                    (Pd_checked_p9)

                    ; #33640: <==commonly_known== 96893 (pos)
                    (Bb_checked_p9)

                    ; #48559: <==commonly_known== 96893 (pos)
                    (Ba_checked_p9)

                    ; #52351: <==closure== 33640 (pos)
                    (Pb_checked_p9)

                    ; #59315: <==closure== 22771 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #64388: <==commonly_known== 96893 (pos)
                    (Bd_checked_p9)

                    ; #66144: <==closure== 48559 (pos)
                    (Pa_checked_p9)

                    ; #70592: <==commonly_known== 96893 (pos)
                    (Bc_checked_p9)

                    ; #76183: <==closure== 70592 (pos)
                    (Pc_checked_p9)

                    ; #96893: origin
                    (checked_p9)

                    ; #19588: <==negation-removal== 32994 (pos)
                    (not (Bd_not_checked_p9))

                    ; #22872: <==negation-removal== 96893 (pos)
                    (not (not_checked_p9))

                    ; #27828: <==uncertain_firing== 22771 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #28223: <==uncertain_firing== 18488 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #38819: <==negation-removal== 66144 (pos)
                    (not (Ba_not_checked_p9))

                    ; #42563: <==negation-removal== 22771 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #46296: <==negation-removal== 70592 (pos)
                    (not (Pc_not_checked_p9))

                    ; #50753: <==unclosure== 28223 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #51242: <==unclosure== 27828 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #54545: <==negation-removal== 76183 (pos)
                    (not (Bc_not_checked_p9))

                    ; #55271: <==negation-removal== 48559 (pos)
                    (not (Pa_not_checked_p9))

                    ; #65129: <==negation-removal== 64388 (pos)
                    (not (Pd_not_checked_p9))

                    ; #65690: <==negation-removal== 33640 (pos)
                    (not (Pb_not_checked_p9))

                    ; #72446: <==negation-removal== 52351 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73491: <==negation-removal== 59315 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #73884: <==negation-removal== 22128 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #74798: <==negation-removal== 18488 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #22980: <==commonly_known== 87817 (pos)
                    (Ba_checked_p1)

                    ; #25977: <==closure== 33137 (pos)
                    (Pb_checked_p1)

                    ; #33137: <==commonly_known== 87817 (pos)
                    (Bb_checked_p1)

                    ; #42596: <==closure== 22980 (pos)
                    (Pa_checked_p1)

                    ; #43285: <==closure== 85950 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #45174: <==closure== 64615 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #45759: <==closure== 70455 (pos)
                    (Pc_checked_p1)

                    ; #48689: <==commonly_known== 87817 (pos)
                    (Bd_checked_p1)

                    ; #64615: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #70455: <==commonly_known== 87817 (pos)
                    (Bc_checked_p1)

                    ; #76161: <==closure== 48689 (pos)
                    (Pd_checked_p1)

                    ; #85950: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #87817: origin
                    (checked_p1)

                    ; #14088: <==negation-removal== 70455 (pos)
                    (not (Pc_not_checked_p1))

                    ; #22858: <==negation-removal== 42596 (pos)
                    (not (Ba_not_checked_p1))

                    ; #39567: <==negation-removal== 45174 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #48409: <==uncertain_firing== 85950 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #50577: <==negation-removal== 48689 (pos)
                    (not (Pd_not_checked_p1))

                    ; #51527: <==negation-removal== 85950 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #51892: <==negation-removal== 45759 (pos)
                    (not (Bc_not_checked_p1))

                    ; #57235: <==negation-removal== 33137 (pos)
                    (not (Pb_not_checked_p1))

                    ; #67143: <==negation-removal== 22980 (pos)
                    (not (Pa_not_checked_p1))

                    ; #67450: <==negation-removal== 64615 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #68924: <==negation-removal== 43285 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #73617: <==negation-removal== 25977 (pos)
                    (not (Bb_not_checked_p1))

                    ; #74349: <==unclosure== 76996 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #76996: <==uncertain_firing== 64615 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #79940: <==negation-removal== 87817 (pos)
                    (not (not_checked_p1))

                    ; #84879: <==unclosure== 48409 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #86748: <==negation-removal== 76161 (pos)
                    (not (Bd_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10164: <==closure== 37881 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #31681: <==closure== 85234 (pos)
                    (Pc_checked_p2)

                    ; #32238: <==closure== 69991 (pos)
                    (Pd_checked_p2)

                    ; #37881: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #50083: <==commonly_known== 99925 (pos)
                    (Bb_checked_p2)

                    ; #58643: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #69991: <==commonly_known== 99925 (pos)
                    (Bd_checked_p2)

                    ; #81915: <==commonly_known== 99925 (pos)
                    (Ba_checked_p2)

                    ; #83015: <==closure== 50083 (pos)
                    (Pb_checked_p2)

                    ; #85234: <==commonly_known== 99925 (pos)
                    (Bc_checked_p2)

                    ; #87701: <==closure== 58643 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #90687: <==closure== 81915 (pos)
                    (Pa_checked_p2)

                    ; #99925: origin
                    (checked_p2)

                    ; #13588: <==unclosure== 60125 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #13952: <==negation-removal== 32238 (pos)
                    (not (Bd_not_checked_p2))

                    ; #31562: <==negation-removal== 31681 (pos)
                    (not (Bc_not_checked_p2))

                    ; #35025: <==negation-removal== 50083 (pos)
                    (not (Pb_not_checked_p2))

                    ; #50576: <==negation-removal== 81915 (pos)
                    (not (Pa_not_checked_p2))

                    ; #54524: <==negation-removal== 90687 (pos)
                    (not (Ba_not_checked_p2))

                    ; #57093: <==negation-removal== 99925 (pos)
                    (not (not_checked_p2))

                    ; #58217: <==negation-removal== 83015 (pos)
                    (not (Bb_not_checked_p2))

                    ; #60125: <==uncertain_firing== 58643 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #66372: <==negation-removal== 58643 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #68220: <==negation-removal== 87701 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #72123: <==negation-removal== 85234 (pos)
                    (not (Pc_not_checked_p2))

                    ; #73350: <==uncertain_firing== 37881 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #78919: <==negation-removal== 69991 (pos)
                    (not (Pd_not_checked_p2))

                    ; #81169: <==negation-removal== 37881 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #85282: <==unclosure== 73350 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #86903: <==negation-removal== 10164 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17114: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #26374: <==commonly_known== 77379 (pos)
                    (Bb_checked_p3)

                    ; #33568: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #39463: <==closure== 26374 (pos)
                    (Pb_checked_p3)

                    ; #41672: <==closure== 74575 (pos)
                    (Pc_checked_p3)

                    ; #48515: <==commonly_known== 77379 (pos)
                    (Ba_checked_p3)

                    ; #52421: <==closure== 17114 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #58613: <==closure== 33568 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #69827: <==closure== 78871 (pos)
                    (Pd_checked_p3)

                    ; #74575: <==commonly_known== 77379 (pos)
                    (Bc_checked_p3)

                    ; #77379: origin
                    (checked_p3)

                    ; #78871: <==commonly_known== 77379 (pos)
                    (Bd_checked_p3)

                    ; #84181: <==closure== 48515 (pos)
                    (Pa_checked_p3)

                    ; #11598: <==negation-removal== 41672 (pos)
                    (not (Bc_not_checked_p3))

                    ; #13560: <==unclosure== 45842 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #23096: <==negation-removal== 58613 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #27554: <==negation-removal== 33568 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #31275: <==negation-removal== 69827 (pos)
                    (not (Bd_not_checked_p3))

                    ; #31930: <==negation-removal== 17114 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #34262: <==negation-removal== 48515 (pos)
                    (not (Pa_not_checked_p3))

                    ; #45842: <==uncertain_firing== 33568 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #57070: <==uncertain_firing== 17114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #58636: <==negation-removal== 84181 (pos)
                    (not (Ba_not_checked_p3))

                    ; #65900: <==unclosure== 57070 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #77089: <==negation-removal== 78871 (pos)
                    (not (Pd_not_checked_p3))

                    ; #78264: <==negation-removal== 77379 (pos)
                    (not (not_checked_p3))

                    ; #80080: <==negation-removal== 26374 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80162: <==negation-removal== 52421 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #80253: <==negation-removal== 39463 (pos)
                    (not (Bb_not_checked_p3))

                    ; #85206: <==negation-removal== 74575 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #17437: <==commonly_known== 60093 (pos)
                    (Ba_checked_p4)

                    ; #26370: <==commonly_known== 60093 (pos)
                    (Bc_checked_p4)

                    ; #32753: <==commonly_known== 60093 (pos)
                    (Bb_checked_p4)

                    ; #41926: <==closure== 17437 (pos)
                    (Pa_checked_p4)

                    ; #48778: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #50551: <==commonly_known== 60093 (pos)
                    (Bd_checked_p4)

                    ; #60093: origin
                    (checked_p4)

                    ; #70277: <==closure== 70935 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #70935: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #75399: <==closure== 32753 (pos)
                    (Pb_checked_p4)

                    ; #79795: <==closure== 48778 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #85550: <==closure== 26370 (pos)
                    (Pc_checked_p4)

                    ; #87426: <==closure== 50551 (pos)
                    (Pd_checked_p4)

                    ; #13542: <==negation-removal== 48778 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #29987: <==negation-removal== 50551 (pos)
                    (not (Pd_not_checked_p4))

                    ; #33053: <==negation-removal== 79795 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #35832: <==unclosure== 50605 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #39764: <==negation-removal== 60093 (pos)
                    (not (not_checked_p4))

                    ; #46083: <==negation-removal== 26370 (pos)
                    (not (Pc_not_checked_p4))

                    ; #47706: <==negation-removal== 70935 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #50179: <==unclosure== 76794 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #50605: <==uncertain_firing== 48778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #54774: <==negation-removal== 70277 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #62210: <==negation-removal== 85550 (pos)
                    (not (Bc_not_checked_p4))

                    ; #75461: <==negation-removal== 17437 (pos)
                    (not (Pa_not_checked_p4))

                    ; #76794: <==uncertain_firing== 70935 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #77036: <==negation-removal== 41926 (pos)
                    (not (Ba_not_checked_p4))

                    ; #80039: <==negation-removal== 87426 (pos)
                    (not (Bd_not_checked_p4))

                    ; #88665: <==negation-removal== 32753 (pos)
                    (not (Pb_not_checked_p4))

                    ; #89390: <==negation-removal== 75399 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12230: <==closure== 60287 (pos)
                    (Pb_checked_p5)

                    ; #24921: <==closure== 39173 (pos)
                    (Pc_checked_p5)

                    ; #25719: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #35340: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #39173: <==commonly_known== 88461 (pos)
                    (Bc_checked_p5)

                    ; #55287: <==closure== 78689 (pos)
                    (Pd_checked_p5)

                    ; #60287: <==commonly_known== 88461 (pos)
                    (Bb_checked_p5)

                    ; #62210: <==closure== 88897 (pos)
                    (Pa_checked_p5)

                    ; #63275: <==closure== 35340 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #71574: <==closure== 25719 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #78689: <==commonly_known== 88461 (pos)
                    (Bd_checked_p5)

                    ; #88461: origin
                    (checked_p5)

                    ; #88897: <==commonly_known== 88461 (pos)
                    (Ba_checked_p5)

                    ; #19296: <==unclosure== 91386 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #23609: <==negation-removal== 35340 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #28207: <==negation-removal== 62210 (pos)
                    (not (Ba_not_checked_p5))

                    ; #30807: <==uncertain_firing== 25719 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #31899: <==negation-removal== 24921 (pos)
                    (not (Bc_not_checked_p5))

                    ; #34741: <==negation-removal== 88461 (pos)
                    (not (not_checked_p5))

                    ; #38881: <==negation-removal== 60287 (pos)
                    (not (Pb_not_checked_p5))

                    ; #46195: <==negation-removal== 88897 (pos)
                    (not (Pa_not_checked_p5))

                    ; #51480: <==negation-removal== 25719 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52666: <==negation-removal== 12230 (pos)
                    (not (Bb_not_checked_p5))

                    ; #57198: <==unclosure== 30807 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62422: <==negation-removal== 39173 (pos)
                    (not (Pc_not_checked_p5))

                    ; #70025: <==negation-removal== 78689 (pos)
                    (not (Pd_not_checked_p5))

                    ; #70107: <==negation-removal== 55287 (pos)
                    (not (Bd_not_checked_p5))

                    ; #77381: <==negation-removal== 63275 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #90654: <==negation-removal== 71574 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #91386: <==uncertain_firing== 35340 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11729: <==closure== 30263 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #30263: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #46688: <==commonly_known== 62156 (pos)
                    (Bd_checked_p6)

                    ; #52502: <==commonly_known== 62156 (pos)
                    (Bb_checked_p6)

                    ; #57474: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #58949: <==closure== 57474 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #62156: origin
                    (checked_p6)

                    ; #70231: <==commonly_known== 62156 (pos)
                    (Ba_checked_p6)

                    ; #77095: <==closure== 70231 (pos)
                    (Pa_checked_p6)

                    ; #82874: <==closure== 46688 (pos)
                    (Pd_checked_p6)

                    ; #83873: <==closure== 88674 (pos)
                    (Pc_checked_p6)

                    ; #86006: <==closure== 52502 (pos)
                    (Pb_checked_p6)

                    ; #88674: <==commonly_known== 62156 (pos)
                    (Bc_checked_p6)

                    ; #13467: <==unclosure== 61223 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #15331: <==negation-removal== 88674 (pos)
                    (not (Pc_not_checked_p6))

                    ; #19217: <==negation-removal== 83873 (pos)
                    (not (Bc_not_checked_p6))

                    ; #21193: <==negation-removal== 57474 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #21997: <==negation-removal== 70231 (pos)
                    (not (Pa_not_checked_p6))

                    ; #24452: <==negation-removal== 82874 (pos)
                    (not (Bd_not_checked_p6))

                    ; #29018: <==negation-removal== 11729 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #29427: <==negation-removal== 86006 (pos)
                    (not (Bb_not_checked_p6))

                    ; #38764: <==negation-removal== 58949 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #61223: <==uncertain_firing== 30263 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #64774: <==uncertain_firing== 57474 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #68714: <==negation-removal== 77095 (pos)
                    (not (Ba_not_checked_p6))

                    ; #73946: <==negation-removal== 52502 (pos)
                    (not (Pb_not_checked_p6))

                    ; #80686: <==unclosure== 64774 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #86083: <==negation-removal== 62156 (pos)
                    (not (not_checked_p6))

                    ; #87652: <==negation-removal== 30263 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #91186: <==negation-removal== 46688 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18300: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #20530: <==commonly_known== 41785 (pos)
                    (Bc_checked_p7)

                    ; #22925: <==closure== 86000 (pos)
                    (Pb_checked_p7)

                    ; #28447: <==closure== 48238 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #29865: <==closure== 67900 (pos)
                    (Pa_checked_p7)

                    ; #36828: <==closure== 18300 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #41785: origin
                    (checked_p7)

                    ; #43707: <==commonly_known== 41785 (pos)
                    (Bd_checked_p7)

                    ; #48238: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #67900: <==commonly_known== 41785 (pos)
                    (Ba_checked_p7)

                    ; #73766: <==closure== 20530 (pos)
                    (Pc_checked_p7)

                    ; #86000: <==commonly_known== 41785 (pos)
                    (Bb_checked_p7)

                    ; #91029: <==closure== 43707 (pos)
                    (Pd_checked_p7)

                    ; #10714: <==negation-removal== 20530 (pos)
                    (not (Pc_not_checked_p7))

                    ; #14316: <==unclosure== 46920 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #22676: <==negation-removal== 28447 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #41001: <==negation-removal== 67900 (pos)
                    (not (Pa_not_checked_p7))

                    ; #45037: <==negation-removal== 43707 (pos)
                    (not (Pd_not_checked_p7))

                    ; #46636: <==negation-removal== 91029 (pos)
                    (not (Bd_not_checked_p7))

                    ; #46920: <==uncertain_firing== 18300 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #51192: <==negation-removal== 18300 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #54273: <==negation-removal== 41785 (pos)
                    (not (not_checked_p7))

                    ; #54281: <==negation-removal== 29865 (pos)
                    (not (Ba_not_checked_p7))

                    ; #54757: <==negation-removal== 48238 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #55964: <==unclosure== 58902 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #58902: <==uncertain_firing== 48238 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #65282: <==negation-removal== 22925 (pos)
                    (not (Bb_not_checked_p7))

                    ; #81924: <==negation-removal== 73766 (pos)
                    (not (Bc_not_checked_p7))

                    ; #84210: <==negation-removal== 36828 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #91069: <==negation-removal== 86000 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #20231: <==closure== 55120 (pos)
                    (Pa_checked_p8)

                    ; #23406: <==closure== 57952 (pos)
                    (Pd_checked_p8)

                    ; #30734: <==closure== 63251 (pos)
                    (Pb_checked_p8)

                    ; #34263: <==closure== 70761 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #55120: <==commonly_known== 83329 (pos)
                    (Ba_checked_p8)

                    ; #57952: <==commonly_known== 83329 (pos)
                    (Bd_checked_p8)

                    ; #63251: <==commonly_known== 83329 (pos)
                    (Bb_checked_p8)

                    ; #65665: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #70761: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #72859: <==commonly_known== 83329 (pos)
                    (Bc_checked_p8)

                    ; #74100: <==closure== 72859 (pos)
                    (Pc_checked_p8)

                    ; #83329: origin
                    (checked_p8)

                    ; #84505: <==closure== 65665 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #13556: <==uncertain_firing== 65665 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #15340: <==uncertain_firing== 70761 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #22186: <==negation-removal== 83329 (pos)
                    (not (not_checked_p8))

                    ; #26755: <==negation-removal== 63251 (pos)
                    (not (Pb_not_checked_p8))

                    ; #27423: <==negation-removal== 30734 (pos)
                    (not (Bb_not_checked_p8))

                    ; #33824: <==negation-removal== 57952 (pos)
                    (not (Pd_not_checked_p8))

                    ; #45088: <==negation-removal== 84505 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #46109: <==negation-removal== 72859 (pos)
                    (not (Pc_not_checked_p8))

                    ; #47690: <==unclosure== 13556 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #50461: <==negation-removal== 74100 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55748: <==negation-removal== 34263 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #82055: <==negation-removal== 70761 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #84098: <==negation-removal== 65665 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #84475: <==unclosure== 15340 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #85329: <==negation-removal== 23406 (pos)
                    (not (Bd_not_checked_p8))

                    ; #90936: <==negation-removal== 55120 (pos)
                    (not (Pa_not_checked_p8))

                    ; #94893: <==negation-removal== 20231 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #25209: <==closure== 47963 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #30332: <==closure== 79274 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #32994: <==closure== 64388 (pos)
                    (Pd_checked_p9)

                    ; #33640: <==commonly_known== 96893 (pos)
                    (Bb_checked_p9)

                    ; #47963: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #48559: <==commonly_known== 96893 (pos)
                    (Ba_checked_p9)

                    ; #52351: <==closure== 33640 (pos)
                    (Pb_checked_p9)

                    ; #64388: <==commonly_known== 96893 (pos)
                    (Bd_checked_p9)

                    ; #66144: <==closure== 48559 (pos)
                    (Pa_checked_p9)

                    ; #70592: <==commonly_known== 96893 (pos)
                    (Bc_checked_p9)

                    ; #76183: <==closure== 70592 (pos)
                    (Pc_checked_p9)

                    ; #79274: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #96893: origin
                    (checked_p9)

                    ; #19588: <==negation-removal== 32994 (pos)
                    (not (Bd_not_checked_p9))

                    ; #20626: <==negation-removal== 79274 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #22872: <==negation-removal== 96893 (pos)
                    (not (not_checked_p9))

                    ; #31892: <==uncertain_firing== 47963 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #38819: <==negation-removal== 66144 (pos)
                    (not (Ba_not_checked_p9))

                    ; #46296: <==negation-removal== 70592 (pos)
                    (not (Pc_not_checked_p9))

                    ; #54545: <==negation-removal== 76183 (pos)
                    (not (Bc_not_checked_p9))

                    ; #55271: <==negation-removal== 48559 (pos)
                    (not (Pa_not_checked_p9))

                    ; #59492: <==unclosure== 31892 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #65129: <==negation-removal== 64388 (pos)
                    (not (Pd_not_checked_p9))

                    ; #65690: <==negation-removal== 33640 (pos)
                    (not (Pb_not_checked_p9))

                    ; #72446: <==negation-removal== 52351 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73547: <==negation-removal== 25209 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #74132: <==unclosure== 85507 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #79828: <==negation-removal== 30332 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #85274: <==negation-removal== 47963 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #85507: <==uncertain_firing== 79274 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #16007: <==closure== 23731 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #22980: <==commonly_known== 87817 (pos)
                    (Ba_checked_p1)

                    ; #23731: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #25977: <==closure== 33137 (pos)
                    (Pb_checked_p1)

                    ; #33137: <==commonly_known== 87817 (pos)
                    (Bb_checked_p1)

                    ; #42596: <==closure== 22980 (pos)
                    (Pa_checked_p1)

                    ; #45759: <==closure== 70455 (pos)
                    (Pc_checked_p1)

                    ; #48689: <==commonly_known== 87817 (pos)
                    (Bd_checked_p1)

                    ; #55091: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #70455: <==commonly_known== 87817 (pos)
                    (Bc_checked_p1)

                    ; #74286: <==closure== 55091 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #76161: <==closure== 48689 (pos)
                    (Pd_checked_p1)

                    ; #87817: origin
                    (checked_p1)

                    ; #10534: <==negation-removal== 74286 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #14088: <==negation-removal== 70455 (pos)
                    (not (Pc_not_checked_p1))

                    ; #14504: <==unclosure== 86409 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #22858: <==negation-removal== 42596 (pos)
                    (not (Ba_not_checked_p1))

                    ; #29396: <==negation-removal== 55091 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #31362: <==negation-removal== 23731 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #50549: <==uncertain_firing== 55091 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #50577: <==negation-removal== 48689 (pos)
                    (not (Pd_not_checked_p1))

                    ; #51892: <==negation-removal== 45759 (pos)
                    (not (Bc_not_checked_p1))

                    ; #57235: <==negation-removal== 33137 (pos)
                    (not (Pb_not_checked_p1))

                    ; #60199: <==unclosure== 50549 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #67143: <==negation-removal== 22980 (pos)
                    (not (Pa_not_checked_p1))

                    ; #73617: <==negation-removal== 25977 (pos)
                    (not (Bb_not_checked_p1))

                    ; #79940: <==negation-removal== 87817 (pos)
                    (not (not_checked_p1))

                    ; #84705: <==negation-removal== 16007 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #86409: <==uncertain_firing== 23731 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #86748: <==negation-removal== 76161 (pos)
                    (not (Bd_not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #31681: <==closure== 85234 (pos)
                    (Pc_checked_p2)

                    ; #32238: <==closure== 69991 (pos)
                    (Pd_checked_p2)

                    ; #45361: <==closure== 58668 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #50083: <==commonly_known== 99925 (pos)
                    (Bb_checked_p2)

                    ; #54512: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #58668: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #69991: <==commonly_known== 99925 (pos)
                    (Bd_checked_p2)

                    ; #81915: <==commonly_known== 99925 (pos)
                    (Ba_checked_p2)

                    ; #82686: <==closure== 54512 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #83015: <==closure== 50083 (pos)
                    (Pb_checked_p2)

                    ; #85234: <==commonly_known== 99925 (pos)
                    (Bc_checked_p2)

                    ; #90687: <==closure== 81915 (pos)
                    (Pa_checked_p2)

                    ; #99925: origin
                    (checked_p2)

                    ; #13952: <==negation-removal== 32238 (pos)
                    (not (Bd_not_checked_p2))

                    ; #21824: <==negation-removal== 82686 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #24568: <==uncertain_firing== 54512 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #30809: <==negation-removal== 58668 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #31562: <==negation-removal== 31681 (pos)
                    (not (Bc_not_checked_p2))

                    ; #35025: <==negation-removal== 50083 (pos)
                    (not (Pb_not_checked_p2))

                    ; #39197: <==unclosure== 58288 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #50576: <==negation-removal== 81915 (pos)
                    (not (Pa_not_checked_p2))

                    ; #50726: <==negation-removal== 45361 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #54524: <==negation-removal== 90687 (pos)
                    (not (Ba_not_checked_p2))

                    ; #57093: <==negation-removal== 99925 (pos)
                    (not (not_checked_p2))

                    ; #58217: <==negation-removal== 83015 (pos)
                    (not (Bb_not_checked_p2))

                    ; #58288: <==uncertain_firing== 58668 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #60757: <==negation-removal== 54512 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #72123: <==negation-removal== 85234 (pos)
                    (not (Pc_not_checked_p2))

                    ; #76357: <==unclosure== 24568 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #78919: <==negation-removal== 69991 (pos)
                    (not (Pd_not_checked_p2))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14023: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #26374: <==commonly_known== 77379 (pos)
                    (Bb_checked_p3)

                    ; #39463: <==closure== 26374 (pos)
                    (Pb_checked_p3)

                    ; #40864: <==closure== 14023 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #41672: <==closure== 74575 (pos)
                    (Pc_checked_p3)

                    ; #48515: <==commonly_known== 77379 (pos)
                    (Ba_checked_p3)

                    ; #49496: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #69827: <==closure== 78871 (pos)
                    (Pd_checked_p3)

                    ; #74575: <==commonly_known== 77379 (pos)
                    (Bc_checked_p3)

                    ; #77379: origin
                    (checked_p3)

                    ; #78871: <==commonly_known== 77379 (pos)
                    (Bd_checked_p3)

                    ; #84181: <==closure== 48515 (pos)
                    (Pa_checked_p3)

                    ; #87042: <==closure== 49496 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #11598: <==negation-removal== 41672 (pos)
                    (not (Bc_not_checked_p3))

                    ; #12060: <==negation-removal== 87042 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #12508: <==unclosure== 88841 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #15363: <==negation-removal== 49496 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #27323: <==unclosure== 33961 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #31275: <==negation-removal== 69827 (pos)
                    (not (Bd_not_checked_p3))

                    ; #33961: <==uncertain_firing== 14023 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #34262: <==negation-removal== 48515 (pos)
                    (not (Pa_not_checked_p3))

                    ; #58636: <==negation-removal== 84181 (pos)
                    (not (Ba_not_checked_p3))

                    ; #77089: <==negation-removal== 78871 (pos)
                    (not (Pd_not_checked_p3))

                    ; #78264: <==negation-removal== 77379 (pos)
                    (not (not_checked_p3))

                    ; #78467: <==negation-removal== 40864 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #80080: <==negation-removal== 26374 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80253: <==negation-removal== 39463 (pos)
                    (not (Bb_not_checked_p3))

                    ; #81418: <==negation-removal== 14023 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #85206: <==negation-removal== 74575 (pos)
                    (not (Pc_not_checked_p3))

                    ; #88841: <==uncertain_firing== 49496 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10650: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #17437: <==commonly_known== 60093 (pos)
                    (Ba_checked_p4)

                    ; #26370: <==commonly_known== 60093 (pos)
                    (Bc_checked_p4)

                    ; #32753: <==commonly_known== 60093 (pos)
                    (Bb_checked_p4)

                    ; #41926: <==closure== 17437 (pos)
                    (Pa_checked_p4)

                    ; #48798: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #50551: <==commonly_known== 60093 (pos)
                    (Bd_checked_p4)

                    ; #60093: origin
                    (checked_p4)

                    ; #62021: <==closure== 48798 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #75399: <==closure== 32753 (pos)
                    (Pb_checked_p4)

                    ; #85550: <==closure== 26370 (pos)
                    (Pc_checked_p4)

                    ; #86582: <==closure== 10650 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #87426: <==closure== 50551 (pos)
                    (Pd_checked_p4)

                    ; #12873: <==uncertain_firing== 10650 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #13963: <==negation-removal== 48798 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #17949: <==negation-removal== 10650 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #19371: <==unclosure== 12873 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #21936: <==negation-removal== 62021 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #29987: <==negation-removal== 50551 (pos)
                    (not (Pd_not_checked_p4))

                    ; #39764: <==negation-removal== 60093 (pos)
                    (not (not_checked_p4))

                    ; #46083: <==negation-removal== 26370 (pos)
                    (not (Pc_not_checked_p4))

                    ; #62210: <==negation-removal== 85550 (pos)
                    (not (Bc_not_checked_p4))

                    ; #66401: <==unclosure== 85032 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #74679: <==negation-removal== 86582 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #75461: <==negation-removal== 17437 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77036: <==negation-removal== 41926 (pos)
                    (not (Ba_not_checked_p4))

                    ; #80039: <==negation-removal== 87426 (pos)
                    (not (Bd_not_checked_p4))

                    ; #85032: <==uncertain_firing== 48798 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #88665: <==negation-removal== 32753 (pos)
                    (not (Pb_not_checked_p4))

                    ; #89390: <==negation-removal== 75399 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11824: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #12230: <==closure== 60287 (pos)
                    (Pb_checked_p5)

                    ; #24921: <==closure== 39173 (pos)
                    (Pc_checked_p5)

                    ; #39115: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #39173: <==commonly_known== 88461 (pos)
                    (Bc_checked_p5)

                    ; #55287: <==closure== 78689 (pos)
                    (Pd_checked_p5)

                    ; #57487: <==closure== 11824 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #60287: <==commonly_known== 88461 (pos)
                    (Bb_checked_p5)

                    ; #62210: <==closure== 88897 (pos)
                    (Pa_checked_p5)

                    ; #73773: <==closure== 39115 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #78689: <==commonly_known== 88461 (pos)
                    (Bd_checked_p5)

                    ; #88461: origin
                    (checked_p5)

                    ; #88897: <==commonly_known== 88461 (pos)
                    (Ba_checked_p5)

                    ; #28207: <==negation-removal== 62210 (pos)
                    (not (Ba_not_checked_p5))

                    ; #31899: <==negation-removal== 24921 (pos)
                    (not (Bc_not_checked_p5))

                    ; #34741: <==negation-removal== 88461 (pos)
                    (not (not_checked_p5))

                    ; #38881: <==negation-removal== 60287 (pos)
                    (not (Pb_not_checked_p5))

                    ; #39359: <==negation-removal== 57487 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #41245: <==negation-removal== 11824 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #46195: <==negation-removal== 88897 (pos)
                    (not (Pa_not_checked_p5))

                    ; #52666: <==negation-removal== 12230 (pos)
                    (not (Bb_not_checked_p5))

                    ; #56395: <==uncertain_firing== 11824 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #60846: <==unclosure== 56395 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #62422: <==negation-removal== 39173 (pos)
                    (not (Pc_not_checked_p5))

                    ; #65988: <==unclosure== 84540 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #70025: <==negation-removal== 78689 (pos)
                    (not (Pd_not_checked_p5))

                    ; #70107: <==negation-removal== 55287 (pos)
                    (not (Bd_not_checked_p5))

                    ; #84540: <==uncertain_firing== 39115 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #86657: <==negation-removal== 39115 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #92704: <==negation-removal== 73773 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #38215: <==closure== 59433 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #46688: <==commonly_known== 62156 (pos)
                    (Bd_checked_p6)

                    ; #52502: <==commonly_known== 62156 (pos)
                    (Bb_checked_p6)

                    ; #59433: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #62156: origin
                    (checked_p6)

                    ; #70231: <==commonly_known== 62156 (pos)
                    (Ba_checked_p6)

                    ; #77095: <==closure== 70231 (pos)
                    (Pa_checked_p6)

                    ; #82874: <==closure== 46688 (pos)
                    (Pd_checked_p6)

                    ; #83873: <==closure== 88674 (pos)
                    (Pc_checked_p6)

                    ; #84627: <==closure== 85029 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #85029: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #86006: <==closure== 52502 (pos)
                    (Pb_checked_p6)

                    ; #88674: <==commonly_known== 62156 (pos)
                    (Bc_checked_p6)

                    ; #15331: <==negation-removal== 88674 (pos)
                    (not (Pc_not_checked_p6))

                    ; #19217: <==negation-removal== 83873 (pos)
                    (not (Bc_not_checked_p6))

                    ; #21997: <==negation-removal== 70231 (pos)
                    (not (Pa_not_checked_p6))

                    ; #24452: <==negation-removal== 82874 (pos)
                    (not (Bd_not_checked_p6))

                    ; #27664: <==negation-removal== 84627 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #29427: <==negation-removal== 86006 (pos)
                    (not (Bb_not_checked_p6))

                    ; #35933: <==uncertain_firing== 59433 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #50758: <==unclosure== 62553 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #52465: <==negation-removal== 59433 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #57778: <==negation-removal== 38215 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #62553: <==uncertain_firing== 85029 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #68714: <==negation-removal== 77095 (pos)
                    (not (Ba_not_checked_p6))

                    ; #73946: <==negation-removal== 52502 (pos)
                    (not (Pb_not_checked_p6))

                    ; #82941: <==negation-removal== 85029 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #83711: <==unclosure== 35933 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #86083: <==negation-removal== 62156 (pos)
                    (not (not_checked_p6))

                    ; #91186: <==negation-removal== 46688 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #20530: <==commonly_known== 41785 (pos)
                    (Bc_checked_p7)

                    ; #22925: <==closure== 86000 (pos)
                    (Pb_checked_p7)

                    ; #29865: <==closure== 67900 (pos)
                    (Pa_checked_p7)

                    ; #41785: origin
                    (checked_p7)

                    ; #43707: <==commonly_known== 41785 (pos)
                    (Bd_checked_p7)

                    ; #50551: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #67900: <==commonly_known== 41785 (pos)
                    (Ba_checked_p7)

                    ; #69942: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #72813: <==closure== 50551 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #73766: <==closure== 20530 (pos)
                    (Pc_checked_p7)

                    ; #77690: <==closure== 69942 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #86000: <==commonly_known== 41785 (pos)
                    (Bb_checked_p7)

                    ; #91029: <==closure== 43707 (pos)
                    (Pd_checked_p7)

                    ; #10714: <==negation-removal== 20530 (pos)
                    (not (Pc_not_checked_p7))

                    ; #17080: <==negation-removal== 69942 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #17512: <==unclosure== 52611 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #18840: <==unclosure== 83413 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #39007: <==negation-removal== 77690 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #41001: <==negation-removal== 67900 (pos)
                    (not (Pa_not_checked_p7))

                    ; #45037: <==negation-removal== 43707 (pos)
                    (not (Pd_not_checked_p7))

                    ; #46636: <==negation-removal== 91029 (pos)
                    (not (Bd_not_checked_p7))

                    ; #52611: <==uncertain_firing== 69942 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #54273: <==negation-removal== 41785 (pos)
                    (not (not_checked_p7))

                    ; #54281: <==negation-removal== 29865 (pos)
                    (not (Ba_not_checked_p7))

                    ; #60141: <==negation-removal== 50551 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #65282: <==negation-removal== 22925 (pos)
                    (not (Bb_not_checked_p7))

                    ; #78993: <==negation-removal== 72813 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #81924: <==negation-removal== 73766 (pos)
                    (not (Bc_not_checked_p7))

                    ; #83413: <==uncertain_firing== 50551 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #91069: <==negation-removal== 86000 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12233: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #20231: <==closure== 55120 (pos)
                    (Pa_checked_p8)

                    ; #23406: <==closure== 57952 (pos)
                    (Pd_checked_p8)

                    ; #30734: <==closure== 63251 (pos)
                    (Pb_checked_p8)

                    ; #45735: <==closure== 12233 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #55120: <==commonly_known== 83329 (pos)
                    (Ba_checked_p8)

                    ; #57952: <==commonly_known== 83329 (pos)
                    (Bd_checked_p8)

                    ; #63251: <==commonly_known== 83329 (pos)
                    (Bb_checked_p8)

                    ; #72859: <==commonly_known== 83329 (pos)
                    (Bc_checked_p8)

                    ; #74100: <==closure== 72859 (pos)
                    (Pc_checked_p8)

                    ; #80039: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #83257: <==closure== 80039 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #83329: origin
                    (checked_p8)

                    ; #22186: <==negation-removal== 83329 (pos)
                    (not (not_checked_p8))

                    ; #23048: <==unclosure== 34986 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #26755: <==negation-removal== 63251 (pos)
                    (not (Pb_not_checked_p8))

                    ; #27423: <==negation-removal== 30734 (pos)
                    (not (Bb_not_checked_p8))

                    ; #33824: <==negation-removal== 57952 (pos)
                    (not (Pd_not_checked_p8))

                    ; #34986: <==uncertain_firing== 12233 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #44009: <==negation-removal== 80039 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #46109: <==negation-removal== 72859 (pos)
                    (not (Pc_not_checked_p8))

                    ; #50461: <==negation-removal== 74100 (pos)
                    (not (Bc_not_checked_p8))

                    ; #52229: <==negation-removal== 12233 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #56558: <==negation-removal== 45735 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #63126: <==uncertain_firing== 80039 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #71315: <==negation-removal== 83257 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #85329: <==negation-removal== 23406 (pos)
                    (not (Bd_not_checked_p8))

                    ; #85583: <==unclosure== 63126 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #90936: <==negation-removal== 55120 (pos)
                    (not (Pa_not_checked_p8))

                    ; #94893: <==negation-removal== 20231 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10060: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #31764: <==closure== 32803 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #32803: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #32994: <==closure== 64388 (pos)
                    (Pd_checked_p9)

                    ; #33640: <==commonly_known== 96893 (pos)
                    (Bb_checked_p9)

                    ; #48559: <==commonly_known== 96893 (pos)
                    (Ba_checked_p9)

                    ; #52351: <==closure== 33640 (pos)
                    (Pb_checked_p9)

                    ; #64388: <==commonly_known== 96893 (pos)
                    (Bd_checked_p9)

                    ; #66144: <==closure== 48559 (pos)
                    (Pa_checked_p9)

                    ; #70592: <==commonly_known== 96893 (pos)
                    (Bc_checked_p9)

                    ; #74664: <==closure== 10060 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #76183: <==closure== 70592 (pos)
                    (Pc_checked_p9)

                    ; #96893: origin
                    (checked_p9)

                    ; #19588: <==negation-removal== 32994 (pos)
                    (not (Bd_not_checked_p9))

                    ; #22872: <==negation-removal== 96893 (pos)
                    (not (not_checked_p9))

                    ; #31643: <==negation-removal== 32803 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #36428: <==negation-removal== 31764 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #38819: <==negation-removal== 66144 (pos)
                    (not (Ba_not_checked_p9))

                    ; #46296: <==negation-removal== 70592 (pos)
                    (not (Pc_not_checked_p9))

                    ; #54545: <==negation-removal== 76183 (pos)
                    (not (Bc_not_checked_p9))

                    ; #55271: <==negation-removal== 48559 (pos)
                    (not (Pa_not_checked_p9))

                    ; #60955: <==uncertain_firing== 10060 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #65129: <==negation-removal== 64388 (pos)
                    (not (Pd_not_checked_p9))

                    ; #65690: <==negation-removal== 33640 (pos)
                    (not (Pb_not_checked_p9))

                    ; #69506: <==unclosure== 77050 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #72446: <==negation-removal== 52351 (pos)
                    (not (Bb_not_checked_p9))

                    ; #77050: <==uncertain_firing== 32803 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #78660: <==negation-removal== 74664 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #87707: <==negation-removal== 10060 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #88289: <==unclosure== 60955 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))))

)