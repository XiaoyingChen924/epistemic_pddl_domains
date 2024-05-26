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
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #37824: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #44277: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #48756: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #56386: <==closure== 48756 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #56486: <==closure== 37824 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #69455: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #86573: <==closure== 69455 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #94011: <==closure== 44277 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #10401: <==negation-removal== 86573 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #13737: <==unclosure== 87437 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #15505: <==uncertain_firing== 48756 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #16762: <==unclosure== 35208 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #25491: <==negation-removal== 48756 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #27923: <==negation-removal== 44277 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #32409: <==uncertain_firing== 69455 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34635: <==negation-removal== 56486 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #35208: <==uncertain_firing== 44277 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #48141: <==negation-removal== 56386 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #58736: <==negation-removal== 94011 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #60996: <==unclosure== 32409 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #84974: <==unclosure== 15505 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #87437: <==uncertain_firing== 37824 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88383: <==negation-removal== 69455 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #90952: <==negation-removal== 37824 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #37824: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #44277: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #48756: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #56386: <==closure== 48756 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #56486: <==closure== 37824 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #69455: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #86573: <==closure== 69455 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #94011: <==closure== 44277 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #10401: <==negation-removal== 86573 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #13737: <==unclosure== 87437 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #15505: <==uncertain_firing== 48756 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #16762: <==unclosure== 35208 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #25491: <==negation-removal== 48756 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #27923: <==negation-removal== 44277 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #32409: <==uncertain_firing== 69455 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34635: <==negation-removal== 56486 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #35208: <==uncertain_firing== 44277 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #48141: <==negation-removal== 56386 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #58736: <==negation-removal== 94011 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #60996: <==unclosure== 32409 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #84974: <==unclosure== 15505 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #87437: <==uncertain_firing== 37824 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88383: <==negation-removal== 69455 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #90952: <==negation-removal== 37824 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #37824: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #44277: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #48756: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #56386: <==closure== 48756 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #56486: <==closure== 37824 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #69455: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #86573: <==closure== 69455 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #94011: <==closure== 44277 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #10401: <==negation-removal== 86573 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #13737: <==unclosure== 87437 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #15505: <==uncertain_firing== 48756 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #16762: <==unclosure== 35208 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #25491: <==negation-removal== 48756 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #27923: <==negation-removal== 44277 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #32409: <==uncertain_firing== 69455 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34635: <==negation-removal== 56486 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #35208: <==uncertain_firing== 44277 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #48141: <==negation-removal== 56386 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #58736: <==negation-removal== 94011 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #60996: <==unclosure== 32409 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #84974: <==unclosure== 15505 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #87437: <==uncertain_firing== 37824 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88383: <==negation-removal== 69455 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #90952: <==negation-removal== 37824 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #37824: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #44277: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #48756: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #56386: <==closure== 48756 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #56486: <==closure== 37824 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #69455: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #86573: <==closure== 69455 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #94011: <==closure== 44277 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #10401: <==negation-removal== 86573 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #13737: <==unclosure== 87437 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #15505: <==uncertain_firing== 48756 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #16762: <==unclosure== 35208 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #25491: <==negation-removal== 48756 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #27923: <==negation-removal== 44277 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #32409: <==uncertain_firing== 69455 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34635: <==negation-removal== 56486 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #35208: <==uncertain_firing== 44277 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #48141: <==negation-removal== 56386 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #58736: <==negation-removal== 94011 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #60996: <==unclosure== 32409 (neg)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #84974: <==unclosure== 15505 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #87437: <==uncertain_firing== 37824 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88383: <==negation-removal== 69455 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #90952: <==negation-removal== 37824 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #10997: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #31227: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #31786: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #36102: <==closure== 31786 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #37258: <==closure== 31227 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #61313: <==closure== 80392 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #65467: <==closure== 10997 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #80392: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #22054: <==uncertain_firing== 80392 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #22412: <==negation-removal== 36102 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #30095: <==uncertain_firing== 31227 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35981: <==negation-removal== 37258 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41518: <==unclosure== 22054 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43495: <==unclosure== 54182 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #45253: <==uncertain_firing== 10997 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #46192: <==unclosure== 45253 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #48950: <==negation-removal== 31786 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #52924: <==negation-removal== 61313 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #54182: <==uncertain_firing== 31786 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #58307: <==negation-removal== 10997 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #66515: <==unclosure== 30095 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #71594: <==negation-removal== 80392 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #75554: <==negation-removal== 31227 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #88389: <==negation-removal== 65467 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #10997: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #31227: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #31786: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #36102: <==closure== 31786 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #37258: <==closure== 31227 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #61313: <==closure== 80392 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #65467: <==closure== 10997 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #80392: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #22054: <==uncertain_firing== 80392 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #22412: <==negation-removal== 36102 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #30095: <==uncertain_firing== 31227 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35981: <==negation-removal== 37258 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41518: <==unclosure== 22054 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43495: <==unclosure== 54182 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #45253: <==uncertain_firing== 10997 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #46192: <==unclosure== 45253 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #48950: <==negation-removal== 31786 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #52924: <==negation-removal== 61313 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #54182: <==uncertain_firing== 31786 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #58307: <==negation-removal== 10997 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #66515: <==unclosure== 30095 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #71594: <==negation-removal== 80392 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #75554: <==negation-removal== 31227 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #88389: <==negation-removal== 65467 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #10997: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #31227: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #31786: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #36102: <==closure== 31786 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #37258: <==closure== 31227 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #61313: <==closure== 80392 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #65467: <==closure== 10997 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #80392: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #22054: <==uncertain_firing== 80392 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #22412: <==negation-removal== 36102 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #30095: <==uncertain_firing== 31227 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35981: <==negation-removal== 37258 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41518: <==unclosure== 22054 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43495: <==unclosure== 54182 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #45253: <==uncertain_firing== 10997 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #46192: <==unclosure== 45253 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #48950: <==negation-removal== 31786 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #52924: <==negation-removal== 61313 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #54182: <==uncertain_firing== 31786 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #58307: <==negation-removal== 10997 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #66515: <==unclosure== 30095 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #71594: <==negation-removal== 80392 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #75554: <==negation-removal== 31227 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #88389: <==negation-removal== 65467 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #10997: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #31227: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #31786: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #36102: <==closure== 31786 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #37258: <==closure== 31227 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #61313: <==closure== 80392 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #65467: <==closure== 10997 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #80392: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #22054: <==uncertain_firing== 80392 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #22412: <==negation-removal== 36102 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #30095: <==uncertain_firing== 31227 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #35981: <==negation-removal== 37258 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41518: <==unclosure== 22054 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43495: <==unclosure== 54182 (neg)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #45253: <==uncertain_firing== 10997 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #46192: <==unclosure== 45253 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #48950: <==negation-removal== 31786 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #52924: <==negation-removal== 61313 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #54182: <==uncertain_firing== 31786 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #58307: <==negation-removal== 10997 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #66515: <==unclosure== 30095 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #71594: <==negation-removal== 80392 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #75554: <==negation-removal== 31227 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #88389: <==negation-removal== 65467 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #10636: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #32087: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #35200: <==closure== 57464 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #57464: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #70634: <==closure== 32087 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #72137: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #87125: <==closure== 72137 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #87524: <==closure== 10636 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #10326: <==negation-removal== 35200 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #10592: <==unclosure== 42966 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #15072: <==negation-removal== 10636 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #17407: <==negation-removal== 87125 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #22099: <==negation-removal== 87524 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #22595: <==unclosure== 41988 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #32798: <==uncertain_firing== 32087 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #39130: <==negation-removal== 57464 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #41988: <==uncertain_firing== 10636 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #42966: <==uncertain_firing== 72137 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #45889: <==uncertain_firing== 57464 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #52735: <==negation-removal== 70634 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #63386: <==unclosure== 32798 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #65079: <==negation-removal== 72137 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #77308: <==negation-removal== 32087 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #81060: <==unclosure== 45889 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #10636: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #32087: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #35200: <==closure== 57464 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #57464: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #70634: <==closure== 32087 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #72137: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #87125: <==closure== 72137 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #87524: <==closure== 10636 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #10326: <==negation-removal== 35200 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #10592: <==unclosure== 42966 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #15072: <==negation-removal== 10636 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #17407: <==negation-removal== 87125 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #22099: <==negation-removal== 87524 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #22595: <==unclosure== 41988 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #32798: <==uncertain_firing== 32087 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #39130: <==negation-removal== 57464 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #41988: <==uncertain_firing== 10636 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #42966: <==uncertain_firing== 72137 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #45889: <==uncertain_firing== 57464 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #52735: <==negation-removal== 70634 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #63386: <==unclosure== 32798 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #65079: <==negation-removal== 72137 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #77308: <==negation-removal== 32087 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #81060: <==unclosure== 45889 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #10636: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #32087: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #35200: <==closure== 57464 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #57464: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #70634: <==closure== 32087 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #72137: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #87125: <==closure== 72137 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #87524: <==closure== 10636 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #10326: <==negation-removal== 35200 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #10592: <==unclosure== 42966 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #15072: <==negation-removal== 10636 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #17407: <==negation-removal== 87125 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #22099: <==negation-removal== 87524 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #22595: <==unclosure== 41988 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #32798: <==uncertain_firing== 32087 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #39130: <==negation-removal== 57464 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #41988: <==uncertain_firing== 10636 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #42966: <==uncertain_firing== 72137 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #45889: <==uncertain_firing== 57464 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #52735: <==negation-removal== 70634 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #63386: <==unclosure== 32798 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #65079: <==negation-removal== 72137 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #77308: <==negation-removal== 32087 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #81060: <==unclosure== 45889 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #10636: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #32087: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #35200: <==closure== 57464 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #57464: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #70634: <==closure== 32087 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #72137: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #87125: <==closure== 72137 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #87524: <==closure== 10636 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #10326: <==negation-removal== 35200 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #10592: <==unclosure== 42966 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #15072: <==negation-removal== 10636 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #17407: <==negation-removal== 87125 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #22099: <==negation-removal== 87524 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #22595: <==unclosure== 41988 (neg)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #32798: <==uncertain_firing== 32087 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #39130: <==negation-removal== 57464 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #41988: <==uncertain_firing== 10636 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #42966: <==uncertain_firing== 72137 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #45889: <==uncertain_firing== 57464 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #52735: <==negation-removal== 70634 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #63386: <==unclosure== 32798 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #65079: <==negation-removal== 72137 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #77308: <==negation-removal== 32087 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #81060: <==unclosure== 45889 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #26620: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #39566: <==closure== 55270 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #55270: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #55731: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #57543: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #58839: <==closure== 55731 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #78289: <==closure== 26620 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #83108: <==closure== 57543 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #16478: <==uncertain_firing== 26620 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #17901: <==negation-removal== 55731 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #25895: <==negation-removal== 58839 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #30468: <==unclosure== 45495 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #31660: <==negation-removal== 26620 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #32314: <==unclosure== 33019 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #33019: <==uncertain_firing== 57543 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39423: <==uncertain_firing== 55731 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #45495: <==uncertain_firing== 55270 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #56221: <==negation-removal== 39566 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #65932: <==unclosure== 16478 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #67815: <==negation-removal== 83108 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #83494: <==negation-removal== 78289 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #85025: <==negation-removal== 57543 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #88340: <==unclosure== 39423 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91343: <==negation-removal== 55270 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #26620: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #39566: <==closure== 55270 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #55270: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #55731: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #57543: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #58839: <==closure== 55731 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #78289: <==closure== 26620 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #83108: <==closure== 57543 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #16478: <==uncertain_firing== 26620 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #17901: <==negation-removal== 55731 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #25895: <==negation-removal== 58839 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #30468: <==unclosure== 45495 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #31660: <==negation-removal== 26620 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #32314: <==unclosure== 33019 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #33019: <==uncertain_firing== 57543 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39423: <==uncertain_firing== 55731 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #45495: <==uncertain_firing== 55270 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #56221: <==negation-removal== 39566 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #65932: <==unclosure== 16478 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #67815: <==negation-removal== 83108 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #83494: <==negation-removal== 78289 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #85025: <==negation-removal== 57543 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #88340: <==unclosure== 39423 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91343: <==negation-removal== 55270 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #26620: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #39566: <==closure== 55270 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #55270: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #55731: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #57543: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #58839: <==closure== 55731 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #78289: <==closure== 26620 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #83108: <==closure== 57543 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #16478: <==uncertain_firing== 26620 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #17901: <==negation-removal== 55731 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #25895: <==negation-removal== 58839 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #30468: <==unclosure== 45495 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #31660: <==negation-removal== 26620 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #32314: <==unclosure== 33019 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #33019: <==uncertain_firing== 57543 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39423: <==uncertain_firing== 55731 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #45495: <==uncertain_firing== 55270 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #56221: <==negation-removal== 39566 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #65932: <==unclosure== 16478 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #67815: <==negation-removal== 83108 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #83494: <==negation-removal== 78289 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #85025: <==negation-removal== 57543 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #88340: <==unclosure== 39423 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91343: <==negation-removal== 55270 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4)
                           (at_d_p4))
        :effect (and
                    ; #26620: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #39566: <==closure== 55270 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #55270: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #55731: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #57543: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #58839: <==closure== 55731 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #78289: <==closure== 26620 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #83108: <==closure== 57543 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #16478: <==uncertain_firing== 26620 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #17901: <==negation-removal== 55731 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #25895: <==negation-removal== 58839 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #30468: <==unclosure== 45495 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #31660: <==negation-removal== 26620 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #32314: <==unclosure== 33019 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #33019: <==uncertain_firing== 57543 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39423: <==uncertain_firing== 55731 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #45495: <==uncertain_firing== 55270 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #56221: <==negation-removal== 39566 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #65932: <==unclosure== 16478 (neg)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #67815: <==negation-removal== 83108 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #83494: <==negation-removal== 78289 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #85025: <==negation-removal== 57543 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #88340: <==unclosure== 39423 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91343: <==negation-removal== 55270 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #14463: <==closure== 47696 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #14597: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #20005: <==closure== 14597 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #21496: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #42048: <==closure== 50085 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #47696: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #50085: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #69503: <==closure== 21496 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #12068: <==negation-removal== 42048 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #17253: <==uncertain_firing== 47696 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #24435: <==uncertain_firing== 50085 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #31984: <==uncertain_firing== 14597 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #40057: <==unclosure== 17253 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #49320: <==negation-removal== 21496 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #62452: <==negation-removal== 14463 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62710: <==negation-removal== 14597 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #63082: <==unclosure== 31984 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63825: <==negation-removal== 20005 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65235: <==uncertain_firing== 21496 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #66237: <==negation-removal== 50085 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #70810: <==negation-removal== 47696 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #80673: <==unclosure== 65235 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #86758: <==negation-removal== 69503 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #89505: <==unclosure== 24435 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #14463: <==closure== 47696 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #14597: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #20005: <==closure== 14597 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #21496: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #42048: <==closure== 50085 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #47696: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #50085: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #69503: <==closure== 21496 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #12068: <==negation-removal== 42048 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #17253: <==uncertain_firing== 47696 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #24435: <==uncertain_firing== 50085 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #31984: <==uncertain_firing== 14597 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #40057: <==unclosure== 17253 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #49320: <==negation-removal== 21496 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #62452: <==negation-removal== 14463 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62710: <==negation-removal== 14597 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #63082: <==unclosure== 31984 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63825: <==negation-removal== 20005 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65235: <==uncertain_firing== 21496 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #66237: <==negation-removal== 50085 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #70810: <==negation-removal== 47696 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #80673: <==unclosure== 65235 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #86758: <==negation-removal== 69503 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #89505: <==unclosure== 24435 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #14463: <==closure== 47696 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #14597: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #20005: <==closure== 14597 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #21496: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #42048: <==closure== 50085 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #47696: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #50085: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #69503: <==closure== 21496 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #12068: <==negation-removal== 42048 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #17253: <==uncertain_firing== 47696 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #24435: <==uncertain_firing== 50085 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #31984: <==uncertain_firing== 14597 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #40057: <==unclosure== 17253 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #49320: <==negation-removal== 21496 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #62452: <==negation-removal== 14463 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62710: <==negation-removal== 14597 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #63082: <==unclosure== 31984 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63825: <==negation-removal== 20005 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65235: <==uncertain_firing== 21496 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #66237: <==negation-removal== 50085 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #70810: <==negation-removal== 47696 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #80673: <==unclosure== 65235 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #86758: <==negation-removal== 69503 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #89505: <==unclosure== 24435 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #14463: <==closure== 47696 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #14597: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #20005: <==closure== 14597 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #21496: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #42048: <==closure== 50085 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #47696: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #50085: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #69503: <==closure== 21496 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #12068: <==negation-removal== 42048 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #17253: <==uncertain_firing== 47696 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #24435: <==uncertain_firing== 50085 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #31984: <==uncertain_firing== 14597 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #40057: <==unclosure== 17253 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #49320: <==negation-removal== 21496 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #62452: <==negation-removal== 14463 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62710: <==negation-removal== 14597 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #63082: <==unclosure== 31984 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #63825: <==negation-removal== 20005 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65235: <==uncertain_firing== 21496 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #66237: <==negation-removal== 50085 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #70810: <==negation-removal== 47696 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #80673: <==unclosure== 65235 (neg)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #86758: <==negation-removal== 69503 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #89505: <==unclosure== 24435 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #10136: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11961: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #23721: <==closure== 45040 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #35432: <==closure== 11961 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #36245: <==closure== 89226 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #45040: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #67599: <==closure== 10136 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #89226: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #11669: <==negation-removal== 10136 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #15172: <==unclosure== 78933 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #15212: <==negation-removal== 67599 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #22823: <==unclosure== 68871 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #38061: <==negation-removal== 23721 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #40775: <==unclosure== 77469 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #46729: <==negation-removal== 89226 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #51858: <==uncertain_firing== 11961 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #55799: <==negation-removal== 36245 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #58383: <==negation-removal== 11961 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68871: <==uncertain_firing== 45040 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #73133: <==negation-removal== 35432 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77469: <==uncertain_firing== 10136 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #78933: <==uncertain_firing== 89226 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #87505: <==negation-removal== 45040 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87856: <==unclosure== 51858 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #10136: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11961: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #23721: <==closure== 45040 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #35432: <==closure== 11961 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #36245: <==closure== 89226 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #45040: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #67599: <==closure== 10136 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #89226: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #11669: <==negation-removal== 10136 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #15172: <==unclosure== 78933 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #15212: <==negation-removal== 67599 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #22823: <==unclosure== 68871 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #38061: <==negation-removal== 23721 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #40775: <==unclosure== 77469 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #46729: <==negation-removal== 89226 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #51858: <==uncertain_firing== 11961 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #55799: <==negation-removal== 36245 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #58383: <==negation-removal== 11961 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68871: <==uncertain_firing== 45040 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #73133: <==negation-removal== 35432 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77469: <==uncertain_firing== 10136 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #78933: <==uncertain_firing== 89226 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #87505: <==negation-removal== 45040 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87856: <==unclosure== 51858 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #10136: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11961: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #23721: <==closure== 45040 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #35432: <==closure== 11961 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #36245: <==closure== 89226 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #45040: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #67599: <==closure== 10136 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #89226: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #11669: <==negation-removal== 10136 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #15172: <==unclosure== 78933 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #15212: <==negation-removal== 67599 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #22823: <==unclosure== 68871 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #38061: <==negation-removal== 23721 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #40775: <==unclosure== 77469 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #46729: <==negation-removal== 89226 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #51858: <==uncertain_firing== 11961 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #55799: <==negation-removal== 36245 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #58383: <==negation-removal== 11961 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68871: <==uncertain_firing== 45040 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #73133: <==negation-removal== 35432 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77469: <==uncertain_firing== 10136 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #78933: <==uncertain_firing== 89226 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #87505: <==negation-removal== 45040 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87856: <==unclosure== 51858 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #10136: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11961: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #23721: <==closure== 45040 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #35432: <==closure== 11961 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #36245: <==closure== 89226 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #45040: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #67599: <==closure== 10136 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #89226: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #11669: <==negation-removal== 10136 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #15172: <==unclosure== 78933 (neg)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #15212: <==negation-removal== 67599 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #22823: <==unclosure== 68871 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #38061: <==negation-removal== 23721 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #40775: <==unclosure== 77469 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #46729: <==negation-removal== 89226 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #51858: <==uncertain_firing== 11961 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #55799: <==negation-removal== 36245 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #58383: <==negation-removal== 11961 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68871: <==uncertain_firing== 45040 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #73133: <==negation-removal== 35432 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77469: <==uncertain_firing== 10136 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #78933: <==uncertain_firing== 89226 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #87505: <==negation-removal== 45040 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87856: <==unclosure== 51858 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #16506: <==closure== 66515 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #48984: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #63503: <==closure== 48984 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66515: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #66761: <==closure== 91517 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #75511: <==closure== 81224 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #81224: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #91517: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #18979: <==negation-removal== 66761 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #22348: <==uncertain_firing== 66515 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #24085: <==unclosure== 25672 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #25291: <==unclosure== 66476 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #25672: <==uncertain_firing== 91517 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #33246: <==negation-removal== 91517 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #51011: <==unclosure== 22348 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #56942: <==uncertain_firing== 48984 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #60716: <==negation-removal== 81224 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #63612: <==unclosure== 56942 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66476: <==uncertain_firing== 81224 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #70353: <==negation-removal== 63503 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #73807: <==negation-removal== 75511 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #86674: <==negation-removal== 16506 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88148: <==negation-removal== 48984 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #99038: <==negation-removal== 66515 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #16506: <==closure== 66515 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #48984: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #63503: <==closure== 48984 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66515: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #66761: <==closure== 91517 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #75511: <==closure== 81224 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #81224: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #91517: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #18979: <==negation-removal== 66761 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #22348: <==uncertain_firing== 66515 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #24085: <==unclosure== 25672 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #25291: <==unclosure== 66476 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #25672: <==uncertain_firing== 91517 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #33246: <==negation-removal== 91517 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #51011: <==unclosure== 22348 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #56942: <==uncertain_firing== 48984 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #60716: <==negation-removal== 81224 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #63612: <==unclosure== 56942 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66476: <==uncertain_firing== 81224 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #70353: <==negation-removal== 63503 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #73807: <==negation-removal== 75511 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #86674: <==negation-removal== 16506 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88148: <==negation-removal== 48984 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #99038: <==negation-removal== 66515 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #16506: <==closure== 66515 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #48984: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #63503: <==closure== 48984 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66515: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #66761: <==closure== 91517 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #75511: <==closure== 81224 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #81224: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #91517: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #18979: <==negation-removal== 66761 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #22348: <==uncertain_firing== 66515 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #24085: <==unclosure== 25672 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #25291: <==unclosure== 66476 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #25672: <==uncertain_firing== 91517 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #33246: <==negation-removal== 91517 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #51011: <==unclosure== 22348 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #56942: <==uncertain_firing== 48984 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #60716: <==negation-removal== 81224 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #63612: <==unclosure== 56942 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66476: <==uncertain_firing== 81224 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #70353: <==negation-removal== 63503 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #73807: <==negation-removal== 75511 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #86674: <==negation-removal== 16506 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88148: <==negation-removal== 48984 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #99038: <==negation-removal== 66515 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #16506: <==closure== 66515 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #48984: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #63503: <==closure== 48984 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #66515: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #66761: <==closure== 91517 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #75511: <==closure== 81224 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #81224: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #91517: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #18979: <==negation-removal== 66761 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #22348: <==uncertain_firing== 66515 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #24085: <==unclosure== 25672 (neg)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #25291: <==unclosure== 66476 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #25672: <==uncertain_firing== 91517 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #33246: <==negation-removal== 91517 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #51011: <==unclosure== 22348 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #56942: <==uncertain_firing== 48984 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #60716: <==negation-removal== 81224 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #63612: <==unclosure== 56942 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66476: <==uncertain_firing== 81224 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #70353: <==negation-removal== 63503 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #73807: <==negation-removal== 75511 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #86674: <==negation-removal== 16506 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88148: <==negation-removal== 48984 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #99038: <==negation-removal== 66515 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #10126: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #33754: <==closure== 36247 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #36247: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #46987: <==closure== 82646 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #56896: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #57694: <==closure== 10126 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #82646: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #84347: <==closure== 56896 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #10956: <==negation-removal== 82646 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #12725: <==unclosure== 77634 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #14364: <==negation-removal== 56896 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #19437: <==uncertain_firing== 82646 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #23058: <==unclosure== 82669 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #30240: <==negation-removal== 57694 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #33871: <==negation-removal== 33754 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #45660: <==negation-removal== 36247 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #52538: <==negation-removal== 10126 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #53164: <==unclosure== 19437 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #55047: <==unclosure== 70653 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #69996: <==negation-removal== 46987 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #70653: <==uncertain_firing== 10126 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #77634: <==uncertain_firing== 56896 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #82669: <==uncertain_firing== 36247 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #88331: <==negation-removal== 84347 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #10126: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #33754: <==closure== 36247 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #36247: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #46987: <==closure== 82646 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #56896: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #57694: <==closure== 10126 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #82646: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #84347: <==closure== 56896 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #10956: <==negation-removal== 82646 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #12725: <==unclosure== 77634 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #14364: <==negation-removal== 56896 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #19437: <==uncertain_firing== 82646 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #23058: <==unclosure== 82669 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #30240: <==negation-removal== 57694 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #33871: <==negation-removal== 33754 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #45660: <==negation-removal== 36247 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #52538: <==negation-removal== 10126 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #53164: <==unclosure== 19437 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #55047: <==unclosure== 70653 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #69996: <==negation-removal== 46987 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #70653: <==uncertain_firing== 10126 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #77634: <==uncertain_firing== 56896 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #82669: <==uncertain_firing== 36247 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #88331: <==negation-removal== 84347 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #10126: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #33754: <==closure== 36247 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #36247: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #46987: <==closure== 82646 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #56896: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #57694: <==closure== 10126 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #82646: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #84347: <==closure== 56896 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #10956: <==negation-removal== 82646 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #12725: <==unclosure== 77634 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #14364: <==negation-removal== 56896 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #19437: <==uncertain_firing== 82646 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #23058: <==unclosure== 82669 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #30240: <==negation-removal== 57694 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #33871: <==negation-removal== 33754 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #45660: <==negation-removal== 36247 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #52538: <==negation-removal== 10126 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #53164: <==unclosure== 19437 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #55047: <==unclosure== 70653 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #69996: <==negation-removal== 46987 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #70653: <==uncertain_firing== 10126 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #77634: <==uncertain_firing== 56896 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #82669: <==uncertain_firing== 36247 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #88331: <==negation-removal== 84347 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #10126: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #33754: <==closure== 36247 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #36247: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #46987: <==closure== 82646 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #56896: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #57694: <==closure== 10126 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #82646: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #84347: <==closure== 56896 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #10956: <==negation-removal== 82646 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #12725: <==unclosure== 77634 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #14364: <==negation-removal== 56896 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #19437: <==uncertain_firing== 82646 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #23058: <==unclosure== 82669 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #30240: <==negation-removal== 57694 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #33871: <==negation-removal== 33754 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #45660: <==negation-removal== 36247 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #52538: <==negation-removal== 10126 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #53164: <==unclosure== 19437 (neg)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #55047: <==unclosure== 70653 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #69996: <==negation-removal== 46987 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #70653: <==uncertain_firing== 10126 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #77634: <==uncertain_firing== 56896 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #82669: <==uncertain_firing== 36247 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #88331: <==negation-removal== 84347 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #20763: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #27315: <==closure== 36224 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #35092: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #36224: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #43693: <==closure== 84225 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #74181: <==closure== 20763 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #79893: <==closure== 35092 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #84225: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #12888: <==negation-removal== 43693 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #16082: <==negation-removal== 79893 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24823: <==negation-removal== 74181 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #28008: <==uncertain_firing== 84225 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29959: <==negation-removal== 20763 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #32913: <==uncertain_firing== 20763 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #35498: <==negation-removal== 27315 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #35968: <==negation-removal== 36224 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #41830: <==uncertain_firing== 35092 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #57082: <==negation-removal== 35092 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #57947: <==negation-removal== 84225 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67055: <==uncertain_firing== 36224 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #70614: <==unclosure== 32913 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73317: <==unclosure== 28008 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #87131: <==unclosure== 67055 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #87640: <==unclosure== 41830 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #20763: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #27315: <==closure== 36224 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #35092: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #36224: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #43693: <==closure== 84225 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #74181: <==closure== 20763 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #79893: <==closure== 35092 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #84225: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #12888: <==negation-removal== 43693 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #16082: <==negation-removal== 79893 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24823: <==negation-removal== 74181 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #28008: <==uncertain_firing== 84225 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29959: <==negation-removal== 20763 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #32913: <==uncertain_firing== 20763 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #35498: <==negation-removal== 27315 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #35968: <==negation-removal== 36224 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #41830: <==uncertain_firing== 35092 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #57082: <==negation-removal== 35092 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #57947: <==negation-removal== 84225 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67055: <==uncertain_firing== 36224 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #70614: <==unclosure== 32913 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73317: <==unclosure== 28008 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #87131: <==unclosure== 67055 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #87640: <==unclosure== 41830 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #20763: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #27315: <==closure== 36224 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #35092: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #36224: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #43693: <==closure== 84225 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #74181: <==closure== 20763 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #79893: <==closure== 35092 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #84225: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #12888: <==negation-removal== 43693 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #16082: <==negation-removal== 79893 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24823: <==negation-removal== 74181 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #28008: <==uncertain_firing== 84225 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29959: <==negation-removal== 20763 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #32913: <==uncertain_firing== 20763 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #35498: <==negation-removal== 27315 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #35968: <==negation-removal== 36224 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #41830: <==uncertain_firing== 35092 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #57082: <==negation-removal== 35092 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #57947: <==negation-removal== 84225 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67055: <==uncertain_firing== 36224 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #70614: <==unclosure== 32913 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73317: <==unclosure== 28008 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #87131: <==unclosure== 67055 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #87640: <==unclosure== 41830 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #20763: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #27315: <==closure== 36224 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #35092: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #36224: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #43693: <==closure== 84225 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #74181: <==closure== 20763 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #79893: <==closure== 35092 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #84225: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #12888: <==negation-removal== 43693 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #16082: <==negation-removal== 79893 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #24823: <==negation-removal== 74181 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #28008: <==uncertain_firing== 84225 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29959: <==negation-removal== 20763 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #32913: <==uncertain_firing== 20763 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #35498: <==negation-removal== 27315 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #35968: <==negation-removal== 36224 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #41830: <==uncertain_firing== 35092 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #57082: <==negation-removal== 35092 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #57947: <==negation-removal== 84225 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67055: <==uncertain_firing== 36224 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #70614: <==unclosure== 32913 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73317: <==unclosure== 28008 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #87131: <==unclosure== 67055 (neg)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #87640: <==unclosure== 41830 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #21963: origin
                    (Bb_survivorat_s_p1)

                    ; #37185: <==closure== 66335 (pos)
                    (Pc_survivorat_s_p1)

                    ; #44667: <==closure== 47401 (pos)
                    (Pa_survivorat_s_p1)

                    ; #47401: origin
                    (Ba_survivorat_s_p1)

                    ; #65686: origin
                    (Bd_survivorat_s_p1)

                    ; #66335: origin
                    (Bc_survivorat_s_p1)

                    ; #77535: <==closure== 65686 (pos)
                    (Pd_survivorat_s_p1)

                    ; #81417: <==closure== 21963 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14246: <==negation-removal== 81417 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #14783: <==negation-removal== 66335 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #22324: <==negation-removal== 65686 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #30212: <==negation-removal== 44667 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50142: <==negation-removal== 21963 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #57350: <==negation-removal== 47401 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #62484: <==negation-removal== 37185 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #66302: <==negation-removal== 77535 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #21963: origin
                    (Bb_survivorat_s_p1)

                    ; #37185: <==closure== 66335 (pos)
                    (Pc_survivorat_s_p1)

                    ; #44667: <==closure== 47401 (pos)
                    (Pa_survivorat_s_p1)

                    ; #47401: origin
                    (Ba_survivorat_s_p1)

                    ; #65686: origin
                    (Bd_survivorat_s_p1)

                    ; #66335: origin
                    (Bc_survivorat_s_p1)

                    ; #77535: <==closure== 65686 (pos)
                    (Pd_survivorat_s_p1)

                    ; #81417: <==closure== 21963 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14246: <==negation-removal== 81417 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #14783: <==negation-removal== 66335 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #22324: <==negation-removal== 65686 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #30212: <==negation-removal== 44667 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50142: <==negation-removal== 21963 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #57350: <==negation-removal== 47401 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #62484: <==negation-removal== 37185 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #66302: <==negation-removal== 77535 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #21963: origin
                    (Bb_survivorat_s_p1)

                    ; #37185: <==closure== 66335 (pos)
                    (Pc_survivorat_s_p1)

                    ; #44667: <==closure== 47401 (pos)
                    (Pa_survivorat_s_p1)

                    ; #47401: origin
                    (Ba_survivorat_s_p1)

                    ; #65686: origin
                    (Bd_survivorat_s_p1)

                    ; #66335: origin
                    (Bc_survivorat_s_p1)

                    ; #77535: <==closure== 65686 (pos)
                    (Pd_survivorat_s_p1)

                    ; #81417: <==closure== 21963 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14246: <==negation-removal== 81417 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #14783: <==negation-removal== 66335 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #22324: <==negation-removal== 65686 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #30212: <==negation-removal== 44667 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50142: <==negation-removal== 21963 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #57350: <==negation-removal== 47401 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #62484: <==negation-removal== 37185 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #66302: <==negation-removal== 77535 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #21963: origin
                    (Bb_survivorat_s_p1)

                    ; #37185: <==closure== 66335 (pos)
                    (Pc_survivorat_s_p1)

                    ; #44667: <==closure== 47401 (pos)
                    (Pa_survivorat_s_p1)

                    ; #47401: origin
                    (Ba_survivorat_s_p1)

                    ; #65686: origin
                    (Bd_survivorat_s_p1)

                    ; #66335: origin
                    (Bc_survivorat_s_p1)

                    ; #77535: <==closure== 65686 (pos)
                    (Pd_survivorat_s_p1)

                    ; #81417: <==closure== 21963 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14246: <==negation-removal== 81417 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #14783: <==negation-removal== 66335 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #22324: <==negation-removal== 65686 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #30212: <==negation-removal== 44667 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50142: <==negation-removal== 21963 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #57350: <==negation-removal== 47401 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #62484: <==negation-removal== 37185 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #66302: <==negation-removal== 77535 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #10962: origin
                    (Bb_survivorat_s_p2)

                    ; #23218: origin
                    (Bd_survivorat_s_p2)

                    ; #41616: <==closure== 88636 (pos)
                    (Pa_survivorat_s_p2)

                    ; #44275: origin
                    (Bc_survivorat_s_p2)

                    ; #53347: <==closure== 44275 (pos)
                    (Pc_survivorat_s_p2)

                    ; #58553: <==closure== 23218 (pos)
                    (Pd_survivorat_s_p2)

                    ; #79009: <==closure== 10962 (pos)
                    (Pb_survivorat_s_p2)

                    ; #88636: origin
                    (Ba_survivorat_s_p2)

                    ; #18380: <==negation-removal== 58553 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #31355: <==negation-removal== 44275 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #37838: <==negation-removal== 53347 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #52347: <==negation-removal== 88636 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #56306: <==negation-removal== 79009 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #57149: <==negation-removal== 41616 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #63280: <==negation-removal== 10962 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70516: <==negation-removal== 23218 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #10962: origin
                    (Bb_survivorat_s_p2)

                    ; #23218: origin
                    (Bd_survivorat_s_p2)

                    ; #41616: <==closure== 88636 (pos)
                    (Pa_survivorat_s_p2)

                    ; #44275: origin
                    (Bc_survivorat_s_p2)

                    ; #53347: <==closure== 44275 (pos)
                    (Pc_survivorat_s_p2)

                    ; #58553: <==closure== 23218 (pos)
                    (Pd_survivorat_s_p2)

                    ; #79009: <==closure== 10962 (pos)
                    (Pb_survivorat_s_p2)

                    ; #88636: origin
                    (Ba_survivorat_s_p2)

                    ; #18380: <==negation-removal== 58553 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #31355: <==negation-removal== 44275 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #37838: <==negation-removal== 53347 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #52347: <==negation-removal== 88636 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #56306: <==negation-removal== 79009 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #57149: <==negation-removal== 41616 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #63280: <==negation-removal== 10962 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70516: <==negation-removal== 23218 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #10962: origin
                    (Bb_survivorat_s_p2)

                    ; #23218: origin
                    (Bd_survivorat_s_p2)

                    ; #41616: <==closure== 88636 (pos)
                    (Pa_survivorat_s_p2)

                    ; #44275: origin
                    (Bc_survivorat_s_p2)

                    ; #53347: <==closure== 44275 (pos)
                    (Pc_survivorat_s_p2)

                    ; #58553: <==closure== 23218 (pos)
                    (Pd_survivorat_s_p2)

                    ; #79009: <==closure== 10962 (pos)
                    (Pb_survivorat_s_p2)

                    ; #88636: origin
                    (Ba_survivorat_s_p2)

                    ; #18380: <==negation-removal== 58553 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #31355: <==negation-removal== 44275 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #37838: <==negation-removal== 53347 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #52347: <==negation-removal== 88636 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #56306: <==negation-removal== 79009 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #57149: <==negation-removal== 41616 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #63280: <==negation-removal== 10962 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70516: <==negation-removal== 23218 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #10962: origin
                    (Bb_survivorat_s_p2)

                    ; #23218: origin
                    (Bd_survivorat_s_p2)

                    ; #41616: <==closure== 88636 (pos)
                    (Pa_survivorat_s_p2)

                    ; #44275: origin
                    (Bc_survivorat_s_p2)

                    ; #53347: <==closure== 44275 (pos)
                    (Pc_survivorat_s_p2)

                    ; #58553: <==closure== 23218 (pos)
                    (Pd_survivorat_s_p2)

                    ; #79009: <==closure== 10962 (pos)
                    (Pb_survivorat_s_p2)

                    ; #88636: origin
                    (Ba_survivorat_s_p2)

                    ; #18380: <==negation-removal== 58553 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #31355: <==negation-removal== 44275 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #37838: <==negation-removal== 53347 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #52347: <==negation-removal== 88636 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #56306: <==negation-removal== 79009 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #57149: <==negation-removal== 41616 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #63280: <==negation-removal== 10962 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70516: <==negation-removal== 23218 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #21798: <==closure== 55087 (pos)
                    (Pc_survivorat_s_p3)

                    ; #25053: origin
                    (Ba_survivorat_s_p3)

                    ; #25594: <==closure== 25053 (pos)
                    (Pa_survivorat_s_p3)

                    ; #55087: origin
                    (Bc_survivorat_s_p3)

                    ; #55774: origin
                    (Bd_survivorat_s_p3)

                    ; #57119: <==closure== 65850 (pos)
                    (Pb_survivorat_s_p3)

                    ; #65850: origin
                    (Bb_survivorat_s_p3)

                    ; #82033: <==closure== 55774 (pos)
                    (Pd_survivorat_s_p3)

                    ; #14407: <==negation-removal== 21798 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #26539: <==negation-removal== 65850 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31192: <==negation-removal== 55774 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #37640: <==negation-removal== 25594 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #46356: <==negation-removal== 82033 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #75403: <==negation-removal== 25053 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #80193: <==negation-removal== 57119 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #91077: <==negation-removal== 55087 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #21798: <==closure== 55087 (pos)
                    (Pc_survivorat_s_p3)

                    ; #25053: origin
                    (Ba_survivorat_s_p3)

                    ; #25594: <==closure== 25053 (pos)
                    (Pa_survivorat_s_p3)

                    ; #55087: origin
                    (Bc_survivorat_s_p3)

                    ; #55774: origin
                    (Bd_survivorat_s_p3)

                    ; #57119: <==closure== 65850 (pos)
                    (Pb_survivorat_s_p3)

                    ; #65850: origin
                    (Bb_survivorat_s_p3)

                    ; #82033: <==closure== 55774 (pos)
                    (Pd_survivorat_s_p3)

                    ; #14407: <==negation-removal== 21798 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #26539: <==negation-removal== 65850 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31192: <==negation-removal== 55774 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #37640: <==negation-removal== 25594 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #46356: <==negation-removal== 82033 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #75403: <==negation-removal== 25053 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #80193: <==negation-removal== 57119 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #91077: <==negation-removal== 55087 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #21798: <==closure== 55087 (pos)
                    (Pc_survivorat_s_p3)

                    ; #25053: origin
                    (Ba_survivorat_s_p3)

                    ; #25594: <==closure== 25053 (pos)
                    (Pa_survivorat_s_p3)

                    ; #55087: origin
                    (Bc_survivorat_s_p3)

                    ; #55774: origin
                    (Bd_survivorat_s_p3)

                    ; #57119: <==closure== 65850 (pos)
                    (Pb_survivorat_s_p3)

                    ; #65850: origin
                    (Bb_survivorat_s_p3)

                    ; #82033: <==closure== 55774 (pos)
                    (Pd_survivorat_s_p3)

                    ; #14407: <==negation-removal== 21798 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #26539: <==negation-removal== 65850 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31192: <==negation-removal== 55774 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #37640: <==negation-removal== 25594 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #46356: <==negation-removal== 82033 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #75403: <==negation-removal== 25053 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #80193: <==negation-removal== 57119 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #91077: <==negation-removal== 55087 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #21798: <==closure== 55087 (pos)
                    (Pc_survivorat_s_p3)

                    ; #25053: origin
                    (Ba_survivorat_s_p3)

                    ; #25594: <==closure== 25053 (pos)
                    (Pa_survivorat_s_p3)

                    ; #55087: origin
                    (Bc_survivorat_s_p3)

                    ; #55774: origin
                    (Bd_survivorat_s_p3)

                    ; #57119: <==closure== 65850 (pos)
                    (Pb_survivorat_s_p3)

                    ; #65850: origin
                    (Bb_survivorat_s_p3)

                    ; #82033: <==closure== 55774 (pos)
                    (Pd_survivorat_s_p3)

                    ; #14407: <==negation-removal== 21798 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #26539: <==negation-removal== 65850 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31192: <==negation-removal== 55774 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #37640: <==negation-removal== 25594 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #46356: <==negation-removal== 82033 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #75403: <==negation-removal== 25053 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #80193: <==negation-removal== 57119 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #91077: <==negation-removal== 55087 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #27265: origin
                    (Ba_survivorat_s_p4)

                    ; #28258: <==closure== 39710 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28719: <==closure== 73114 (pos)
                    (Pd_survivorat_s_p4)

                    ; #39710: origin
                    (Bb_survivorat_s_p4)

                    ; #55104: <==closure== 27265 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73114: origin
                    (Bd_survivorat_s_p4)

                    ; #77267: origin
                    (Bc_survivorat_s_p4)

                    ; #87310: <==closure== 77267 (pos)
                    (Pc_survivorat_s_p4)

                    ; #25125: <==negation-removal== 77267 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #26351: <==negation-removal== 39710 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #29348: <==negation-removal== 28258 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #39548: <==negation-removal== 87310 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #48037: <==negation-removal== 55104 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67671: <==negation-removal== 27265 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #81655: <==negation-removal== 28719 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #81792: <==negation-removal== 73114 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #27265: origin
                    (Ba_survivorat_s_p4)

                    ; #28258: <==closure== 39710 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28719: <==closure== 73114 (pos)
                    (Pd_survivorat_s_p4)

                    ; #39710: origin
                    (Bb_survivorat_s_p4)

                    ; #55104: <==closure== 27265 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73114: origin
                    (Bd_survivorat_s_p4)

                    ; #77267: origin
                    (Bc_survivorat_s_p4)

                    ; #87310: <==closure== 77267 (pos)
                    (Pc_survivorat_s_p4)

                    ; #25125: <==negation-removal== 77267 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #26351: <==negation-removal== 39710 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #29348: <==negation-removal== 28258 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #39548: <==negation-removal== 87310 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #48037: <==negation-removal== 55104 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67671: <==negation-removal== 27265 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #81655: <==negation-removal== 28719 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #81792: <==negation-removal== 73114 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #27265: origin
                    (Ba_survivorat_s_p4)

                    ; #28258: <==closure== 39710 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28719: <==closure== 73114 (pos)
                    (Pd_survivorat_s_p4)

                    ; #39710: origin
                    (Bb_survivorat_s_p4)

                    ; #55104: <==closure== 27265 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73114: origin
                    (Bd_survivorat_s_p4)

                    ; #77267: origin
                    (Bc_survivorat_s_p4)

                    ; #87310: <==closure== 77267 (pos)
                    (Pc_survivorat_s_p4)

                    ; #25125: <==negation-removal== 77267 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #26351: <==negation-removal== 39710 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #29348: <==negation-removal== 28258 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #39548: <==negation-removal== 87310 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #48037: <==negation-removal== 55104 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67671: <==negation-removal== 27265 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #81655: <==negation-removal== 28719 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #81792: <==negation-removal== 73114 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4)
                           (at_d_p4))
        :effect (and
                    ; #27265: origin
                    (Ba_survivorat_s_p4)

                    ; #28258: <==closure== 39710 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28719: <==closure== 73114 (pos)
                    (Pd_survivorat_s_p4)

                    ; #39710: origin
                    (Bb_survivorat_s_p4)

                    ; #55104: <==closure== 27265 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73114: origin
                    (Bd_survivorat_s_p4)

                    ; #77267: origin
                    (Bc_survivorat_s_p4)

                    ; #87310: <==closure== 77267 (pos)
                    (Pc_survivorat_s_p4)

                    ; #25125: <==negation-removal== 77267 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #26351: <==negation-removal== 39710 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #29348: <==negation-removal== 28258 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #39548: <==negation-removal== 87310 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #48037: <==negation-removal== 55104 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67671: <==negation-removal== 27265 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #81655: <==negation-removal== 28719 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #81792: <==negation-removal== 73114 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #12180: <==closure== 30080 (pos)
                    (Pb_survivorat_s_p5)

                    ; #14797: <==closure== 23473 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23473: origin
                    (Bc_survivorat_s_p5)

                    ; #30080: origin
                    (Bb_survivorat_s_p5)

                    ; #51593: <==closure== 76101 (pos)
                    (Pd_survivorat_s_p5)

                    ; #73855: origin
                    (Ba_survivorat_s_p5)

                    ; #76101: origin
                    (Bd_survivorat_s_p5)

                    ; #89712: <==closure== 73855 (pos)
                    (Pa_survivorat_s_p5)

                    ; #22633: <==negation-removal== 14797 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #36275: <==negation-removal== 51593 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #50760: <==negation-removal== 30080 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #64527: <==negation-removal== 76101 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #65566: <==negation-removal== 12180 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #74658: <==negation-removal== 89712 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81641: <==negation-removal== 73855 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #91191: <==negation-removal== 23473 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #12180: <==closure== 30080 (pos)
                    (Pb_survivorat_s_p5)

                    ; #14797: <==closure== 23473 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23473: origin
                    (Bc_survivorat_s_p5)

                    ; #30080: origin
                    (Bb_survivorat_s_p5)

                    ; #51593: <==closure== 76101 (pos)
                    (Pd_survivorat_s_p5)

                    ; #73855: origin
                    (Ba_survivorat_s_p5)

                    ; #76101: origin
                    (Bd_survivorat_s_p5)

                    ; #89712: <==closure== 73855 (pos)
                    (Pa_survivorat_s_p5)

                    ; #22633: <==negation-removal== 14797 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #36275: <==negation-removal== 51593 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #50760: <==negation-removal== 30080 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #64527: <==negation-removal== 76101 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #65566: <==negation-removal== 12180 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #74658: <==negation-removal== 89712 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81641: <==negation-removal== 73855 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #91191: <==negation-removal== 23473 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #12180: <==closure== 30080 (pos)
                    (Pb_survivorat_s_p5)

                    ; #14797: <==closure== 23473 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23473: origin
                    (Bc_survivorat_s_p5)

                    ; #30080: origin
                    (Bb_survivorat_s_p5)

                    ; #51593: <==closure== 76101 (pos)
                    (Pd_survivorat_s_p5)

                    ; #73855: origin
                    (Ba_survivorat_s_p5)

                    ; #76101: origin
                    (Bd_survivorat_s_p5)

                    ; #89712: <==closure== 73855 (pos)
                    (Pa_survivorat_s_p5)

                    ; #22633: <==negation-removal== 14797 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #36275: <==negation-removal== 51593 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #50760: <==negation-removal== 30080 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #64527: <==negation-removal== 76101 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #65566: <==negation-removal== 12180 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #74658: <==negation-removal== 89712 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81641: <==negation-removal== 73855 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #91191: <==negation-removal== 23473 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #12180: <==closure== 30080 (pos)
                    (Pb_survivorat_s_p5)

                    ; #14797: <==closure== 23473 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23473: origin
                    (Bc_survivorat_s_p5)

                    ; #30080: origin
                    (Bb_survivorat_s_p5)

                    ; #51593: <==closure== 76101 (pos)
                    (Pd_survivorat_s_p5)

                    ; #73855: origin
                    (Ba_survivorat_s_p5)

                    ; #76101: origin
                    (Bd_survivorat_s_p5)

                    ; #89712: <==closure== 73855 (pos)
                    (Pa_survivorat_s_p5)

                    ; #22633: <==negation-removal== 14797 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #36275: <==negation-removal== 51593 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #50760: <==negation-removal== 30080 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #64527: <==negation-removal== 76101 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #65566: <==negation-removal== 12180 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #74658: <==negation-removal== 89712 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81641: <==negation-removal== 73855 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #91191: <==negation-removal== 23473 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #10790: <==closure== 83591 (pos)
                    (Pd_survivorat_s_p6)

                    ; #23312: origin
                    (Ba_survivorat_s_p6)

                    ; #30183: <==closure== 23312 (pos)
                    (Pa_survivorat_s_p6)

                    ; #39139: origin
                    (Bb_survivorat_s_p6)

                    ; #39955: <==closure== 39139 (pos)
                    (Pb_survivorat_s_p6)

                    ; #67669: origin
                    (Bc_survivorat_s_p6)

                    ; #68258: <==closure== 67669 (pos)
                    (Pc_survivorat_s_p6)

                    ; #83591: origin
                    (Bd_survivorat_s_p6)

                    ; #12396: <==negation-removal== 30183 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #31700: <==negation-removal== 83591 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #32956: <==negation-removal== 67669 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #36168: <==negation-removal== 39955 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #59116: <==negation-removal== 68258 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #66475: <==negation-removal== 23312 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #67864: <==negation-removal== 10790 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #80458: <==negation-removal== 39139 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #10790: <==closure== 83591 (pos)
                    (Pd_survivorat_s_p6)

                    ; #23312: origin
                    (Ba_survivorat_s_p6)

                    ; #30183: <==closure== 23312 (pos)
                    (Pa_survivorat_s_p6)

                    ; #39139: origin
                    (Bb_survivorat_s_p6)

                    ; #39955: <==closure== 39139 (pos)
                    (Pb_survivorat_s_p6)

                    ; #67669: origin
                    (Bc_survivorat_s_p6)

                    ; #68258: <==closure== 67669 (pos)
                    (Pc_survivorat_s_p6)

                    ; #83591: origin
                    (Bd_survivorat_s_p6)

                    ; #12396: <==negation-removal== 30183 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #31700: <==negation-removal== 83591 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #32956: <==negation-removal== 67669 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #36168: <==negation-removal== 39955 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #59116: <==negation-removal== 68258 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #66475: <==negation-removal== 23312 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #67864: <==negation-removal== 10790 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #80458: <==negation-removal== 39139 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #10790: <==closure== 83591 (pos)
                    (Pd_survivorat_s_p6)

                    ; #23312: origin
                    (Ba_survivorat_s_p6)

                    ; #30183: <==closure== 23312 (pos)
                    (Pa_survivorat_s_p6)

                    ; #39139: origin
                    (Bb_survivorat_s_p6)

                    ; #39955: <==closure== 39139 (pos)
                    (Pb_survivorat_s_p6)

                    ; #67669: origin
                    (Bc_survivorat_s_p6)

                    ; #68258: <==closure== 67669 (pos)
                    (Pc_survivorat_s_p6)

                    ; #83591: origin
                    (Bd_survivorat_s_p6)

                    ; #12396: <==negation-removal== 30183 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #31700: <==negation-removal== 83591 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #32956: <==negation-removal== 67669 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #36168: <==negation-removal== 39955 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #59116: <==negation-removal== 68258 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #66475: <==negation-removal== 23312 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #67864: <==negation-removal== 10790 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #80458: <==negation-removal== 39139 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (at_d_p6)
                           (Pd_survivorat_s_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #10790: <==closure== 83591 (pos)
                    (Pd_survivorat_s_p6)

                    ; #23312: origin
                    (Ba_survivorat_s_p6)

                    ; #30183: <==closure== 23312 (pos)
                    (Pa_survivorat_s_p6)

                    ; #39139: origin
                    (Bb_survivorat_s_p6)

                    ; #39955: <==closure== 39139 (pos)
                    (Pb_survivorat_s_p6)

                    ; #67669: origin
                    (Bc_survivorat_s_p6)

                    ; #68258: <==closure== 67669 (pos)
                    (Pc_survivorat_s_p6)

                    ; #83591: origin
                    (Bd_survivorat_s_p6)

                    ; #12396: <==negation-removal== 30183 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #31700: <==negation-removal== 83591 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #32956: <==negation-removal== 67669 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #36168: <==negation-removal== 39955 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #59116: <==negation-removal== 68258 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #66475: <==negation-removal== 23312 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #67864: <==negation-removal== 10790 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #80458: <==negation-removal== 39139 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #10895: <==closure== 20786 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14373: origin
                    (Bc_survivorat_s_p7)

                    ; #19382: origin
                    (Bb_survivorat_s_p7)

                    ; #20786: origin
                    (Ba_survivorat_s_p7)

                    ; #25544: origin
                    (Bd_survivorat_s_p7)

                    ; #60142: <==closure== 19382 (pos)
                    (Pb_survivorat_s_p7)

                    ; #88735: <==closure== 25544 (pos)
                    (Pd_survivorat_s_p7)

                    ; #91336: <==closure== 14373 (pos)
                    (Pc_survivorat_s_p7)

                    ; #13913: <==negation-removal== 14373 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #18118: <==negation-removal== 10895 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #41276: <==negation-removal== 19382 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #50049: <==negation-removal== 60142 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #55062: <==negation-removal== 91336 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56294: <==negation-removal== 20786 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #68768: <==negation-removal== 25544 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #84685: <==negation-removal== 88735 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #10895: <==closure== 20786 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14373: origin
                    (Bc_survivorat_s_p7)

                    ; #19382: origin
                    (Bb_survivorat_s_p7)

                    ; #20786: origin
                    (Ba_survivorat_s_p7)

                    ; #25544: origin
                    (Bd_survivorat_s_p7)

                    ; #60142: <==closure== 19382 (pos)
                    (Pb_survivorat_s_p7)

                    ; #88735: <==closure== 25544 (pos)
                    (Pd_survivorat_s_p7)

                    ; #91336: <==closure== 14373 (pos)
                    (Pc_survivorat_s_p7)

                    ; #13913: <==negation-removal== 14373 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #18118: <==negation-removal== 10895 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #41276: <==negation-removal== 19382 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #50049: <==negation-removal== 60142 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #55062: <==negation-removal== 91336 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56294: <==negation-removal== 20786 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #68768: <==negation-removal== 25544 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #84685: <==negation-removal== 88735 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #10895: <==closure== 20786 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14373: origin
                    (Bc_survivorat_s_p7)

                    ; #19382: origin
                    (Bb_survivorat_s_p7)

                    ; #20786: origin
                    (Ba_survivorat_s_p7)

                    ; #25544: origin
                    (Bd_survivorat_s_p7)

                    ; #60142: <==closure== 19382 (pos)
                    (Pb_survivorat_s_p7)

                    ; #88735: <==closure== 25544 (pos)
                    (Pd_survivorat_s_p7)

                    ; #91336: <==closure== 14373 (pos)
                    (Pc_survivorat_s_p7)

                    ; #13913: <==negation-removal== 14373 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #18118: <==negation-removal== 10895 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #41276: <==negation-removal== 19382 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #50049: <==negation-removal== 60142 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #55062: <==negation-removal== 91336 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56294: <==negation-removal== 20786 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #68768: <==negation-removal== 25544 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #84685: <==negation-removal== 88735 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #10895: <==closure== 20786 (pos)
                    (Pa_survivorat_s_p7)

                    ; #14373: origin
                    (Bc_survivorat_s_p7)

                    ; #19382: origin
                    (Bb_survivorat_s_p7)

                    ; #20786: origin
                    (Ba_survivorat_s_p7)

                    ; #25544: origin
                    (Bd_survivorat_s_p7)

                    ; #60142: <==closure== 19382 (pos)
                    (Pb_survivorat_s_p7)

                    ; #88735: <==closure== 25544 (pos)
                    (Pd_survivorat_s_p7)

                    ; #91336: <==closure== 14373 (pos)
                    (Pc_survivorat_s_p7)

                    ; #13913: <==negation-removal== 14373 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #18118: <==negation-removal== 10895 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #41276: <==negation-removal== 19382 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #50049: <==negation-removal== 60142 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #55062: <==negation-removal== 91336 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #56294: <==negation-removal== 20786 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #68768: <==negation-removal== 25544 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #84685: <==negation-removal== 88735 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #27233: <==closure== 64046 (pos)
                    (Pa_survivorat_s_p8)

                    ; #37836: origin
                    (Bc_survivorat_s_p8)

                    ; #39543: <==closure== 76632 (pos)
                    (Pb_survivorat_s_p8)

                    ; #44499: <==closure== 37836 (pos)
                    (Pc_survivorat_s_p8)

                    ; #47412: <==closure== 66998 (pos)
                    (Pd_survivorat_s_p8)

                    ; #64046: origin
                    (Ba_survivorat_s_p8)

                    ; #66998: origin
                    (Bd_survivorat_s_p8)

                    ; #76632: origin
                    (Bb_survivorat_s_p8)

                    ; #17098: <==negation-removal== 47412 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42344: <==negation-removal== 76632 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42612: <==negation-removal== 64046 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #44681: <==negation-removal== 37836 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #50243: <==negation-removal== 39543 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85245: <==negation-removal== 66998 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #85651: <==negation-removal== 27233 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #86741: <==negation-removal== 44499 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #27233: <==closure== 64046 (pos)
                    (Pa_survivorat_s_p8)

                    ; #37836: origin
                    (Bc_survivorat_s_p8)

                    ; #39543: <==closure== 76632 (pos)
                    (Pb_survivorat_s_p8)

                    ; #44499: <==closure== 37836 (pos)
                    (Pc_survivorat_s_p8)

                    ; #47412: <==closure== 66998 (pos)
                    (Pd_survivorat_s_p8)

                    ; #64046: origin
                    (Ba_survivorat_s_p8)

                    ; #66998: origin
                    (Bd_survivorat_s_p8)

                    ; #76632: origin
                    (Bb_survivorat_s_p8)

                    ; #17098: <==negation-removal== 47412 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42344: <==negation-removal== 76632 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42612: <==negation-removal== 64046 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #44681: <==negation-removal== 37836 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #50243: <==negation-removal== 39543 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85245: <==negation-removal== 66998 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #85651: <==negation-removal== 27233 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #86741: <==negation-removal== 44499 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #27233: <==closure== 64046 (pos)
                    (Pa_survivorat_s_p8)

                    ; #37836: origin
                    (Bc_survivorat_s_p8)

                    ; #39543: <==closure== 76632 (pos)
                    (Pb_survivorat_s_p8)

                    ; #44499: <==closure== 37836 (pos)
                    (Pc_survivorat_s_p8)

                    ; #47412: <==closure== 66998 (pos)
                    (Pd_survivorat_s_p8)

                    ; #64046: origin
                    (Ba_survivorat_s_p8)

                    ; #66998: origin
                    (Bd_survivorat_s_p8)

                    ; #76632: origin
                    (Bb_survivorat_s_p8)

                    ; #17098: <==negation-removal== 47412 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42344: <==negation-removal== 76632 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42612: <==negation-removal== 64046 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #44681: <==negation-removal== 37836 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #50243: <==negation-removal== 39543 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85245: <==negation-removal== 66998 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #85651: <==negation-removal== 27233 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #86741: <==negation-removal== 44499 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #27233: <==closure== 64046 (pos)
                    (Pa_survivorat_s_p8)

                    ; #37836: origin
                    (Bc_survivorat_s_p8)

                    ; #39543: <==closure== 76632 (pos)
                    (Pb_survivorat_s_p8)

                    ; #44499: <==closure== 37836 (pos)
                    (Pc_survivorat_s_p8)

                    ; #47412: <==closure== 66998 (pos)
                    (Pd_survivorat_s_p8)

                    ; #64046: origin
                    (Ba_survivorat_s_p8)

                    ; #66998: origin
                    (Bd_survivorat_s_p8)

                    ; #76632: origin
                    (Bb_survivorat_s_p8)

                    ; #17098: <==negation-removal== 47412 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42344: <==negation-removal== 76632 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42612: <==negation-removal== 64046 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #44681: <==negation-removal== 37836 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #50243: <==negation-removal== 39543 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85245: <==negation-removal== 66998 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #85651: <==negation-removal== 27233 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #86741: <==negation-removal== 44499 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #21873: <==closure== 67832 (pos)
                    (Pd_survivorat_s_p9)

                    ; #43656: origin
                    (Bb_survivorat_s_p9)

                    ; #51913: <==closure== 43656 (pos)
                    (Pb_survivorat_s_p9)

                    ; #67832: origin
                    (Bd_survivorat_s_p9)

                    ; #80514: origin
                    (Ba_survivorat_s_p9)

                    ; #80752: <==closure== 80514 (pos)
                    (Pa_survivorat_s_p9)

                    ; #85099: <==closure== 86650 (pos)
                    (Pc_survivorat_s_p9)

                    ; #86650: origin
                    (Bc_survivorat_s_p9)

                    ; #12700: <==negation-removal== 21873 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #27717: <==negation-removal== 43656 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #59667: <==negation-removal== 85099 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79980: <==negation-removal== 86650 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #82684: <==negation-removal== 80752 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #83028: <==negation-removal== 67832 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #86612: <==negation-removal== 51913 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #89195: <==negation-removal== 80514 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #21873: <==closure== 67832 (pos)
                    (Pd_survivorat_s_p9)

                    ; #43656: origin
                    (Bb_survivorat_s_p9)

                    ; #51913: <==closure== 43656 (pos)
                    (Pb_survivorat_s_p9)

                    ; #67832: origin
                    (Bd_survivorat_s_p9)

                    ; #80514: origin
                    (Ba_survivorat_s_p9)

                    ; #80752: <==closure== 80514 (pos)
                    (Pa_survivorat_s_p9)

                    ; #85099: <==closure== 86650 (pos)
                    (Pc_survivorat_s_p9)

                    ; #86650: origin
                    (Bc_survivorat_s_p9)

                    ; #12700: <==negation-removal== 21873 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #27717: <==negation-removal== 43656 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #59667: <==negation-removal== 85099 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79980: <==negation-removal== 86650 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #82684: <==negation-removal== 80752 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #83028: <==negation-removal== 67832 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #86612: <==negation-removal== 51913 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #89195: <==negation-removal== 80514 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #21873: <==closure== 67832 (pos)
                    (Pd_survivorat_s_p9)

                    ; #43656: origin
                    (Bb_survivorat_s_p9)

                    ; #51913: <==closure== 43656 (pos)
                    (Pb_survivorat_s_p9)

                    ; #67832: origin
                    (Bd_survivorat_s_p9)

                    ; #80514: origin
                    (Ba_survivorat_s_p9)

                    ; #80752: <==closure== 80514 (pos)
                    (Pa_survivorat_s_p9)

                    ; #85099: <==closure== 86650 (pos)
                    (Pc_survivorat_s_p9)

                    ; #86650: origin
                    (Bc_survivorat_s_p9)

                    ; #12700: <==negation-removal== 21873 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #27717: <==negation-removal== 43656 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #59667: <==negation-removal== 85099 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79980: <==negation-removal== 86650 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #82684: <==negation-removal== 80752 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #83028: <==negation-removal== 67832 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #86612: <==negation-removal== 51913 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #89195: <==negation-removal== 80514 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #21873: <==closure== 67832 (pos)
                    (Pd_survivorat_s_p9)

                    ; #43656: origin
                    (Bb_survivorat_s_p9)

                    ; #51913: <==closure== 43656 (pos)
                    (Pb_survivorat_s_p9)

                    ; #67832: origin
                    (Bd_survivorat_s_p9)

                    ; #80514: origin
                    (Ba_survivorat_s_p9)

                    ; #80752: <==closure== 80514 (pos)
                    (Pa_survivorat_s_p9)

                    ; #85099: <==closure== 86650 (pos)
                    (Pc_survivorat_s_p9)

                    ; #86650: origin
                    (Bc_survivorat_s_p9)

                    ; #12700: <==negation-removal== 21873 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #27717: <==negation-removal== 43656 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #59667: <==negation-removal== 85099 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #79980: <==negation-removal== 86650 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #82684: <==negation-removal== 80752 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #83028: <==negation-removal== 67832 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #86612: <==negation-removal== 51913 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #89195: <==negation-removal== 80514 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #17059: origin
                    (not_at_a_p1)

                    ; #21311: origin
                    (at_a_p1)

                    ; #17059: <==negation-removal== 21311 (pos)
                    (not (not_at_a_p1))

                    ; #21311: <==negation-removal== 17059 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #17059: origin
                    (not_at_a_p1)

                    ; #42351: origin
                    (at_a_p2)

                    ; #21311: <==negation-removal== 17059 (pos)
                    (not (at_a_p1))

                    ; #33796: <==negation-removal== 42351 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #17059: origin
                    (not_at_a_p1)

                    ; #30796: origin
                    (at_a_p3)

                    ; #21311: <==negation-removal== 17059 (pos)
                    (not (at_a_p1))

                    ; #52044: <==negation-removal== 30796 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #17059: origin
                    (not_at_a_p1)

                    ; #62709: origin
                    (at_a_p4)

                    ; #21311: <==negation-removal== 17059 (pos)
                    (not (at_a_p1))

                    ; #35074: <==negation-removal== 62709 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #17059: origin
                    (not_at_a_p1)

                    ; #58687: origin
                    (at_a_p5)

                    ; #21311: <==negation-removal== 17059 (pos)
                    (not (at_a_p1))

                    ; #70679: <==negation-removal== 58687 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #17059: origin
                    (not_at_a_p1)

                    ; #36396: origin
                    (at_a_p6)

                    ; #19931: <==negation-removal== 36396 (pos)
                    (not (not_at_a_p6))

                    ; #21311: <==negation-removal== 17059 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #17059: origin
                    (not_at_a_p1)

                    ; #54769: origin
                    (at_a_p7)

                    ; #21311: <==negation-removal== 17059 (pos)
                    (not (at_a_p1))

                    ; #92199: <==negation-removal== 54769 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #17059: origin
                    (not_at_a_p1)

                    ; #52694: origin
                    (at_a_p8)

                    ; #21311: <==negation-removal== 17059 (pos)
                    (not (at_a_p1))

                    ; #41254: <==negation-removal== 52694 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #17059: origin
                    (not_at_a_p1)

                    ; #33790: origin
                    (at_a_p9)

                    ; #21311: <==negation-removal== 17059 (pos)
                    (not (at_a_p1))

                    ; #44474: <==negation-removal== 33790 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #21311: origin
                    (at_a_p1)

                    ; #33796: origin
                    (not_at_a_p2)

                    ; #17059: <==negation-removal== 21311 (pos)
                    (not (not_at_a_p1))

                    ; #42351: <==negation-removal== 33796 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #33796: origin
                    (not_at_a_p2)

                    ; #42351: origin
                    (at_a_p2)

                    ; #33796: <==negation-removal== 42351 (pos)
                    (not (not_at_a_p2))

                    ; #42351: <==negation-removal== 33796 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #30796: origin
                    (at_a_p3)

                    ; #33796: origin
                    (not_at_a_p2)

                    ; #42351: <==negation-removal== 33796 (pos)
                    (not (at_a_p2))

                    ; #52044: <==negation-removal== 30796 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #33796: origin
                    (not_at_a_p2)

                    ; #62709: origin
                    (at_a_p4)

                    ; #35074: <==negation-removal== 62709 (pos)
                    (not (not_at_a_p4))

                    ; #42351: <==negation-removal== 33796 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #33796: origin
                    (not_at_a_p2)

                    ; #58687: origin
                    (at_a_p5)

                    ; #42351: <==negation-removal== 33796 (pos)
                    (not (at_a_p2))

                    ; #70679: <==negation-removal== 58687 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #33796: origin
                    (not_at_a_p2)

                    ; #36396: origin
                    (at_a_p6)

                    ; #19931: <==negation-removal== 36396 (pos)
                    (not (not_at_a_p6))

                    ; #42351: <==negation-removal== 33796 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #33796: origin
                    (not_at_a_p2)

                    ; #54769: origin
                    (at_a_p7)

                    ; #42351: <==negation-removal== 33796 (pos)
                    (not (at_a_p2))

                    ; #92199: <==negation-removal== 54769 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #33796: origin
                    (not_at_a_p2)

                    ; #52694: origin
                    (at_a_p8)

                    ; #41254: <==negation-removal== 52694 (pos)
                    (not (not_at_a_p8))

                    ; #42351: <==negation-removal== 33796 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #33790: origin
                    (at_a_p9)

                    ; #33796: origin
                    (not_at_a_p2)

                    ; #42351: <==negation-removal== 33796 (pos)
                    (not (at_a_p2))

                    ; #44474: <==negation-removal== 33790 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #21311: origin
                    (at_a_p1)

                    ; #52044: origin
                    (not_at_a_p3)

                    ; #17059: <==negation-removal== 21311 (pos)
                    (not (not_at_a_p1))

                    ; #30796: <==negation-removal== 52044 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #42351: origin
                    (at_a_p2)

                    ; #52044: origin
                    (not_at_a_p3)

                    ; #30796: <==negation-removal== 52044 (pos)
                    (not (at_a_p3))

                    ; #33796: <==negation-removal== 42351 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #30796: origin
                    (at_a_p3)

                    ; #52044: origin
                    (not_at_a_p3)

                    ; #30796: <==negation-removal== 52044 (pos)
                    (not (at_a_p3))

                    ; #52044: <==negation-removal== 30796 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #52044: origin
                    (not_at_a_p3)

                    ; #62709: origin
                    (at_a_p4)

                    ; #30796: <==negation-removal== 52044 (pos)
                    (not (at_a_p3))

                    ; #35074: <==negation-removal== 62709 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #52044: origin
                    (not_at_a_p3)

                    ; #58687: origin
                    (at_a_p5)

                    ; #30796: <==negation-removal== 52044 (pos)
                    (not (at_a_p3))

                    ; #70679: <==negation-removal== 58687 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #36396: origin
                    (at_a_p6)

                    ; #52044: origin
                    (not_at_a_p3)

                    ; #19931: <==negation-removal== 36396 (pos)
                    (not (not_at_a_p6))

                    ; #30796: <==negation-removal== 52044 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #52044: origin
                    (not_at_a_p3)

                    ; #54769: origin
                    (at_a_p7)

                    ; #30796: <==negation-removal== 52044 (pos)
                    (not (at_a_p3))

                    ; #92199: <==negation-removal== 54769 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #52044: origin
                    (not_at_a_p3)

                    ; #52694: origin
                    (at_a_p8)

                    ; #30796: <==negation-removal== 52044 (pos)
                    (not (at_a_p3))

                    ; #41254: <==negation-removal== 52694 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #33790: origin
                    (at_a_p9)

                    ; #52044: origin
                    (not_at_a_p3)

                    ; #30796: <==negation-removal== 52044 (pos)
                    (not (at_a_p3))

                    ; #44474: <==negation-removal== 33790 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #21311: origin
                    (at_a_p1)

                    ; #35074: origin
                    (not_at_a_p4)

                    ; #17059: <==negation-removal== 21311 (pos)
                    (not (not_at_a_p1))

                    ; #62709: <==negation-removal== 35074 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #35074: origin
                    (not_at_a_p4)

                    ; #42351: origin
                    (at_a_p2)

                    ; #33796: <==negation-removal== 42351 (pos)
                    (not (not_at_a_p2))

                    ; #62709: <==negation-removal== 35074 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #30796: origin
                    (at_a_p3)

                    ; #35074: origin
                    (not_at_a_p4)

                    ; #52044: <==negation-removal== 30796 (pos)
                    (not (not_at_a_p3))

                    ; #62709: <==negation-removal== 35074 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #35074: origin
                    (not_at_a_p4)

                    ; #62709: origin
                    (at_a_p4)

                    ; #35074: <==negation-removal== 62709 (pos)
                    (not (not_at_a_p4))

                    ; #62709: <==negation-removal== 35074 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #35074: origin
                    (not_at_a_p4)

                    ; #58687: origin
                    (at_a_p5)

                    ; #62709: <==negation-removal== 35074 (pos)
                    (not (at_a_p4))

                    ; #70679: <==negation-removal== 58687 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #35074: origin
                    (not_at_a_p4)

                    ; #36396: origin
                    (at_a_p6)

                    ; #19931: <==negation-removal== 36396 (pos)
                    (not (not_at_a_p6))

                    ; #62709: <==negation-removal== 35074 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #35074: origin
                    (not_at_a_p4)

                    ; #54769: origin
                    (at_a_p7)

                    ; #62709: <==negation-removal== 35074 (pos)
                    (not (at_a_p4))

                    ; #92199: <==negation-removal== 54769 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #35074: origin
                    (not_at_a_p4)

                    ; #52694: origin
                    (at_a_p8)

                    ; #41254: <==negation-removal== 52694 (pos)
                    (not (not_at_a_p8))

                    ; #62709: <==negation-removal== 35074 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #33790: origin
                    (at_a_p9)

                    ; #35074: origin
                    (not_at_a_p4)

                    ; #44474: <==negation-removal== 33790 (pos)
                    (not (not_at_a_p9))

                    ; #62709: <==negation-removal== 35074 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #21311: origin
                    (at_a_p1)

                    ; #70679: origin
                    (not_at_a_p5)

                    ; #17059: <==negation-removal== 21311 (pos)
                    (not (not_at_a_p1))

                    ; #58687: <==negation-removal== 70679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #42351: origin
                    (at_a_p2)

                    ; #70679: origin
                    (not_at_a_p5)

                    ; #33796: <==negation-removal== 42351 (pos)
                    (not (not_at_a_p2))

                    ; #58687: <==negation-removal== 70679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #30796: origin
                    (at_a_p3)

                    ; #70679: origin
                    (not_at_a_p5)

                    ; #52044: <==negation-removal== 30796 (pos)
                    (not (not_at_a_p3))

                    ; #58687: <==negation-removal== 70679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #62709: origin
                    (at_a_p4)

                    ; #70679: origin
                    (not_at_a_p5)

                    ; #35074: <==negation-removal== 62709 (pos)
                    (not (not_at_a_p4))

                    ; #58687: <==negation-removal== 70679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #58687: origin
                    (at_a_p5)

                    ; #70679: origin
                    (not_at_a_p5)

                    ; #58687: <==negation-removal== 70679 (pos)
                    (not (at_a_p5))

                    ; #70679: <==negation-removal== 58687 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #36396: origin
                    (at_a_p6)

                    ; #70679: origin
                    (not_at_a_p5)

                    ; #19931: <==negation-removal== 36396 (pos)
                    (not (not_at_a_p6))

                    ; #58687: <==negation-removal== 70679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #54769: origin
                    (at_a_p7)

                    ; #70679: origin
                    (not_at_a_p5)

                    ; #58687: <==negation-removal== 70679 (pos)
                    (not (at_a_p5))

                    ; #92199: <==negation-removal== 54769 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #52694: origin
                    (at_a_p8)

                    ; #70679: origin
                    (not_at_a_p5)

                    ; #41254: <==negation-removal== 52694 (pos)
                    (not (not_at_a_p8))

                    ; #58687: <==negation-removal== 70679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #33790: origin
                    (at_a_p9)

                    ; #70679: origin
                    (not_at_a_p5)

                    ; #44474: <==negation-removal== 33790 (pos)
                    (not (not_at_a_p9))

                    ; #58687: <==negation-removal== 70679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #19931: origin
                    (not_at_a_p6)

                    ; #21311: origin
                    (at_a_p1)

                    ; #17059: <==negation-removal== 21311 (pos)
                    (not (not_at_a_p1))

                    ; #36396: <==negation-removal== 19931 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #19931: origin
                    (not_at_a_p6)

                    ; #42351: origin
                    (at_a_p2)

                    ; #33796: <==negation-removal== 42351 (pos)
                    (not (not_at_a_p2))

                    ; #36396: <==negation-removal== 19931 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #19931: origin
                    (not_at_a_p6)

                    ; #30796: origin
                    (at_a_p3)

                    ; #36396: <==negation-removal== 19931 (pos)
                    (not (at_a_p6))

                    ; #52044: <==negation-removal== 30796 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #19931: origin
                    (not_at_a_p6)

                    ; #62709: origin
                    (at_a_p4)

                    ; #35074: <==negation-removal== 62709 (pos)
                    (not (not_at_a_p4))

                    ; #36396: <==negation-removal== 19931 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #19931: origin
                    (not_at_a_p6)

                    ; #58687: origin
                    (at_a_p5)

                    ; #36396: <==negation-removal== 19931 (pos)
                    (not (at_a_p6))

                    ; #70679: <==negation-removal== 58687 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #19931: origin
                    (not_at_a_p6)

                    ; #36396: origin
                    (at_a_p6)

                    ; #19931: <==negation-removal== 36396 (pos)
                    (not (not_at_a_p6))

                    ; #36396: <==negation-removal== 19931 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #19931: origin
                    (not_at_a_p6)

                    ; #54769: origin
                    (at_a_p7)

                    ; #36396: <==negation-removal== 19931 (pos)
                    (not (at_a_p6))

                    ; #92199: <==negation-removal== 54769 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #19931: origin
                    (not_at_a_p6)

                    ; #52694: origin
                    (at_a_p8)

                    ; #36396: <==negation-removal== 19931 (pos)
                    (not (at_a_p6))

                    ; #41254: <==negation-removal== 52694 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #19931: origin
                    (not_at_a_p6)

                    ; #33790: origin
                    (at_a_p9)

                    ; #36396: <==negation-removal== 19931 (pos)
                    (not (at_a_p6))

                    ; #44474: <==negation-removal== 33790 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #21311: origin
                    (at_a_p1)

                    ; #92199: origin
                    (not_at_a_p7)

                    ; #17059: <==negation-removal== 21311 (pos)
                    (not (not_at_a_p1))

                    ; #54769: <==negation-removal== 92199 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #42351: origin
                    (at_a_p2)

                    ; #92199: origin
                    (not_at_a_p7)

                    ; #33796: <==negation-removal== 42351 (pos)
                    (not (not_at_a_p2))

                    ; #54769: <==negation-removal== 92199 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #30796: origin
                    (at_a_p3)

                    ; #92199: origin
                    (not_at_a_p7)

                    ; #52044: <==negation-removal== 30796 (pos)
                    (not (not_at_a_p3))

                    ; #54769: <==negation-removal== 92199 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #62709: origin
                    (at_a_p4)

                    ; #92199: origin
                    (not_at_a_p7)

                    ; #35074: <==negation-removal== 62709 (pos)
                    (not (not_at_a_p4))

                    ; #54769: <==negation-removal== 92199 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #58687: origin
                    (at_a_p5)

                    ; #92199: origin
                    (not_at_a_p7)

                    ; #54769: <==negation-removal== 92199 (pos)
                    (not (at_a_p7))

                    ; #70679: <==negation-removal== 58687 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #36396: origin
                    (at_a_p6)

                    ; #92199: origin
                    (not_at_a_p7)

                    ; #19931: <==negation-removal== 36396 (pos)
                    (not (not_at_a_p6))

                    ; #54769: <==negation-removal== 92199 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #54769: origin
                    (at_a_p7)

                    ; #92199: origin
                    (not_at_a_p7)

                    ; #54769: <==negation-removal== 92199 (pos)
                    (not (at_a_p7))

                    ; #92199: <==negation-removal== 54769 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #52694: origin
                    (at_a_p8)

                    ; #92199: origin
                    (not_at_a_p7)

                    ; #41254: <==negation-removal== 52694 (pos)
                    (not (not_at_a_p8))

                    ; #54769: <==negation-removal== 92199 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #33790: origin
                    (at_a_p9)

                    ; #92199: origin
                    (not_at_a_p7)

                    ; #44474: <==negation-removal== 33790 (pos)
                    (not (not_at_a_p9))

                    ; #54769: <==negation-removal== 92199 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #21311: origin
                    (at_a_p1)

                    ; #41254: origin
                    (not_at_a_p8)

                    ; #17059: <==negation-removal== 21311 (pos)
                    (not (not_at_a_p1))

                    ; #52694: <==negation-removal== 41254 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #41254: origin
                    (not_at_a_p8)

                    ; #42351: origin
                    (at_a_p2)

                    ; #33796: <==negation-removal== 42351 (pos)
                    (not (not_at_a_p2))

                    ; #52694: <==negation-removal== 41254 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #30796: origin
                    (at_a_p3)

                    ; #41254: origin
                    (not_at_a_p8)

                    ; #52044: <==negation-removal== 30796 (pos)
                    (not (not_at_a_p3))

                    ; #52694: <==negation-removal== 41254 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #41254: origin
                    (not_at_a_p8)

                    ; #62709: origin
                    (at_a_p4)

                    ; #35074: <==negation-removal== 62709 (pos)
                    (not (not_at_a_p4))

                    ; #52694: <==negation-removal== 41254 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #41254: origin
                    (not_at_a_p8)

                    ; #58687: origin
                    (at_a_p5)

                    ; #52694: <==negation-removal== 41254 (pos)
                    (not (at_a_p8))

                    ; #70679: <==negation-removal== 58687 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #36396: origin
                    (at_a_p6)

                    ; #41254: origin
                    (not_at_a_p8)

                    ; #19931: <==negation-removal== 36396 (pos)
                    (not (not_at_a_p6))

                    ; #52694: <==negation-removal== 41254 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #41254: origin
                    (not_at_a_p8)

                    ; #54769: origin
                    (at_a_p7)

                    ; #52694: <==negation-removal== 41254 (pos)
                    (not (at_a_p8))

                    ; #92199: <==negation-removal== 54769 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #41254: origin
                    (not_at_a_p8)

                    ; #52694: origin
                    (at_a_p8)

                    ; #41254: <==negation-removal== 52694 (pos)
                    (not (not_at_a_p8))

                    ; #52694: <==negation-removal== 41254 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #33790: origin
                    (at_a_p9)

                    ; #41254: origin
                    (not_at_a_p8)

                    ; #44474: <==negation-removal== 33790 (pos)
                    (not (not_at_a_p9))

                    ; #52694: <==negation-removal== 41254 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #21311: origin
                    (at_a_p1)

                    ; #44474: origin
                    (not_at_a_p9)

                    ; #17059: <==negation-removal== 21311 (pos)
                    (not (not_at_a_p1))

                    ; #33790: <==negation-removal== 44474 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #42351: origin
                    (at_a_p2)

                    ; #44474: origin
                    (not_at_a_p9)

                    ; #33790: <==negation-removal== 44474 (pos)
                    (not (at_a_p9))

                    ; #33796: <==negation-removal== 42351 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #30796: origin
                    (at_a_p3)

                    ; #44474: origin
                    (not_at_a_p9)

                    ; #33790: <==negation-removal== 44474 (pos)
                    (not (at_a_p9))

                    ; #52044: <==negation-removal== 30796 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #44474: origin
                    (not_at_a_p9)

                    ; #62709: origin
                    (at_a_p4)

                    ; #33790: <==negation-removal== 44474 (pos)
                    (not (at_a_p9))

                    ; #35074: <==negation-removal== 62709 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #44474: origin
                    (not_at_a_p9)

                    ; #58687: origin
                    (at_a_p5)

                    ; #33790: <==negation-removal== 44474 (pos)
                    (not (at_a_p9))

                    ; #70679: <==negation-removal== 58687 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #36396: origin
                    (at_a_p6)

                    ; #44474: origin
                    (not_at_a_p9)

                    ; #19931: <==negation-removal== 36396 (pos)
                    (not (not_at_a_p6))

                    ; #33790: <==negation-removal== 44474 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #44474: origin
                    (not_at_a_p9)

                    ; #54769: origin
                    (at_a_p7)

                    ; #33790: <==negation-removal== 44474 (pos)
                    (not (at_a_p9))

                    ; #92199: <==negation-removal== 54769 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #44474: origin
                    (not_at_a_p9)

                    ; #52694: origin
                    (at_a_p8)

                    ; #33790: <==negation-removal== 44474 (pos)
                    (not (at_a_p9))

                    ; #41254: <==negation-removal== 52694 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #33790: origin
                    (at_a_p9)

                    ; #44474: origin
                    (not_at_a_p9)

                    ; #33790: <==negation-removal== 44474 (pos)
                    (not (at_a_p9))

                    ; #44474: <==negation-removal== 33790 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #16408: origin
                    (at_b_p1)

                    ; #39251: origin
                    (not_at_b_p1)

                    ; #16408: <==negation-removal== 39251 (pos)
                    (not (at_b_p1))

                    ; #39251: <==negation-removal== 16408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #32316: origin
                    (at_b_p2)

                    ; #39251: origin
                    (not_at_b_p1)

                    ; #16408: <==negation-removal== 39251 (pos)
                    (not (at_b_p1))

                    ; #37339: <==negation-removal== 32316 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #22457: origin
                    (at_b_p3)

                    ; #39251: origin
                    (not_at_b_p1)

                    ; #16408: <==negation-removal== 39251 (pos)
                    (not (at_b_p1))

                    ; #83165: <==negation-removal== 22457 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #39251: origin
                    (not_at_b_p1)

                    ; #77961: origin
                    (at_b_p4)

                    ; #16408: <==negation-removal== 39251 (pos)
                    (not (at_b_p1))

                    ; #78072: <==negation-removal== 77961 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #39251: origin
                    (not_at_b_p1)

                    ; #47570: origin
                    (at_b_p5)

                    ; #16408: <==negation-removal== 39251 (pos)
                    (not (at_b_p1))

                    ; #94485: <==negation-removal== 47570 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #39251: origin
                    (not_at_b_p1)

                    ; #78290: origin
                    (at_b_p6)

                    ; #16408: <==negation-removal== 39251 (pos)
                    (not (at_b_p1))

                    ; #75958: <==negation-removal== 78290 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #39251: origin
                    (not_at_b_p1)

                    ; #65479: origin
                    (at_b_p7)

                    ; #16408: <==negation-removal== 39251 (pos)
                    (not (at_b_p1))

                    ; #16468: <==negation-removal== 65479 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #29776: origin
                    (at_b_p8)

                    ; #39251: origin
                    (not_at_b_p1)

                    ; #16408: <==negation-removal== 39251 (pos)
                    (not (at_b_p1))

                    ; #18885: <==negation-removal== 29776 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #39251: origin
                    (not_at_b_p1)

                    ; #58009: origin
                    (at_b_p9)

                    ; #16408: <==negation-removal== 39251 (pos)
                    (not (at_b_p1))

                    ; #26750: <==negation-removal== 58009 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #16408: origin
                    (at_b_p1)

                    ; #37339: origin
                    (not_at_b_p2)

                    ; #32316: <==negation-removal== 37339 (pos)
                    (not (at_b_p2))

                    ; #39251: <==negation-removal== 16408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #32316: origin
                    (at_b_p2)

                    ; #37339: origin
                    (not_at_b_p2)

                    ; #32316: <==negation-removal== 37339 (pos)
                    (not (at_b_p2))

                    ; #37339: <==negation-removal== 32316 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #22457: origin
                    (at_b_p3)

                    ; #37339: origin
                    (not_at_b_p2)

                    ; #32316: <==negation-removal== 37339 (pos)
                    (not (at_b_p2))

                    ; #83165: <==negation-removal== 22457 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #37339: origin
                    (not_at_b_p2)

                    ; #77961: origin
                    (at_b_p4)

                    ; #32316: <==negation-removal== 37339 (pos)
                    (not (at_b_p2))

                    ; #78072: <==negation-removal== 77961 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #37339: origin
                    (not_at_b_p2)

                    ; #47570: origin
                    (at_b_p5)

                    ; #32316: <==negation-removal== 37339 (pos)
                    (not (at_b_p2))

                    ; #94485: <==negation-removal== 47570 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #37339: origin
                    (not_at_b_p2)

                    ; #78290: origin
                    (at_b_p6)

                    ; #32316: <==negation-removal== 37339 (pos)
                    (not (at_b_p2))

                    ; #75958: <==negation-removal== 78290 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #37339: origin
                    (not_at_b_p2)

                    ; #65479: origin
                    (at_b_p7)

                    ; #16468: <==negation-removal== 65479 (pos)
                    (not (not_at_b_p7))

                    ; #32316: <==negation-removal== 37339 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #29776: origin
                    (at_b_p8)

                    ; #37339: origin
                    (not_at_b_p2)

                    ; #18885: <==negation-removal== 29776 (pos)
                    (not (not_at_b_p8))

                    ; #32316: <==negation-removal== 37339 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #37339: origin
                    (not_at_b_p2)

                    ; #58009: origin
                    (at_b_p9)

                    ; #26750: <==negation-removal== 58009 (pos)
                    (not (not_at_b_p9))

                    ; #32316: <==negation-removal== 37339 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #16408: origin
                    (at_b_p1)

                    ; #83165: origin
                    (not_at_b_p3)

                    ; #22457: <==negation-removal== 83165 (pos)
                    (not (at_b_p3))

                    ; #39251: <==negation-removal== 16408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #32316: origin
                    (at_b_p2)

                    ; #83165: origin
                    (not_at_b_p3)

                    ; #22457: <==negation-removal== 83165 (pos)
                    (not (at_b_p3))

                    ; #37339: <==negation-removal== 32316 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #22457: origin
                    (at_b_p3)

                    ; #83165: origin
                    (not_at_b_p3)

                    ; #22457: <==negation-removal== 83165 (pos)
                    (not (at_b_p3))

                    ; #83165: <==negation-removal== 22457 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #77961: origin
                    (at_b_p4)

                    ; #83165: origin
                    (not_at_b_p3)

                    ; #22457: <==negation-removal== 83165 (pos)
                    (not (at_b_p3))

                    ; #78072: <==negation-removal== 77961 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #47570: origin
                    (at_b_p5)

                    ; #83165: origin
                    (not_at_b_p3)

                    ; #22457: <==negation-removal== 83165 (pos)
                    (not (at_b_p3))

                    ; #94485: <==negation-removal== 47570 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #78290: origin
                    (at_b_p6)

                    ; #83165: origin
                    (not_at_b_p3)

                    ; #22457: <==negation-removal== 83165 (pos)
                    (not (at_b_p3))

                    ; #75958: <==negation-removal== 78290 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #65479: origin
                    (at_b_p7)

                    ; #83165: origin
                    (not_at_b_p3)

                    ; #16468: <==negation-removal== 65479 (pos)
                    (not (not_at_b_p7))

                    ; #22457: <==negation-removal== 83165 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #29776: origin
                    (at_b_p8)

                    ; #83165: origin
                    (not_at_b_p3)

                    ; #18885: <==negation-removal== 29776 (pos)
                    (not (not_at_b_p8))

                    ; #22457: <==negation-removal== 83165 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #58009: origin
                    (at_b_p9)

                    ; #83165: origin
                    (not_at_b_p3)

                    ; #22457: <==negation-removal== 83165 (pos)
                    (not (at_b_p3))

                    ; #26750: <==negation-removal== 58009 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #16408: origin
                    (at_b_p1)

                    ; #78072: origin
                    (not_at_b_p4)

                    ; #39251: <==negation-removal== 16408 (pos)
                    (not (not_at_b_p1))

                    ; #77961: <==negation-removal== 78072 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #32316: origin
                    (at_b_p2)

                    ; #78072: origin
                    (not_at_b_p4)

                    ; #37339: <==negation-removal== 32316 (pos)
                    (not (not_at_b_p2))

                    ; #77961: <==negation-removal== 78072 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #22457: origin
                    (at_b_p3)

                    ; #78072: origin
                    (not_at_b_p4)

                    ; #77961: <==negation-removal== 78072 (pos)
                    (not (at_b_p4))

                    ; #83165: <==negation-removal== 22457 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #77961: origin
                    (at_b_p4)

                    ; #78072: origin
                    (not_at_b_p4)

                    ; #77961: <==negation-removal== 78072 (pos)
                    (not (at_b_p4))

                    ; #78072: <==negation-removal== 77961 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #47570: origin
                    (at_b_p5)

                    ; #78072: origin
                    (not_at_b_p4)

                    ; #77961: <==negation-removal== 78072 (pos)
                    (not (at_b_p4))

                    ; #94485: <==negation-removal== 47570 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #78072: origin
                    (not_at_b_p4)

                    ; #78290: origin
                    (at_b_p6)

                    ; #75958: <==negation-removal== 78290 (pos)
                    (not (not_at_b_p6))

                    ; #77961: <==negation-removal== 78072 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #65479: origin
                    (at_b_p7)

                    ; #78072: origin
                    (not_at_b_p4)

                    ; #16468: <==negation-removal== 65479 (pos)
                    (not (not_at_b_p7))

                    ; #77961: <==negation-removal== 78072 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #29776: origin
                    (at_b_p8)

                    ; #78072: origin
                    (not_at_b_p4)

                    ; #18885: <==negation-removal== 29776 (pos)
                    (not (not_at_b_p8))

                    ; #77961: <==negation-removal== 78072 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #58009: origin
                    (at_b_p9)

                    ; #78072: origin
                    (not_at_b_p4)

                    ; #26750: <==negation-removal== 58009 (pos)
                    (not (not_at_b_p9))

                    ; #77961: <==negation-removal== 78072 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #16408: origin
                    (at_b_p1)

                    ; #94485: origin
                    (not_at_b_p5)

                    ; #39251: <==negation-removal== 16408 (pos)
                    (not (not_at_b_p1))

                    ; #47570: <==negation-removal== 94485 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #32316: origin
                    (at_b_p2)

                    ; #94485: origin
                    (not_at_b_p5)

                    ; #37339: <==negation-removal== 32316 (pos)
                    (not (not_at_b_p2))

                    ; #47570: <==negation-removal== 94485 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #22457: origin
                    (at_b_p3)

                    ; #94485: origin
                    (not_at_b_p5)

                    ; #47570: <==negation-removal== 94485 (pos)
                    (not (at_b_p5))

                    ; #83165: <==negation-removal== 22457 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #77961: origin
                    (at_b_p4)

                    ; #94485: origin
                    (not_at_b_p5)

                    ; #47570: <==negation-removal== 94485 (pos)
                    (not (at_b_p5))

                    ; #78072: <==negation-removal== 77961 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #47570: origin
                    (at_b_p5)

                    ; #94485: origin
                    (not_at_b_p5)

                    ; #47570: <==negation-removal== 94485 (pos)
                    (not (at_b_p5))

                    ; #94485: <==negation-removal== 47570 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #78290: origin
                    (at_b_p6)

                    ; #94485: origin
                    (not_at_b_p5)

                    ; #47570: <==negation-removal== 94485 (pos)
                    (not (at_b_p5))

                    ; #75958: <==negation-removal== 78290 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #65479: origin
                    (at_b_p7)

                    ; #94485: origin
                    (not_at_b_p5)

                    ; #16468: <==negation-removal== 65479 (pos)
                    (not (not_at_b_p7))

                    ; #47570: <==negation-removal== 94485 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #29776: origin
                    (at_b_p8)

                    ; #94485: origin
                    (not_at_b_p5)

                    ; #18885: <==negation-removal== 29776 (pos)
                    (not (not_at_b_p8))

                    ; #47570: <==negation-removal== 94485 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #58009: origin
                    (at_b_p9)

                    ; #94485: origin
                    (not_at_b_p5)

                    ; #26750: <==negation-removal== 58009 (pos)
                    (not (not_at_b_p9))

                    ; #47570: <==negation-removal== 94485 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #16408: origin
                    (at_b_p1)

                    ; #75958: origin
                    (not_at_b_p6)

                    ; #39251: <==negation-removal== 16408 (pos)
                    (not (not_at_b_p1))

                    ; #78290: <==negation-removal== 75958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #32316: origin
                    (at_b_p2)

                    ; #75958: origin
                    (not_at_b_p6)

                    ; #37339: <==negation-removal== 32316 (pos)
                    (not (not_at_b_p2))

                    ; #78290: <==negation-removal== 75958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #22457: origin
                    (at_b_p3)

                    ; #75958: origin
                    (not_at_b_p6)

                    ; #78290: <==negation-removal== 75958 (pos)
                    (not (at_b_p6))

                    ; #83165: <==negation-removal== 22457 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #75958: origin
                    (not_at_b_p6)

                    ; #77961: origin
                    (at_b_p4)

                    ; #78072: <==negation-removal== 77961 (pos)
                    (not (not_at_b_p4))

                    ; #78290: <==negation-removal== 75958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #47570: origin
                    (at_b_p5)

                    ; #75958: origin
                    (not_at_b_p6)

                    ; #78290: <==negation-removal== 75958 (pos)
                    (not (at_b_p6))

                    ; #94485: <==negation-removal== 47570 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #75958: origin
                    (not_at_b_p6)

                    ; #78290: origin
                    (at_b_p6)

                    ; #75958: <==negation-removal== 78290 (pos)
                    (not (not_at_b_p6))

                    ; #78290: <==negation-removal== 75958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #65479: origin
                    (at_b_p7)

                    ; #75958: origin
                    (not_at_b_p6)

                    ; #16468: <==negation-removal== 65479 (pos)
                    (not (not_at_b_p7))

                    ; #78290: <==negation-removal== 75958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #29776: origin
                    (at_b_p8)

                    ; #75958: origin
                    (not_at_b_p6)

                    ; #18885: <==negation-removal== 29776 (pos)
                    (not (not_at_b_p8))

                    ; #78290: <==negation-removal== 75958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #58009: origin
                    (at_b_p9)

                    ; #75958: origin
                    (not_at_b_p6)

                    ; #26750: <==negation-removal== 58009 (pos)
                    (not (not_at_b_p9))

                    ; #78290: <==negation-removal== 75958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #16408: origin
                    (at_b_p1)

                    ; #16468: origin
                    (not_at_b_p7)

                    ; #39251: <==negation-removal== 16408 (pos)
                    (not (not_at_b_p1))

                    ; #65479: <==negation-removal== 16468 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #16468: origin
                    (not_at_b_p7)

                    ; #32316: origin
                    (at_b_p2)

                    ; #37339: <==negation-removal== 32316 (pos)
                    (not (not_at_b_p2))

                    ; #65479: <==negation-removal== 16468 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #16468: origin
                    (not_at_b_p7)

                    ; #22457: origin
                    (at_b_p3)

                    ; #65479: <==negation-removal== 16468 (pos)
                    (not (at_b_p7))

                    ; #83165: <==negation-removal== 22457 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #16468: origin
                    (not_at_b_p7)

                    ; #77961: origin
                    (at_b_p4)

                    ; #65479: <==negation-removal== 16468 (pos)
                    (not (at_b_p7))

                    ; #78072: <==negation-removal== 77961 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #16468: origin
                    (not_at_b_p7)

                    ; #47570: origin
                    (at_b_p5)

                    ; #65479: <==negation-removal== 16468 (pos)
                    (not (at_b_p7))

                    ; #94485: <==negation-removal== 47570 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #16468: origin
                    (not_at_b_p7)

                    ; #78290: origin
                    (at_b_p6)

                    ; #65479: <==negation-removal== 16468 (pos)
                    (not (at_b_p7))

                    ; #75958: <==negation-removal== 78290 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #16468: origin
                    (not_at_b_p7)

                    ; #65479: origin
                    (at_b_p7)

                    ; #16468: <==negation-removal== 65479 (pos)
                    (not (not_at_b_p7))

                    ; #65479: <==negation-removal== 16468 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #16468: origin
                    (not_at_b_p7)

                    ; #29776: origin
                    (at_b_p8)

                    ; #18885: <==negation-removal== 29776 (pos)
                    (not (not_at_b_p8))

                    ; #65479: <==negation-removal== 16468 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #16468: origin
                    (not_at_b_p7)

                    ; #58009: origin
                    (at_b_p9)

                    ; #26750: <==negation-removal== 58009 (pos)
                    (not (not_at_b_p9))

                    ; #65479: <==negation-removal== 16468 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #16408: origin
                    (at_b_p1)

                    ; #18885: origin
                    (not_at_b_p8)

                    ; #29776: <==negation-removal== 18885 (pos)
                    (not (at_b_p8))

                    ; #39251: <==negation-removal== 16408 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #18885: origin
                    (not_at_b_p8)

                    ; #32316: origin
                    (at_b_p2)

                    ; #29776: <==negation-removal== 18885 (pos)
                    (not (at_b_p8))

                    ; #37339: <==negation-removal== 32316 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #18885: origin
                    (not_at_b_p8)

                    ; #22457: origin
                    (at_b_p3)

                    ; #29776: <==negation-removal== 18885 (pos)
                    (not (at_b_p8))

                    ; #83165: <==negation-removal== 22457 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #18885: origin
                    (not_at_b_p8)

                    ; #77961: origin
                    (at_b_p4)

                    ; #29776: <==negation-removal== 18885 (pos)
                    (not (at_b_p8))

                    ; #78072: <==negation-removal== 77961 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #18885: origin
                    (not_at_b_p8)

                    ; #47570: origin
                    (at_b_p5)

                    ; #29776: <==negation-removal== 18885 (pos)
                    (not (at_b_p8))

                    ; #94485: <==negation-removal== 47570 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #18885: origin
                    (not_at_b_p8)

                    ; #78290: origin
                    (at_b_p6)

                    ; #29776: <==negation-removal== 18885 (pos)
                    (not (at_b_p8))

                    ; #75958: <==negation-removal== 78290 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #18885: origin
                    (not_at_b_p8)

                    ; #65479: origin
                    (at_b_p7)

                    ; #16468: <==negation-removal== 65479 (pos)
                    (not (not_at_b_p7))

                    ; #29776: <==negation-removal== 18885 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #18885: origin
                    (not_at_b_p8)

                    ; #29776: origin
                    (at_b_p8)

                    ; #18885: <==negation-removal== 29776 (pos)
                    (not (not_at_b_p8))

                    ; #29776: <==negation-removal== 18885 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #18885: origin
                    (not_at_b_p8)

                    ; #58009: origin
                    (at_b_p9)

                    ; #26750: <==negation-removal== 58009 (pos)
                    (not (not_at_b_p9))

                    ; #29776: <==negation-removal== 18885 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #16408: origin
                    (at_b_p1)

                    ; #26750: origin
                    (not_at_b_p9)

                    ; #39251: <==negation-removal== 16408 (pos)
                    (not (not_at_b_p1))

                    ; #58009: <==negation-removal== 26750 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #26750: origin
                    (not_at_b_p9)

                    ; #32316: origin
                    (at_b_p2)

                    ; #37339: <==negation-removal== 32316 (pos)
                    (not (not_at_b_p2))

                    ; #58009: <==negation-removal== 26750 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #22457: origin
                    (at_b_p3)

                    ; #26750: origin
                    (not_at_b_p9)

                    ; #58009: <==negation-removal== 26750 (pos)
                    (not (at_b_p9))

                    ; #83165: <==negation-removal== 22457 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #26750: origin
                    (not_at_b_p9)

                    ; #77961: origin
                    (at_b_p4)

                    ; #58009: <==negation-removal== 26750 (pos)
                    (not (at_b_p9))

                    ; #78072: <==negation-removal== 77961 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #26750: origin
                    (not_at_b_p9)

                    ; #47570: origin
                    (at_b_p5)

                    ; #58009: <==negation-removal== 26750 (pos)
                    (not (at_b_p9))

                    ; #94485: <==negation-removal== 47570 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #26750: origin
                    (not_at_b_p9)

                    ; #78290: origin
                    (at_b_p6)

                    ; #58009: <==negation-removal== 26750 (pos)
                    (not (at_b_p9))

                    ; #75958: <==negation-removal== 78290 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #26750: origin
                    (not_at_b_p9)

                    ; #65479: origin
                    (at_b_p7)

                    ; #16468: <==negation-removal== 65479 (pos)
                    (not (not_at_b_p7))

                    ; #58009: <==negation-removal== 26750 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #26750: origin
                    (not_at_b_p9)

                    ; #29776: origin
                    (at_b_p8)

                    ; #18885: <==negation-removal== 29776 (pos)
                    (not (not_at_b_p8))

                    ; #58009: <==negation-removal== 26750 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #26750: origin
                    (not_at_b_p9)

                    ; #58009: origin
                    (at_b_p9)

                    ; #26750: <==negation-removal== 58009 (pos)
                    (not (not_at_b_p9))

                    ; #58009: <==negation-removal== 26750 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #59623: origin
                    (not_at_c_p1)

                    ; #73809: origin
                    (at_c_p1)

                    ; #59623: <==negation-removal== 73809 (pos)
                    (not (not_at_c_p1))

                    ; #73809: <==negation-removal== 59623 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #59623: origin
                    (not_at_c_p1)

                    ; #92754: origin
                    (at_c_p2)

                    ; #39329: <==negation-removal== 92754 (pos)
                    (not (not_at_c_p2))

                    ; #73809: <==negation-removal== 59623 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #59229: origin
                    (at_c_p3)

                    ; #59623: origin
                    (not_at_c_p1)

                    ; #57616: <==negation-removal== 59229 (pos)
                    (not (not_at_c_p3))

                    ; #73809: <==negation-removal== 59623 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #58351: origin
                    (at_c_p4)

                    ; #59623: origin
                    (not_at_c_p1)

                    ; #10146: <==negation-removal== 58351 (pos)
                    (not (not_at_c_p4))

                    ; #73809: <==negation-removal== 59623 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #59136: origin
                    (at_c_p5)

                    ; #59623: origin
                    (not_at_c_p1)

                    ; #28477: <==negation-removal== 59136 (pos)
                    (not (not_at_c_p5))

                    ; #73809: <==negation-removal== 59623 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #57991: origin
                    (at_c_p6)

                    ; #59623: origin
                    (not_at_c_p1)

                    ; #60907: <==negation-removal== 57991 (pos)
                    (not (not_at_c_p6))

                    ; #73809: <==negation-removal== 59623 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #59623: origin
                    (not_at_c_p1)

                    ; #74064: origin
                    (at_c_p7)

                    ; #60878: <==negation-removal== 74064 (pos)
                    (not (not_at_c_p7))

                    ; #73809: <==negation-removal== 59623 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #19116: origin
                    (at_c_p8)

                    ; #59623: origin
                    (not_at_c_p1)

                    ; #71852: <==negation-removal== 19116 (pos)
                    (not (not_at_c_p8))

                    ; #73809: <==negation-removal== 59623 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #26492: origin
                    (at_c_p9)

                    ; #59623: origin
                    (not_at_c_p1)

                    ; #20286: <==negation-removal== 26492 (pos)
                    (not (not_at_c_p9))

                    ; #73809: <==negation-removal== 59623 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #39329: origin
                    (not_at_c_p2)

                    ; #73809: origin
                    (at_c_p1)

                    ; #59623: <==negation-removal== 73809 (pos)
                    (not (not_at_c_p1))

                    ; #92754: <==negation-removal== 39329 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #39329: origin
                    (not_at_c_p2)

                    ; #92754: origin
                    (at_c_p2)

                    ; #39329: <==negation-removal== 92754 (pos)
                    (not (not_at_c_p2))

                    ; #92754: <==negation-removal== 39329 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #39329: origin
                    (not_at_c_p2)

                    ; #59229: origin
                    (at_c_p3)

                    ; #57616: <==negation-removal== 59229 (pos)
                    (not (not_at_c_p3))

                    ; #92754: <==negation-removal== 39329 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #39329: origin
                    (not_at_c_p2)

                    ; #58351: origin
                    (at_c_p4)

                    ; #10146: <==negation-removal== 58351 (pos)
                    (not (not_at_c_p4))

                    ; #92754: <==negation-removal== 39329 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #39329: origin
                    (not_at_c_p2)

                    ; #59136: origin
                    (at_c_p5)

                    ; #28477: <==negation-removal== 59136 (pos)
                    (not (not_at_c_p5))

                    ; #92754: <==negation-removal== 39329 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #39329: origin
                    (not_at_c_p2)

                    ; #57991: origin
                    (at_c_p6)

                    ; #60907: <==negation-removal== 57991 (pos)
                    (not (not_at_c_p6))

                    ; #92754: <==negation-removal== 39329 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #39329: origin
                    (not_at_c_p2)

                    ; #74064: origin
                    (at_c_p7)

                    ; #60878: <==negation-removal== 74064 (pos)
                    (not (not_at_c_p7))

                    ; #92754: <==negation-removal== 39329 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #19116: origin
                    (at_c_p8)

                    ; #39329: origin
                    (not_at_c_p2)

                    ; #71852: <==negation-removal== 19116 (pos)
                    (not (not_at_c_p8))

                    ; #92754: <==negation-removal== 39329 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #26492: origin
                    (at_c_p9)

                    ; #39329: origin
                    (not_at_c_p2)

                    ; #20286: <==negation-removal== 26492 (pos)
                    (not (not_at_c_p9))

                    ; #92754: <==negation-removal== 39329 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #57616: origin
                    (not_at_c_p3)

                    ; #73809: origin
                    (at_c_p1)

                    ; #59229: <==negation-removal== 57616 (pos)
                    (not (at_c_p3))

                    ; #59623: <==negation-removal== 73809 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #57616: origin
                    (not_at_c_p3)

                    ; #92754: origin
                    (at_c_p2)

                    ; #39329: <==negation-removal== 92754 (pos)
                    (not (not_at_c_p2))

                    ; #59229: <==negation-removal== 57616 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #57616: origin
                    (not_at_c_p3)

                    ; #59229: origin
                    (at_c_p3)

                    ; #57616: <==negation-removal== 59229 (pos)
                    (not (not_at_c_p3))

                    ; #59229: <==negation-removal== 57616 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #57616: origin
                    (not_at_c_p3)

                    ; #58351: origin
                    (at_c_p4)

                    ; #10146: <==negation-removal== 58351 (pos)
                    (not (not_at_c_p4))

                    ; #59229: <==negation-removal== 57616 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #57616: origin
                    (not_at_c_p3)

                    ; #59136: origin
                    (at_c_p5)

                    ; #28477: <==negation-removal== 59136 (pos)
                    (not (not_at_c_p5))

                    ; #59229: <==negation-removal== 57616 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #57616: origin
                    (not_at_c_p3)

                    ; #57991: origin
                    (at_c_p6)

                    ; #59229: <==negation-removal== 57616 (pos)
                    (not (at_c_p3))

                    ; #60907: <==negation-removal== 57991 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #57616: origin
                    (not_at_c_p3)

                    ; #74064: origin
                    (at_c_p7)

                    ; #59229: <==negation-removal== 57616 (pos)
                    (not (at_c_p3))

                    ; #60878: <==negation-removal== 74064 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #19116: origin
                    (at_c_p8)

                    ; #57616: origin
                    (not_at_c_p3)

                    ; #59229: <==negation-removal== 57616 (pos)
                    (not (at_c_p3))

                    ; #71852: <==negation-removal== 19116 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #26492: origin
                    (at_c_p9)

                    ; #57616: origin
                    (not_at_c_p3)

                    ; #20286: <==negation-removal== 26492 (pos)
                    (not (not_at_c_p9))

                    ; #59229: <==negation-removal== 57616 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #10146: origin
                    (not_at_c_p4)

                    ; #73809: origin
                    (at_c_p1)

                    ; #58351: <==negation-removal== 10146 (pos)
                    (not (at_c_p4))

                    ; #59623: <==negation-removal== 73809 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #10146: origin
                    (not_at_c_p4)

                    ; #92754: origin
                    (at_c_p2)

                    ; #39329: <==negation-removal== 92754 (pos)
                    (not (not_at_c_p2))

                    ; #58351: <==negation-removal== 10146 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #10146: origin
                    (not_at_c_p4)

                    ; #59229: origin
                    (at_c_p3)

                    ; #57616: <==negation-removal== 59229 (pos)
                    (not (not_at_c_p3))

                    ; #58351: <==negation-removal== 10146 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #10146: origin
                    (not_at_c_p4)

                    ; #58351: origin
                    (at_c_p4)

                    ; #10146: <==negation-removal== 58351 (pos)
                    (not (not_at_c_p4))

                    ; #58351: <==negation-removal== 10146 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #10146: origin
                    (not_at_c_p4)

                    ; #59136: origin
                    (at_c_p5)

                    ; #28477: <==negation-removal== 59136 (pos)
                    (not (not_at_c_p5))

                    ; #58351: <==negation-removal== 10146 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #10146: origin
                    (not_at_c_p4)

                    ; #57991: origin
                    (at_c_p6)

                    ; #58351: <==negation-removal== 10146 (pos)
                    (not (at_c_p4))

                    ; #60907: <==negation-removal== 57991 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #10146: origin
                    (not_at_c_p4)

                    ; #74064: origin
                    (at_c_p7)

                    ; #58351: <==negation-removal== 10146 (pos)
                    (not (at_c_p4))

                    ; #60878: <==negation-removal== 74064 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #10146: origin
                    (not_at_c_p4)

                    ; #19116: origin
                    (at_c_p8)

                    ; #58351: <==negation-removal== 10146 (pos)
                    (not (at_c_p4))

                    ; #71852: <==negation-removal== 19116 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #10146: origin
                    (not_at_c_p4)

                    ; #26492: origin
                    (at_c_p9)

                    ; #20286: <==negation-removal== 26492 (pos)
                    (not (not_at_c_p9))

                    ; #58351: <==negation-removal== 10146 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #28477: origin
                    (not_at_c_p5)

                    ; #73809: origin
                    (at_c_p1)

                    ; #59136: <==negation-removal== 28477 (pos)
                    (not (at_c_p5))

                    ; #59623: <==negation-removal== 73809 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #28477: origin
                    (not_at_c_p5)

                    ; #92754: origin
                    (at_c_p2)

                    ; #39329: <==negation-removal== 92754 (pos)
                    (not (not_at_c_p2))

                    ; #59136: <==negation-removal== 28477 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #28477: origin
                    (not_at_c_p5)

                    ; #59229: origin
                    (at_c_p3)

                    ; #57616: <==negation-removal== 59229 (pos)
                    (not (not_at_c_p3))

                    ; #59136: <==negation-removal== 28477 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #28477: origin
                    (not_at_c_p5)

                    ; #58351: origin
                    (at_c_p4)

                    ; #10146: <==negation-removal== 58351 (pos)
                    (not (not_at_c_p4))

                    ; #59136: <==negation-removal== 28477 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #28477: origin
                    (not_at_c_p5)

                    ; #59136: origin
                    (at_c_p5)

                    ; #28477: <==negation-removal== 59136 (pos)
                    (not (not_at_c_p5))

                    ; #59136: <==negation-removal== 28477 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #28477: origin
                    (not_at_c_p5)

                    ; #57991: origin
                    (at_c_p6)

                    ; #59136: <==negation-removal== 28477 (pos)
                    (not (at_c_p5))

                    ; #60907: <==negation-removal== 57991 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #28477: origin
                    (not_at_c_p5)

                    ; #74064: origin
                    (at_c_p7)

                    ; #59136: <==negation-removal== 28477 (pos)
                    (not (at_c_p5))

                    ; #60878: <==negation-removal== 74064 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #19116: origin
                    (at_c_p8)

                    ; #28477: origin
                    (not_at_c_p5)

                    ; #59136: <==negation-removal== 28477 (pos)
                    (not (at_c_p5))

                    ; #71852: <==negation-removal== 19116 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #26492: origin
                    (at_c_p9)

                    ; #28477: origin
                    (not_at_c_p5)

                    ; #20286: <==negation-removal== 26492 (pos)
                    (not (not_at_c_p9))

                    ; #59136: <==negation-removal== 28477 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #60907: origin
                    (not_at_c_p6)

                    ; #73809: origin
                    (at_c_p1)

                    ; #57991: <==negation-removal== 60907 (pos)
                    (not (at_c_p6))

                    ; #59623: <==negation-removal== 73809 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #60907: origin
                    (not_at_c_p6)

                    ; #92754: origin
                    (at_c_p2)

                    ; #39329: <==negation-removal== 92754 (pos)
                    (not (not_at_c_p2))

                    ; #57991: <==negation-removal== 60907 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #59229: origin
                    (at_c_p3)

                    ; #60907: origin
                    (not_at_c_p6)

                    ; #57616: <==negation-removal== 59229 (pos)
                    (not (not_at_c_p3))

                    ; #57991: <==negation-removal== 60907 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #58351: origin
                    (at_c_p4)

                    ; #60907: origin
                    (not_at_c_p6)

                    ; #10146: <==negation-removal== 58351 (pos)
                    (not (not_at_c_p4))

                    ; #57991: <==negation-removal== 60907 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #59136: origin
                    (at_c_p5)

                    ; #60907: origin
                    (not_at_c_p6)

                    ; #28477: <==negation-removal== 59136 (pos)
                    (not (not_at_c_p5))

                    ; #57991: <==negation-removal== 60907 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #57991: origin
                    (at_c_p6)

                    ; #60907: origin
                    (not_at_c_p6)

                    ; #57991: <==negation-removal== 60907 (pos)
                    (not (at_c_p6))

                    ; #60907: <==negation-removal== 57991 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #60907: origin
                    (not_at_c_p6)

                    ; #74064: origin
                    (at_c_p7)

                    ; #57991: <==negation-removal== 60907 (pos)
                    (not (at_c_p6))

                    ; #60878: <==negation-removal== 74064 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #19116: origin
                    (at_c_p8)

                    ; #60907: origin
                    (not_at_c_p6)

                    ; #57991: <==negation-removal== 60907 (pos)
                    (not (at_c_p6))

                    ; #71852: <==negation-removal== 19116 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #26492: origin
                    (at_c_p9)

                    ; #60907: origin
                    (not_at_c_p6)

                    ; #20286: <==negation-removal== 26492 (pos)
                    (not (not_at_c_p9))

                    ; #57991: <==negation-removal== 60907 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #60878: origin
                    (not_at_c_p7)

                    ; #73809: origin
                    (at_c_p1)

                    ; #59623: <==negation-removal== 73809 (pos)
                    (not (not_at_c_p1))

                    ; #74064: <==negation-removal== 60878 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #60878: origin
                    (not_at_c_p7)

                    ; #92754: origin
                    (at_c_p2)

                    ; #39329: <==negation-removal== 92754 (pos)
                    (not (not_at_c_p2))

                    ; #74064: <==negation-removal== 60878 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #59229: origin
                    (at_c_p3)

                    ; #60878: origin
                    (not_at_c_p7)

                    ; #57616: <==negation-removal== 59229 (pos)
                    (not (not_at_c_p3))

                    ; #74064: <==negation-removal== 60878 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #58351: origin
                    (at_c_p4)

                    ; #60878: origin
                    (not_at_c_p7)

                    ; #10146: <==negation-removal== 58351 (pos)
                    (not (not_at_c_p4))

                    ; #74064: <==negation-removal== 60878 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #59136: origin
                    (at_c_p5)

                    ; #60878: origin
                    (not_at_c_p7)

                    ; #28477: <==negation-removal== 59136 (pos)
                    (not (not_at_c_p5))

                    ; #74064: <==negation-removal== 60878 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #57991: origin
                    (at_c_p6)

                    ; #60878: origin
                    (not_at_c_p7)

                    ; #60907: <==negation-removal== 57991 (pos)
                    (not (not_at_c_p6))

                    ; #74064: <==negation-removal== 60878 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #60878: origin
                    (not_at_c_p7)

                    ; #74064: origin
                    (at_c_p7)

                    ; #60878: <==negation-removal== 74064 (pos)
                    (not (not_at_c_p7))

                    ; #74064: <==negation-removal== 60878 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #19116: origin
                    (at_c_p8)

                    ; #60878: origin
                    (not_at_c_p7)

                    ; #71852: <==negation-removal== 19116 (pos)
                    (not (not_at_c_p8))

                    ; #74064: <==negation-removal== 60878 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #26492: origin
                    (at_c_p9)

                    ; #60878: origin
                    (not_at_c_p7)

                    ; #20286: <==negation-removal== 26492 (pos)
                    (not (not_at_c_p9))

                    ; #74064: <==negation-removal== 60878 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #71852: origin
                    (not_at_c_p8)

                    ; #73809: origin
                    (at_c_p1)

                    ; #19116: <==negation-removal== 71852 (pos)
                    (not (at_c_p8))

                    ; #59623: <==negation-removal== 73809 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #71852: origin
                    (not_at_c_p8)

                    ; #92754: origin
                    (at_c_p2)

                    ; #19116: <==negation-removal== 71852 (pos)
                    (not (at_c_p8))

                    ; #39329: <==negation-removal== 92754 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #59229: origin
                    (at_c_p3)

                    ; #71852: origin
                    (not_at_c_p8)

                    ; #19116: <==negation-removal== 71852 (pos)
                    (not (at_c_p8))

                    ; #57616: <==negation-removal== 59229 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #58351: origin
                    (at_c_p4)

                    ; #71852: origin
                    (not_at_c_p8)

                    ; #10146: <==negation-removal== 58351 (pos)
                    (not (not_at_c_p4))

                    ; #19116: <==negation-removal== 71852 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #59136: origin
                    (at_c_p5)

                    ; #71852: origin
                    (not_at_c_p8)

                    ; #19116: <==negation-removal== 71852 (pos)
                    (not (at_c_p8))

                    ; #28477: <==negation-removal== 59136 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #57991: origin
                    (at_c_p6)

                    ; #71852: origin
                    (not_at_c_p8)

                    ; #19116: <==negation-removal== 71852 (pos)
                    (not (at_c_p8))

                    ; #60907: <==negation-removal== 57991 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #71852: origin
                    (not_at_c_p8)

                    ; #74064: origin
                    (at_c_p7)

                    ; #19116: <==negation-removal== 71852 (pos)
                    (not (at_c_p8))

                    ; #60878: <==negation-removal== 74064 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #19116: origin
                    (at_c_p8)

                    ; #71852: origin
                    (not_at_c_p8)

                    ; #19116: <==negation-removal== 71852 (pos)
                    (not (at_c_p8))

                    ; #71852: <==negation-removal== 19116 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #26492: origin
                    (at_c_p9)

                    ; #71852: origin
                    (not_at_c_p8)

                    ; #19116: <==negation-removal== 71852 (pos)
                    (not (at_c_p8))

                    ; #20286: <==negation-removal== 26492 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #20286: origin
                    (not_at_c_p9)

                    ; #73809: origin
                    (at_c_p1)

                    ; #26492: <==negation-removal== 20286 (pos)
                    (not (at_c_p9))

                    ; #59623: <==negation-removal== 73809 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #20286: origin
                    (not_at_c_p9)

                    ; #92754: origin
                    (at_c_p2)

                    ; #26492: <==negation-removal== 20286 (pos)
                    (not (at_c_p9))

                    ; #39329: <==negation-removal== 92754 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #20286: origin
                    (not_at_c_p9)

                    ; #59229: origin
                    (at_c_p3)

                    ; #26492: <==negation-removal== 20286 (pos)
                    (not (at_c_p9))

                    ; #57616: <==negation-removal== 59229 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #20286: origin
                    (not_at_c_p9)

                    ; #58351: origin
                    (at_c_p4)

                    ; #10146: <==negation-removal== 58351 (pos)
                    (not (not_at_c_p4))

                    ; #26492: <==negation-removal== 20286 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #20286: origin
                    (not_at_c_p9)

                    ; #59136: origin
                    (at_c_p5)

                    ; #26492: <==negation-removal== 20286 (pos)
                    (not (at_c_p9))

                    ; #28477: <==negation-removal== 59136 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #20286: origin
                    (not_at_c_p9)

                    ; #57991: origin
                    (at_c_p6)

                    ; #26492: <==negation-removal== 20286 (pos)
                    (not (at_c_p9))

                    ; #60907: <==negation-removal== 57991 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #20286: origin
                    (not_at_c_p9)

                    ; #74064: origin
                    (at_c_p7)

                    ; #26492: <==negation-removal== 20286 (pos)
                    (not (at_c_p9))

                    ; #60878: <==negation-removal== 74064 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #19116: origin
                    (at_c_p8)

                    ; #20286: origin
                    (not_at_c_p9)

                    ; #26492: <==negation-removal== 20286 (pos)
                    (not (at_c_p9))

                    ; #71852: <==negation-removal== 19116 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #20286: origin
                    (not_at_c_p9)

                    ; #26492: origin
                    (at_c_p9)

                    ; #20286: <==negation-removal== 26492 (pos)
                    (not (not_at_c_p9))

                    ; #26492: <==negation-removal== 20286 (pos)
                    (not (at_c_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #13238: origin
                    (at_d_p1)

                    ; #64671: origin
                    (not_at_d_p1)

                    ; #13238: <==negation-removal== 64671 (pos)
                    (not (at_d_p1))

                    ; #64671: <==negation-removal== 13238 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #54733: origin
                    (at_d_p2)

                    ; #64671: origin
                    (not_at_d_p1)

                    ; #13238: <==negation-removal== 64671 (pos)
                    (not (at_d_p1))

                    ; #56303: <==negation-removal== 54733 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #63330: origin
                    (at_d_p3)

                    ; #64671: origin
                    (not_at_d_p1)

                    ; #13238: <==negation-removal== 64671 (pos)
                    (not (at_d_p1))

                    ; #91288: <==negation-removal== 63330 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #64671: origin
                    (not_at_d_p1)

                    ; #85234: origin
                    (at_d_p4)

                    ; #13238: <==negation-removal== 64671 (pos)
                    (not (at_d_p1))

                    ; #57192: <==negation-removal== 85234 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #64671: origin
                    (not_at_d_p1)

                    ; #83489: origin
                    (at_d_p5)

                    ; #13238: <==negation-removal== 64671 (pos)
                    (not (at_d_p1))

                    ; #93517: <==negation-removal== 83489 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #64671: origin
                    (not_at_d_p1)

                    ; #88814: origin
                    (at_d_p6)

                    ; #13238: <==negation-removal== 64671 (pos)
                    (not (at_d_p1))

                    ; #44490: <==negation-removal== 88814 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #64671: origin
                    (not_at_d_p1)

                    ; #99982: origin
                    (at_d_p7)

                    ; #13238: <==negation-removal== 64671 (pos)
                    (not (at_d_p1))

                    ; #45492: <==negation-removal== 99982 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #59972: origin
                    (at_d_p8)

                    ; #64671: origin
                    (not_at_d_p1)

                    ; #12646: <==negation-removal== 59972 (pos)
                    (not (not_at_d_p8))

                    ; #13238: <==negation-removal== 64671 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #64671: origin
                    (not_at_d_p1)

                    ; #95444: origin
                    (at_d_p9)

                    ; #13238: <==negation-removal== 64671 (pos)
                    (not (at_d_p1))

                    ; #65242: <==negation-removal== 95444 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #13238: origin
                    (at_d_p1)

                    ; #56303: origin
                    (not_at_d_p2)

                    ; #54733: <==negation-removal== 56303 (pos)
                    (not (at_d_p2))

                    ; #64671: <==negation-removal== 13238 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #54733: origin
                    (at_d_p2)

                    ; #56303: origin
                    (not_at_d_p2)

                    ; #54733: <==negation-removal== 56303 (pos)
                    (not (at_d_p2))

                    ; #56303: <==negation-removal== 54733 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (at_d_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #56303: origin
                    (not_at_d_p2)

                    ; #63330: origin
                    (at_d_p3)

                    ; #54733: <==negation-removal== 56303 (pos)
                    (not (at_d_p2))

                    ; #91288: <==negation-removal== 63330 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #56303: origin
                    (not_at_d_p2)

                    ; #85234: origin
                    (at_d_p4)

                    ; #54733: <==negation-removal== 56303 (pos)
                    (not (at_d_p2))

                    ; #57192: <==negation-removal== 85234 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #56303: origin
                    (not_at_d_p2)

                    ; #83489: origin
                    (at_d_p5)

                    ; #54733: <==negation-removal== 56303 (pos)
                    (not (at_d_p2))

                    ; #93517: <==negation-removal== 83489 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p2_p6
        :precondition (and (at_d_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #56303: origin
                    (not_at_d_p2)

                    ; #88814: origin
                    (at_d_p6)

                    ; #44490: <==negation-removal== 88814 (pos)
                    (not (not_at_d_p6))

                    ; #54733: <==negation-removal== 56303 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #56303: origin
                    (not_at_d_p2)

                    ; #99982: origin
                    (at_d_p7)

                    ; #45492: <==negation-removal== 99982 (pos)
                    (not (not_at_d_p7))

                    ; #54733: <==negation-removal== 56303 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #56303: origin
                    (not_at_d_p2)

                    ; #59972: origin
                    (at_d_p8)

                    ; #12646: <==negation-removal== 59972 (pos)
                    (not (not_at_d_p8))

                    ; #54733: <==negation-removal== 56303 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #56303: origin
                    (not_at_d_p2)

                    ; #95444: origin
                    (at_d_p9)

                    ; #54733: <==negation-removal== 56303 (pos)
                    (not (at_d_p2))

                    ; #65242: <==negation-removal== 95444 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #13238: origin
                    (at_d_p1)

                    ; #91288: origin
                    (not_at_d_p3)

                    ; #63330: <==negation-removal== 91288 (pos)
                    (not (at_d_p3))

                    ; #64671: <==negation-removal== 13238 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #54733: origin
                    (at_d_p2)

                    ; #91288: origin
                    (not_at_d_p3)

                    ; #56303: <==negation-removal== 54733 (pos)
                    (not (not_at_d_p2))

                    ; #63330: <==negation-removal== 91288 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #63330: origin
                    (at_d_p3)

                    ; #91288: origin
                    (not_at_d_p3)

                    ; #63330: <==negation-removal== 91288 (pos)
                    (not (at_d_p3))

                    ; #91288: <==negation-removal== 63330 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #85234: origin
                    (at_d_p4)

                    ; #91288: origin
                    (not_at_d_p3)

                    ; #57192: <==negation-removal== 85234 (pos)
                    (not (not_at_d_p4))

                    ; #63330: <==negation-removal== 91288 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #83489: origin
                    (at_d_p5)

                    ; #91288: origin
                    (not_at_d_p3)

                    ; #63330: <==negation-removal== 91288 (pos)
                    (not (at_d_p3))

                    ; #93517: <==negation-removal== 83489 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #88814: origin
                    (at_d_p6)

                    ; #91288: origin
                    (not_at_d_p3)

                    ; #44490: <==negation-removal== 88814 (pos)
                    (not (not_at_d_p6))

                    ; #63330: <==negation-removal== 91288 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #91288: origin
                    (not_at_d_p3)

                    ; #99982: origin
                    (at_d_p7)

                    ; #45492: <==negation-removal== 99982 (pos)
                    (not (not_at_d_p7))

                    ; #63330: <==negation-removal== 91288 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #59972: origin
                    (at_d_p8)

                    ; #91288: origin
                    (not_at_d_p3)

                    ; #12646: <==negation-removal== 59972 (pos)
                    (not (not_at_d_p8))

                    ; #63330: <==negation-removal== 91288 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #91288: origin
                    (not_at_d_p3)

                    ; #95444: origin
                    (at_d_p9)

                    ; #63330: <==negation-removal== 91288 (pos)
                    (not (at_d_p3))

                    ; #65242: <==negation-removal== 95444 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_d_p4))
        :effect (and
                    ; #13238: origin
                    (at_d_p1)

                    ; #57192: origin
                    (not_at_d_p4)

                    ; #64671: <==negation-removal== 13238 (pos)
                    (not (not_at_d_p1))

                    ; #85234: <==negation-removal== 57192 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_d_p4))
        :effect (and
                    ; #54733: origin
                    (at_d_p2)

                    ; #57192: origin
                    (not_at_d_p4)

                    ; #56303: <==negation-removal== 54733 (pos)
                    (not (not_at_d_p2))

                    ; #85234: <==negation-removal== 57192 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_d_p4))
        :effect (and
                    ; #57192: origin
                    (not_at_d_p4)

                    ; #63330: origin
                    (at_d_p3)

                    ; #85234: <==negation-removal== 57192 (pos)
                    (not (at_d_p4))

                    ; #91288: <==negation-removal== 63330 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4))
        :effect (and
                    ; #57192: origin
                    (not_at_d_p4)

                    ; #85234: origin
                    (at_d_p4)

                    ; #57192: <==negation-removal== 85234 (pos)
                    (not (not_at_d_p4))

                    ; #85234: <==negation-removal== 57192 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #57192: origin
                    (not_at_d_p4)

                    ; #83489: origin
                    (at_d_p5)

                    ; #85234: <==negation-removal== 57192 (pos)
                    (not (at_d_p4))

                    ; #93517: <==negation-removal== 83489 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_d_p4))
        :effect (and
                    ; #57192: origin
                    (not_at_d_p4)

                    ; #88814: origin
                    (at_d_p6)

                    ; #44490: <==negation-removal== 88814 (pos)
                    (not (not_at_d_p6))

                    ; #85234: <==negation-removal== 57192 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_d_p4))
        :effect (and
                    ; #57192: origin
                    (not_at_d_p4)

                    ; #99982: origin
                    (at_d_p7)

                    ; #45492: <==negation-removal== 99982 (pos)
                    (not (not_at_d_p7))

                    ; #85234: <==negation-removal== 57192 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4))
        :effect (and
                    ; #57192: origin
                    (not_at_d_p4)

                    ; #59972: origin
                    (at_d_p8)

                    ; #12646: <==negation-removal== 59972 (pos)
                    (not (not_at_d_p8))

                    ; #85234: <==negation-removal== 57192 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_d_p4))
        :effect (and
                    ; #57192: origin
                    (not_at_d_p4)

                    ; #95444: origin
                    (at_d_p9)

                    ; #65242: <==negation-removal== 95444 (pos)
                    (not (not_at_d_p9))

                    ; #85234: <==negation-removal== 57192 (pos)
                    (not (at_d_p4))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #13238: origin
                    (at_d_p1)

                    ; #93517: origin
                    (not_at_d_p5)

                    ; #64671: <==negation-removal== 13238 (pos)
                    (not (not_at_d_p1))

                    ; #83489: <==negation-removal== 93517 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #54733: origin
                    (at_d_p2)

                    ; #93517: origin
                    (not_at_d_p5)

                    ; #56303: <==negation-removal== 54733 (pos)
                    (not (not_at_d_p2))

                    ; #83489: <==negation-removal== 93517 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #63330: origin
                    (at_d_p3)

                    ; #93517: origin
                    (not_at_d_p5)

                    ; #83489: <==negation-removal== 93517 (pos)
                    (not (at_d_p5))

                    ; #91288: <==negation-removal== 63330 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #85234: origin
                    (at_d_p4)

                    ; #93517: origin
                    (not_at_d_p5)

                    ; #57192: <==negation-removal== 85234 (pos)
                    (not (not_at_d_p4))

                    ; #83489: <==negation-removal== 93517 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #83489: origin
                    (at_d_p5)

                    ; #93517: origin
                    (not_at_d_p5)

                    ; #83489: <==negation-removal== 93517 (pos)
                    (not (at_d_p5))

                    ; #93517: <==negation-removal== 83489 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #88814: origin
                    (at_d_p6)

                    ; #93517: origin
                    (not_at_d_p5)

                    ; #44490: <==negation-removal== 88814 (pos)
                    (not (not_at_d_p6))

                    ; #83489: <==negation-removal== 93517 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #93517: origin
                    (not_at_d_p5)

                    ; #99982: origin
                    (at_d_p7)

                    ; #45492: <==negation-removal== 99982 (pos)
                    (not (not_at_d_p7))

                    ; #83489: <==negation-removal== 93517 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (at_d_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #59972: origin
                    (at_d_p8)

                    ; #93517: origin
                    (not_at_d_p5)

                    ; #12646: <==negation-removal== 59972 (pos)
                    (not (not_at_d_p8))

                    ; #83489: <==negation-removal== 93517 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #93517: origin
                    (not_at_d_p5)

                    ; #95444: origin
                    (at_d_p9)

                    ; #65242: <==negation-removal== 95444 (pos)
                    (not (not_at_d_p9))

                    ; #83489: <==negation-removal== 93517 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #13238: origin
                    (at_d_p1)

                    ; #44490: origin
                    (not_at_d_p6)

                    ; #64671: <==negation-removal== 13238 (pos)
                    (not (not_at_d_p1))

                    ; #88814: <==negation-removal== 44490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #44490: origin
                    (not_at_d_p6)

                    ; #54733: origin
                    (at_d_p2)

                    ; #56303: <==negation-removal== 54733 (pos)
                    (not (not_at_d_p2))

                    ; #88814: <==negation-removal== 44490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #44490: origin
                    (not_at_d_p6)

                    ; #63330: origin
                    (at_d_p3)

                    ; #88814: <==negation-removal== 44490 (pos)
                    (not (at_d_p6))

                    ; #91288: <==negation-removal== 63330 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #44490: origin
                    (not_at_d_p6)

                    ; #85234: origin
                    (at_d_p4)

                    ; #57192: <==negation-removal== 85234 (pos)
                    (not (not_at_d_p4))

                    ; #88814: <==negation-removal== 44490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #44490: origin
                    (not_at_d_p6)

                    ; #83489: origin
                    (at_d_p5)

                    ; #88814: <==negation-removal== 44490 (pos)
                    (not (at_d_p6))

                    ; #93517: <==negation-removal== 83489 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #44490: origin
                    (not_at_d_p6)

                    ; #88814: origin
                    (at_d_p6)

                    ; #44490: <==negation-removal== 88814 (pos)
                    (not (not_at_d_p6))

                    ; #88814: <==negation-removal== 44490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #44490: origin
                    (not_at_d_p6)

                    ; #99982: origin
                    (at_d_p7)

                    ; #45492: <==negation-removal== 99982 (pos)
                    (not (not_at_d_p7))

                    ; #88814: <==negation-removal== 44490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #44490: origin
                    (not_at_d_p6)

                    ; #59972: origin
                    (at_d_p8)

                    ; #12646: <==negation-removal== 59972 (pos)
                    (not (not_at_d_p8))

                    ; #88814: <==negation-removal== 44490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #44490: origin
                    (not_at_d_p6)

                    ; #95444: origin
                    (at_d_p9)

                    ; #65242: <==negation-removal== 95444 (pos)
                    (not (not_at_d_p9))

                    ; #88814: <==negation-removal== 44490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7))
        :effect (and
                    ; #13238: origin
                    (at_d_p1)

                    ; #45492: origin
                    (not_at_d_p7)

                    ; #64671: <==negation-removal== 13238 (pos)
                    (not (not_at_d_p1))

                    ; #99982: <==negation-removal== 45492 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7))
        :effect (and
                    ; #45492: origin
                    (not_at_d_p7)

                    ; #54733: origin
                    (at_d_p2)

                    ; #56303: <==negation-removal== 54733 (pos)
                    (not (not_at_d_p2))

                    ; #99982: <==negation-removal== 45492 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #45492: origin
                    (not_at_d_p7)

                    ; #63330: origin
                    (at_d_p3)

                    ; #91288: <==negation-removal== 63330 (pos)
                    (not (not_at_d_p3))

                    ; #99982: <==negation-removal== 45492 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7))
        :effect (and
                    ; #45492: origin
                    (not_at_d_p7)

                    ; #85234: origin
                    (at_d_p4)

                    ; #57192: <==negation-removal== 85234 (pos)
                    (not (not_at_d_p4))

                    ; #99982: <==negation-removal== 45492 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #45492: origin
                    (not_at_d_p7)

                    ; #83489: origin
                    (at_d_p5)

                    ; #93517: <==negation-removal== 83489 (pos)
                    (not (not_at_d_p5))

                    ; #99982: <==negation-removal== 45492 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #45492: origin
                    (not_at_d_p7)

                    ; #88814: origin
                    (at_d_p6)

                    ; #44490: <==negation-removal== 88814 (pos)
                    (not (not_at_d_p6))

                    ; #99982: <==negation-removal== 45492 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7))
        :effect (and
                    ; #45492: origin
                    (not_at_d_p7)

                    ; #99982: origin
                    (at_d_p7)

                    ; #45492: <==negation-removal== 99982 (pos)
                    (not (not_at_d_p7))

                    ; #99982: <==negation-removal== 45492 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_d_p7))
        :effect (and
                    ; #45492: origin
                    (not_at_d_p7)

                    ; #59972: origin
                    (at_d_p8)

                    ; #12646: <==negation-removal== 59972 (pos)
                    (not (not_at_d_p8))

                    ; #99982: <==negation-removal== 45492 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_d_p7))
        :effect (and
                    ; #45492: origin
                    (not_at_d_p7)

                    ; #95444: origin
                    (at_d_p9)

                    ; #65242: <==negation-removal== 95444 (pos)
                    (not (not_at_d_p9))

                    ; #99982: <==negation-removal== 45492 (pos)
                    (not (at_d_p7))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #12646: origin
                    (not_at_d_p8)

                    ; #13238: origin
                    (at_d_p1)

                    ; #59972: <==negation-removal== 12646 (pos)
                    (not (at_d_p8))

                    ; #64671: <==negation-removal== 13238 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_d_p8))
        :effect (and
                    ; #12646: origin
                    (not_at_d_p8)

                    ; #54733: origin
                    (at_d_p2)

                    ; #56303: <==negation-removal== 54733 (pos)
                    (not (not_at_d_p2))

                    ; #59972: <==negation-removal== 12646 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8))
        :effect (and
                    ; #12646: origin
                    (not_at_d_p8)

                    ; #63330: origin
                    (at_d_p3)

                    ; #59972: <==negation-removal== 12646 (pos)
                    (not (at_d_p8))

                    ; #91288: <==negation-removal== 63330 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #12646: origin
                    (not_at_d_p8)

                    ; #85234: origin
                    (at_d_p4)

                    ; #57192: <==negation-removal== 85234 (pos)
                    (not (not_at_d_p4))

                    ; #59972: <==negation-removal== 12646 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #12646: origin
                    (not_at_d_p8)

                    ; #83489: origin
                    (at_d_p5)

                    ; #59972: <==negation-removal== 12646 (pos)
                    (not (at_d_p8))

                    ; #93517: <==negation-removal== 83489 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #12646: origin
                    (not_at_d_p8)

                    ; #88814: origin
                    (at_d_p6)

                    ; #44490: <==negation-removal== 88814 (pos)
                    (not (not_at_d_p6))

                    ; #59972: <==negation-removal== 12646 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #12646: origin
                    (not_at_d_p8)

                    ; #99982: origin
                    (at_d_p7)

                    ; #45492: <==negation-removal== 99982 (pos)
                    (not (not_at_d_p7))

                    ; #59972: <==negation-removal== 12646 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8))
        :effect (and
                    ; #12646: origin
                    (not_at_d_p8)

                    ; #59972: origin
                    (at_d_p8)

                    ; #12646: <==negation-removal== 59972 (pos)
                    (not (not_at_d_p8))

                    ; #59972: <==negation-removal== 12646 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #12646: origin
                    (not_at_d_p8)

                    ; #95444: origin
                    (at_d_p9)

                    ; #59972: <==negation-removal== 12646 (pos)
                    (not (at_d_p8))

                    ; #65242: <==negation-removal== 95444 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #13238: origin
                    (at_d_p1)

                    ; #65242: origin
                    (not_at_d_p9)

                    ; #64671: <==negation-removal== 13238 (pos)
                    (not (not_at_d_p1))

                    ; #95444: <==negation-removal== 65242 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #54733: origin
                    (at_d_p2)

                    ; #65242: origin
                    (not_at_d_p9)

                    ; #56303: <==negation-removal== 54733 (pos)
                    (not (not_at_d_p2))

                    ; #95444: <==negation-removal== 65242 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #63330: origin
                    (at_d_p3)

                    ; #65242: origin
                    (not_at_d_p9)

                    ; #91288: <==negation-removal== 63330 (pos)
                    (not (not_at_d_p3))

                    ; #95444: <==negation-removal== 65242 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_d_p9))
        :effect (and
                    ; #65242: origin
                    (not_at_d_p9)

                    ; #85234: origin
                    (at_d_p4)

                    ; #57192: <==negation-removal== 85234 (pos)
                    (not (not_at_d_p4))

                    ; #95444: <==negation-removal== 65242 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_d_p9))
        :effect (and
                    ; #65242: origin
                    (not_at_d_p9)

                    ; #83489: origin
                    (at_d_p5)

                    ; #93517: <==negation-removal== 83489 (pos)
                    (not (not_at_d_p5))

                    ; #95444: <==negation-removal== 65242 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #65242: origin
                    (not_at_d_p9)

                    ; #88814: origin
                    (at_d_p6)

                    ; #44490: <==negation-removal== 88814 (pos)
                    (not (not_at_d_p6))

                    ; #95444: <==negation-removal== 65242 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #65242: origin
                    (not_at_d_p9)

                    ; #99982: origin
                    (at_d_p7)

                    ; #45492: <==negation-removal== 99982 (pos)
                    (not (not_at_d_p7))

                    ; #95444: <==negation-removal== 65242 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #59972: origin
                    (at_d_p8)

                    ; #65242: origin
                    (not_at_d_p9)

                    ; #12646: <==negation-removal== 59972 (pos)
                    (not (not_at_d_p8))

                    ; #95444: <==negation-removal== 65242 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9))
        :effect (and
                    ; #65242: origin
                    (not_at_d_p9)

                    ; #95444: origin
                    (at_d_p9)

                    ; #65242: <==negation-removal== 95444 (pos)
                    (not (not_at_d_p9))

                    ; #95444: <==negation-removal== 65242 (pos)
                    (not (at_d_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #19466: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #23766: <==closure== 19466 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #24755: <==commonly_known== 80539 (pos)
                    (Bb_checked_p1)

                    ; #35278: <==commonly_known== 80539 (pos)
                    (Bc_checked_p1)

                    ; #37770: <==closure== 75352 (pos)
                    (Pd_checked_p1)

                    ; #49594: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #51672: <==closure== 90848 (pos)
                    (Pa_checked_p1)

                    ; #58604: <==closure== 35278 (pos)
                    (Pc_checked_p1)

                    ; #62877: <==closure== 24755 (pos)
                    (Pb_checked_p1)

                    ; #64073: <==closure== 49594 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #75352: <==commonly_known== 80539 (pos)
                    (Bd_checked_p1)

                    ; #80539: origin
                    (checked_p1)

                    ; #90848: <==commonly_known== 80539 (pos)
                    (Ba_checked_p1)

                    ; #11556: <==negation-removal== 90848 (pos)
                    (not (Pa_not_checked_p1))

                    ; #13631: <==negation-removal== 51672 (pos)
                    (not (Ba_not_checked_p1))

                    ; #15999: <==negation-removal== 80539 (pos)
                    (not (not_checked_p1))

                    ; #29490: <==negation-removal== 23766 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #30976: <==negation-removal== 24755 (pos)
                    (not (Pb_not_checked_p1))

                    ; #38913: <==unclosure== 65177 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #54275: <==unclosure== 68119 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #54280: <==negation-removal== 35278 (pos)
                    (not (Pc_not_checked_p1))

                    ; #54726: <==negation-removal== 49594 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #58263: <==negation-removal== 37770 (pos)
                    (not (Bd_not_checked_p1))

                    ; #59649: <==negation-removal== 64073 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #65177: <==uncertain_firing== 19466 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #68119: <==uncertain_firing== 49594 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #73675: <==negation-removal== 19466 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #74129: <==negation-removal== 75352 (pos)
                    (not (Pd_not_checked_p1))

                    ; #80452: <==negation-removal== 58604 (pos)
                    (not (Bc_not_checked_p1))

                    ; #89118: <==negation-removal== 62877 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #20043: <==commonly_known== 99282 (pos)
                    (Bc_checked_p2)

                    ; #31432: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #44359: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #45772: <==commonly_known== 99282 (pos)
                    (Ba_checked_p2)

                    ; #48990: <==closure== 20043 (pos)
                    (Pc_checked_p2)

                    ; #51767: <==closure== 90762 (pos)
                    (Pd_checked_p2)

                    ; #63939: <==closure== 44359 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #64711: <==commonly_known== 99282 (pos)
                    (Bb_checked_p2)

                    ; #75374: <==closure== 64711 (pos)
                    (Pb_checked_p2)

                    ; #79073: <==closure== 31432 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #89530: <==closure== 45772 (pos)
                    (Pa_checked_p2)

                    ; #90762: <==commonly_known== 99282 (pos)
                    (Bd_checked_p2)

                    ; #99282: origin
                    (checked_p2)

                    ; #16748: <==negation-removal== 31432 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #18688: <==negation-removal== 89530 (pos)
                    (not (Ba_not_checked_p2))

                    ; #24397: <==negation-removal== 44359 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #30322: <==unclosure== 50580 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #32114: <==negation-removal== 99282 (pos)
                    (not (not_checked_p2))

                    ; #33857: <==negation-removal== 51767 (pos)
                    (not (Bd_not_checked_p2))

                    ; #34443: <==negation-removal== 90762 (pos)
                    (not (Pd_not_checked_p2))

                    ; #38496: <==negation-removal== 64711 (pos)
                    (not (Pb_not_checked_p2))

                    ; #48742: <==negation-removal== 63939 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #49660: <==uncertain_firing== 31432 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #50580: <==uncertain_firing== 44359 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #55990: <==unclosure== 49660 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #58989: <==negation-removal== 45772 (pos)
                    (not (Pa_not_checked_p2))

                    ; #61694: <==negation-removal== 48990 (pos)
                    (not (Bc_not_checked_p2))

                    ; #74251: <==negation-removal== 20043 (pos)
                    (not (Pc_not_checked_p2))

                    ; #80295: <==negation-removal== 79073 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #81879: <==negation-removal== 75374 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13289: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #15693: <==closure== 16784 (pos)
                    (Pc_checked_p3)

                    ; #16784: <==commonly_known== 26536 (pos)
                    (Bc_checked_p3)

                    ; #26536: origin
                    (checked_p3)

                    ; #36562: <==closure== 73512 (pos)
                    (Pb_checked_p3)

                    ; #42053: <==closure== 44019 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #44019: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #56629: <==commonly_known== 26536 (pos)
                    (Bd_checked_p3)

                    ; #60162: <==closure== 84488 (pos)
                    (Pa_checked_p3)

                    ; #73512: <==commonly_known== 26536 (pos)
                    (Bb_checked_p3)

                    ; #84488: <==commonly_known== 26536 (pos)
                    (Ba_checked_p3)

                    ; #86874: <==closure== 56629 (pos)
                    (Pd_checked_p3)

                    ; #89828: <==closure== 13289 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #10103: <==negation-removal== 36562 (pos)
                    (not (Bb_not_checked_p3))

                    ; #11724: <==negation-removal== 16784 (pos)
                    (not (Pc_not_checked_p3))

                    ; #12528: <==negation-removal== 86874 (pos)
                    (not (Bd_not_checked_p3))

                    ; #18180: <==negation-removal== 44019 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #19541: <==negation-removal== 56629 (pos)
                    (not (Pd_not_checked_p3))

                    ; #53595: <==negation-removal== 13289 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #57188: <==negation-removal== 15693 (pos)
                    (not (Bc_not_checked_p3))

                    ; #60853: <==negation-removal== 60162 (pos)
                    (not (Ba_not_checked_p3))

                    ; #62065: <==negation-removal== 84488 (pos)
                    (not (Pa_not_checked_p3))

                    ; #63827: <==uncertain_firing== 44019 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #66137: <==negation-removal== 42053 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #73348: <==unclosure== 63827 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #82244: <==negation-removal== 73512 (pos)
                    (not (Pb_not_checked_p3))

                    ; #83064: <==negation-removal== 89828 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #84931: <==negation-removal== 26536 (pos)
                    (not (not_checked_p3))

                    ; #88494: <==unclosure== 92141 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #92141: <==uncertain_firing== 13289 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13239: <==closure== 17456 (pos)
                    (Pc_checked_p4)

                    ; #17456: <==commonly_known== 24972 (pos)
                    (Bc_checked_p4)

                    ; #18228: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #20845: <==commonly_known== 24972 (pos)
                    (Bb_checked_p4)

                    ; #22265: <==commonly_known== 24972 (pos)
                    (Ba_checked_p4)

                    ; #24565: <==closure== 43424 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #24972: origin
                    (checked_p4)

                    ; #27304: <==closure== 18228 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #38847: <==closure== 20845 (pos)
                    (Pb_checked_p4)

                    ; #43424: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #49862: <==closure== 77055 (pos)
                    (Pd_checked_p4)

                    ; #77055: <==commonly_known== 24972 (pos)
                    (Bd_checked_p4)

                    ; #87882: <==closure== 22265 (pos)
                    (Pa_checked_p4)

                    ; #10757: <==negation-removal== 38847 (pos)
                    (not (Bb_not_checked_p4))

                    ; #23661: <==negation-removal== 24972 (pos)
                    (not (not_checked_p4))

                    ; #29529: <==negation-removal== 77055 (pos)
                    (not (Pd_not_checked_p4))

                    ; #34605: <==uncertain_firing== 43424 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #36793: <==negation-removal== 20845 (pos)
                    (not (Pb_not_checked_p4))

                    ; #40314: <==negation-removal== 22265 (pos)
                    (not (Pa_not_checked_p4))

                    ; #48051: <==negation-removal== 17456 (pos)
                    (not (Pc_not_checked_p4))

                    ; #51993: <==unclosure== 70003 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #55453: <==negation-removal== 87882 (pos)
                    (not (Ba_not_checked_p4))

                    ; #62263: <==negation-removal== 49862 (pos)
                    (not (Bd_not_checked_p4))

                    ; #67144: <==negation-removal== 43424 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #67279: <==negation-removal== 13239 (pos)
                    (not (Bc_not_checked_p4))

                    ; #70003: <==uncertain_firing== 18228 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #71879: <==negation-removal== 27304 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #75585: <==unclosure== 34605 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #82137: <==negation-removal== 24565 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #91528: <==negation-removal== 18228 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13404: <==closure== 90716 (pos)
                    (Pa_checked_p5)

                    ; #29634: <==commonly_known== 76939 (pos)
                    (Bc_checked_p5)

                    ; #30887: <==closure== 65275 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #38307: <==closure== 29634 (pos)
                    (Pc_checked_p5)

                    ; #50628: <==closure== 80765 (pos)
                    (Pb_checked_p5)

                    ; #55857: <==closure== 56381 (pos)
                    (Pd_checked_p5)

                    ; #56381: <==commonly_known== 76939 (pos)
                    (Bd_checked_p5)

                    ; #65275: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #76939: origin
                    (checked_p5)

                    ; #80765: <==commonly_known== 76939 (pos)
                    (Bb_checked_p5)

                    ; #84634: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #85317: <==closure== 84634 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #90716: <==commonly_known== 76939 (pos)
                    (Ba_checked_p5)

                    ; #24956: <==negation-removal== 13404 (pos)
                    (not (Ba_not_checked_p5))

                    ; #25956: <==negation-removal== 50628 (pos)
                    (not (Bb_not_checked_p5))

                    ; #30486: <==negation-removal== 80765 (pos)
                    (not (Pb_not_checked_p5))

                    ; #52758: <==uncertain_firing== 84634 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #53095: <==negation-removal== 76939 (pos)
                    (not (not_checked_p5))

                    ; #53457: <==uncertain_firing== 65275 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #64125: <==unclosure== 52758 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67098: <==negation-removal== 65275 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #68772: <==negation-removal== 30887 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #73453: <==negation-removal== 90716 (pos)
                    (not (Pa_not_checked_p5))

                    ; #74964: <==negation-removal== 84634 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #75677: <==unclosure== 53457 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #83659: <==negation-removal== 55857 (pos)
                    (not (Bd_not_checked_p5))

                    ; #87901: <==negation-removal== 29634 (pos)
                    (not (Pc_not_checked_p5))

                    ; #89311: <==negation-removal== 85317 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #95533: <==negation-removal== 56381 (pos)
                    (not (Pd_not_checked_p5))

                    ; #98968: <==negation-removal== 38307 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11990: <==commonly_known== 72999 (pos)
                    (Bc_checked_p6)

                    ; #38966: <==closure== 74933 (pos)
                    (Pa_checked_p6)

                    ; #48914: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #50649: <==closure== 88490 (pos)
                    (Pd_checked_p6)

                    ; #54907: <==commonly_known== 72999 (pos)
                    (Bb_checked_p6)

                    ; #57922: <==closure== 11990 (pos)
                    (Pc_checked_p6)

                    ; #63379: <==closure== 48914 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #72999: origin
                    (checked_p6)

                    ; #74933: <==commonly_known== 72999 (pos)
                    (Ba_checked_p6)

                    ; #87581: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #88490: <==commonly_known== 72999 (pos)
                    (Bd_checked_p6)

                    ; #89848: <==closure== 87581 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #91633: <==closure== 54907 (pos)
                    (Pb_checked_p6)

                    ; #14705: <==negation-removal== 38966 (pos)
                    (not (Ba_not_checked_p6))

                    ; #17711: <==unclosure== 54644 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #22339: <==negation-removal== 11990 (pos)
                    (not (Pc_not_checked_p6))

                    ; #24393: <==negation-removal== 72999 (pos)
                    (not (not_checked_p6))

                    ; #34103: <==negation-removal== 54907 (pos)
                    (not (Pb_not_checked_p6))

                    ; #39147: <==negation-removal== 87581 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #52965: <==negation-removal== 74933 (pos)
                    (not (Pa_not_checked_p6))

                    ; #53850: <==negation-removal== 63379 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #54644: <==uncertain_firing== 87581 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #61611: <==negation-removal== 88490 (pos)
                    (not (Pd_not_checked_p6))

                    ; #69471: <==negation-removal== 57922 (pos)
                    (not (Bc_not_checked_p6))

                    ; #71600: <==unclosure== 89644 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77870: <==negation-removal== 48914 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #80139: <==negation-removal== 89848 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #85919: <==negation-removal== 50649 (pos)
                    (not (Bd_not_checked_p6))

                    ; #89644: <==uncertain_firing== 48914 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #92185: <==negation-removal== 91633 (pos)
                    (not (Bb_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10680: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #15128: <==commonly_known== 16286 (pos)
                    (Bc_checked_p7)

                    ; #16286: origin
                    (checked_p7)

                    ; #17809: <==closure== 15128 (pos)
                    (Pc_checked_p7)

                    ; #22192: <==closure== 66562 (pos)
                    (Pb_checked_p7)

                    ; #27310: <==closure== 92044 (pos)
                    (Pa_checked_p7)

                    ; #61068: <==closure== 85878 (pos)
                    (Pd_checked_p7)

                    ; #66562: <==commonly_known== 16286 (pos)
                    (Bb_checked_p7)

                    ; #74379: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #85878: <==commonly_known== 16286 (pos)
                    (Bd_checked_p7)

                    ; #87249: <==closure== 10680 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #92044: <==commonly_known== 16286 (pos)
                    (Ba_checked_p7)

                    ; #94167: <==closure== 74379 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #13386: <==negation-removal== 66562 (pos)
                    (not (Pb_not_checked_p7))

                    ; #13522: <==uncertain_firing== 10680 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #18299: <==negation-removal== 10680 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #24443: <==negation-removal== 74379 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #26740: <==negation-removal== 22192 (pos)
                    (not (Bb_not_checked_p7))

                    ; #27488: <==unclosure== 13522 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #36094: <==negation-removal== 87249 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #43707: <==negation-removal== 17809 (pos)
                    (not (Bc_not_checked_p7))

                    ; #44735: <==negation-removal== 92044 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46734: <==uncertain_firing== 74379 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #48800: <==unclosure== 46734 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #51605: <==negation-removal== 94167 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #60952: <==negation-removal== 27310 (pos)
                    (not (Ba_not_checked_p7))

                    ; #61617: <==negation-removal== 61068 (pos)
                    (not (Bd_not_checked_p7))

                    ; #77809: <==negation-removal== 16286 (pos)
                    (not (not_checked_p7))

                    ; #87776: <==negation-removal== 85878 (pos)
                    (not (Pd_not_checked_p7))

                    ; #90240: <==negation-removal== 15128 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13681: <==commonly_known== 78191 (pos)
                    (Bb_checked_p8)

                    ; #23969: <==closure== 13681 (pos)
                    (Pb_checked_p8)

                    ; #24400: <==commonly_known== 78191 (pos)
                    (Bc_checked_p8)

                    ; #37246: <==commonly_known== 78191 (pos)
                    (Bd_checked_p8)

                    ; #37788: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #49509: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #50199: <==closure== 24400 (pos)
                    (Pc_checked_p8)

                    ; #69013: <==closure== 37246 (pos)
                    (Pd_checked_p8)

                    ; #69846: <==closure== 78804 (pos)
                    (Pa_checked_p8)

                    ; #75984: <==closure== 37788 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #77917: <==closure== 49509 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #78191: origin
                    (checked_p8)

                    ; #78804: <==commonly_known== 78191 (pos)
                    (Ba_checked_p8)

                    ; #17493: <==negation-removal== 78804 (pos)
                    (not (Pa_not_checked_p8))

                    ; #31297: <==uncertain_firing== 49509 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #31734: <==uncertain_firing== 37788 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #40282: <==unclosure== 31734 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #43042: <==negation-removal== 69846 (pos)
                    (not (Ba_not_checked_p8))

                    ; #46252: <==negation-removal== 49509 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #46984: <==negation-removal== 37246 (pos)
                    (not (Pd_not_checked_p8))

                    ; #51127: <==negation-removal== 78191 (pos)
                    (not (not_checked_p8))

                    ; #51399: <==negation-removal== 77917 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #54486: <==negation-removal== 75984 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #57681: <==unclosure== 31297 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #61575: <==negation-removal== 23969 (pos)
                    (not (Bb_not_checked_p8))

                    ; #72896: <==negation-removal== 50199 (pos)
                    (not (Bc_not_checked_p8))

                    ; #72930: <==negation-removal== 13681 (pos)
                    (not (Pb_not_checked_p8))

                    ; #73167: <==negation-removal== 69013 (pos)
                    (not (Bd_not_checked_p8))

                    ; #81713: <==negation-removal== 24400 (pos)
                    (not (Pc_not_checked_p8))

                    ; #85521: <==negation-removal== 37788 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #31702: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #39700: <==closure== 41155 (pos)
                    (Pc_checked_p9)

                    ; #41155: <==commonly_known== 82826 (pos)
                    (Bc_checked_p9)

                    ; #41350: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #43140: <==commonly_known== 82826 (pos)
                    (Bb_checked_p9)

                    ; #43356: <==closure== 41350 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #49179: <==closure== 70140 (pos)
                    (Pa_checked_p9)

                    ; #49999: <==commonly_known== 82826 (pos)
                    (Bd_checked_p9)

                    ; #70140: <==commonly_known== 82826 (pos)
                    (Ba_checked_p9)

                    ; #71011: <==closure== 43140 (pos)
                    (Pb_checked_p9)

                    ; #73202: <==closure== 31702 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #74127: <==closure== 49999 (pos)
                    (Pd_checked_p9)

                    ; #82826: origin
                    (checked_p9)

                    ; #10367: <==negation-removal== 41350 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #14835: <==negation-removal== 43140 (pos)
                    (not (Pb_not_checked_p9))

                    ; #37287: <==unclosure== 85205 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #40819: <==negation-removal== 73202 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #46779: <==negation-removal== 70140 (pos)
                    (not (Pa_not_checked_p9))

                    ; #50761: <==negation-removal== 39700 (pos)
                    (not (Bc_not_checked_p9))

                    ; #58483: <==negation-removal== 49179 (pos)
                    (not (Ba_not_checked_p9))

                    ; #63412: <==uncertain_firing== 31702 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #69559: <==negation-removal== 71011 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73511: <==negation-removal== 49999 (pos)
                    (not (Pd_not_checked_p9))

                    ; #74753: <==negation-removal== 43356 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #75129: <==negation-removal== 31702 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #76732: <==negation-removal== 41155 (pos)
                    (not (Pc_not_checked_p9))

                    ; #83039: <==negation-removal== 82826 (pos)
                    (not (not_checked_p9))

                    ; #85205: <==uncertain_firing== 41350 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #94755: <==unclosure== 63412 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #96886: <==negation-removal== 74127 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24755: <==commonly_known== 80539 (pos)
                    (Bb_checked_p1)

                    ; #26946: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #35278: <==commonly_known== 80539 (pos)
                    (Bc_checked_p1)

                    ; #37770: <==closure== 75352 (pos)
                    (Pd_checked_p1)

                    ; #41974: <==closure== 26946 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #47936: <==closure== 72427 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #51672: <==closure== 90848 (pos)
                    (Pa_checked_p1)

                    ; #58604: <==closure== 35278 (pos)
                    (Pc_checked_p1)

                    ; #62877: <==closure== 24755 (pos)
                    (Pb_checked_p1)

                    ; #72427: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #75352: <==commonly_known== 80539 (pos)
                    (Bd_checked_p1)

                    ; #80539: origin
                    (checked_p1)

                    ; #90848: <==commonly_known== 80539 (pos)
                    (Ba_checked_p1)

                    ; #11556: <==negation-removal== 90848 (pos)
                    (not (Pa_not_checked_p1))

                    ; #13631: <==negation-removal== 51672 (pos)
                    (not (Ba_not_checked_p1))

                    ; #15999: <==negation-removal== 80539 (pos)
                    (not (not_checked_p1))

                    ; #30976: <==negation-removal== 24755 (pos)
                    (not (Pb_not_checked_p1))

                    ; #35671: <==negation-removal== 41974 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36919: <==unclosure== 74297 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #42595: <==negation-removal== 47936 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #47120: <==negation-removal== 26946 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #54280: <==negation-removal== 35278 (pos)
                    (not (Pc_not_checked_p1))

                    ; #58263: <==negation-removal== 37770 (pos)
                    (not (Bd_not_checked_p1))

                    ; #60580: <==unclosure== 80418 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #71191: <==negation-removal== 72427 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #74129: <==negation-removal== 75352 (pos)
                    (not (Pd_not_checked_p1))

                    ; #74297: <==uncertain_firing== 26946 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #80418: <==uncertain_firing== 72427 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #80452: <==negation-removal== 58604 (pos)
                    (not (Bc_not_checked_p1))

                    ; #89118: <==negation-removal== 62877 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15167: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #20043: <==commonly_known== 99282 (pos)
                    (Bc_checked_p2)

                    ; #20800: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #45772: <==commonly_known== 99282 (pos)
                    (Ba_checked_p2)

                    ; #48990: <==closure== 20043 (pos)
                    (Pc_checked_p2)

                    ; #51767: <==closure== 90762 (pos)
                    (Pd_checked_p2)

                    ; #55393: <==closure== 20800 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #64711: <==commonly_known== 99282 (pos)
                    (Bb_checked_p2)

                    ; #75374: <==closure== 64711 (pos)
                    (Pb_checked_p2)

                    ; #79441: <==closure== 15167 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #89530: <==closure== 45772 (pos)
                    (Pa_checked_p2)

                    ; #90762: <==commonly_known== 99282 (pos)
                    (Bd_checked_p2)

                    ; #99282: origin
                    (checked_p2)

                    ; #12174: <==uncertain_firing== 20800 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #18688: <==negation-removal== 89530 (pos)
                    (not (Ba_not_checked_p2))

                    ; #23795: <==uncertain_firing== 15167 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #26137: <==negation-removal== 20800 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #32114: <==negation-removal== 99282 (pos)
                    (not (not_checked_p2))

                    ; #33857: <==negation-removal== 51767 (pos)
                    (not (Bd_not_checked_p2))

                    ; #34443: <==negation-removal== 90762 (pos)
                    (not (Pd_not_checked_p2))

                    ; #38496: <==negation-removal== 64711 (pos)
                    (not (Pb_not_checked_p2))

                    ; #55003: <==negation-removal== 15167 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #57854: <==negation-removal== 55393 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #58989: <==negation-removal== 45772 (pos)
                    (not (Pa_not_checked_p2))

                    ; #61694: <==negation-removal== 48990 (pos)
                    (not (Bc_not_checked_p2))

                    ; #63555: <==unclosure== 23795 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #74251: <==negation-removal== 20043 (pos)
                    (not (Pc_not_checked_p2))

                    ; #81879: <==negation-removal== 75374 (pos)
                    (not (Bb_not_checked_p2))

                    ; #86073: <==unclosure== 12174 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #90228: <==negation-removal== 79441 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15693: <==closure== 16784 (pos)
                    (Pc_checked_p3)

                    ; #16784: <==commonly_known== 26536 (pos)
                    (Bc_checked_p3)

                    ; #20389: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #24555: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #26536: origin
                    (checked_p3)

                    ; #29924: <==closure== 20389 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #36562: <==closure== 73512 (pos)
                    (Pb_checked_p3)

                    ; #42937: <==closure== 24555 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #56629: <==commonly_known== 26536 (pos)
                    (Bd_checked_p3)

                    ; #60162: <==closure== 84488 (pos)
                    (Pa_checked_p3)

                    ; #73512: <==commonly_known== 26536 (pos)
                    (Bb_checked_p3)

                    ; #84488: <==commonly_known== 26536 (pos)
                    (Ba_checked_p3)

                    ; #86874: <==closure== 56629 (pos)
                    (Pd_checked_p3)

                    ; #10103: <==negation-removal== 36562 (pos)
                    (not (Bb_not_checked_p3))

                    ; #11724: <==negation-removal== 16784 (pos)
                    (not (Pc_not_checked_p3))

                    ; #12528: <==negation-removal== 86874 (pos)
                    (not (Bd_not_checked_p3))

                    ; #16328: <==negation-removal== 24555 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #19541: <==negation-removal== 56629 (pos)
                    (not (Pd_not_checked_p3))

                    ; #22847: <==uncertain_firing== 24555 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #57188: <==negation-removal== 15693 (pos)
                    (not (Bc_not_checked_p3))

                    ; #60853: <==negation-removal== 60162 (pos)
                    (not (Ba_not_checked_p3))

                    ; #62065: <==negation-removal== 84488 (pos)
                    (not (Pa_not_checked_p3))

                    ; #71414: <==unclosure== 22847 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #72321: <==uncertain_firing== 20389 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #77405: <==negation-removal== 20389 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #82244: <==negation-removal== 73512 (pos)
                    (not (Pb_not_checked_p3))

                    ; #82925: <==negation-removal== 42937 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #84931: <==negation-removal== 26536 (pos)
                    (not (not_checked_p3))

                    ; #85579: <==unclosure== 72321 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89566: <==negation-removal== 29924 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13239: <==closure== 17456 (pos)
                    (Pc_checked_p4)

                    ; #17456: <==commonly_known== 24972 (pos)
                    (Bc_checked_p4)

                    ; #20845: <==commonly_known== 24972 (pos)
                    (Bb_checked_p4)

                    ; #22265: <==commonly_known== 24972 (pos)
                    (Ba_checked_p4)

                    ; #24972: origin
                    (checked_p4)

                    ; #37564: <==closure== 42794 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #38786: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #38847: <==closure== 20845 (pos)
                    (Pb_checked_p4)

                    ; #42794: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #49862: <==closure== 77055 (pos)
                    (Pd_checked_p4)

                    ; #77055: <==commonly_known== 24972 (pos)
                    (Bd_checked_p4)

                    ; #80761: <==closure== 38786 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #87882: <==closure== 22265 (pos)
                    (Pa_checked_p4)

                    ; #10757: <==negation-removal== 38847 (pos)
                    (not (Bb_not_checked_p4))

                    ; #14919: <==uncertain_firing== 42794 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #23661: <==negation-removal== 24972 (pos)
                    (not (not_checked_p4))

                    ; #25884: <==unclosure== 74976 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #29529: <==negation-removal== 77055 (pos)
                    (not (Pd_not_checked_p4))

                    ; #36793: <==negation-removal== 20845 (pos)
                    (not (Pb_not_checked_p4))

                    ; #38224: <==unclosure== 14919 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #40314: <==negation-removal== 22265 (pos)
                    (not (Pa_not_checked_p4))

                    ; #43269: <==negation-removal== 38786 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #48051: <==negation-removal== 17456 (pos)
                    (not (Pc_not_checked_p4))

                    ; #54834: <==negation-removal== 80761 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #55453: <==negation-removal== 87882 (pos)
                    (not (Ba_not_checked_p4))

                    ; #62263: <==negation-removal== 49862 (pos)
                    (not (Bd_not_checked_p4))

                    ; #63563: <==negation-removal== 37564 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #67279: <==negation-removal== 13239 (pos)
                    (not (Bc_not_checked_p4))

                    ; #74443: <==negation-removal== 42794 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #74976: <==uncertain_firing== 38786 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13404: <==closure== 90716 (pos)
                    (Pa_checked_p5)

                    ; #20738: <==closure== 67922 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #29634: <==commonly_known== 76939 (pos)
                    (Bc_checked_p5)

                    ; #38307: <==closure== 29634 (pos)
                    (Pc_checked_p5)

                    ; #48371: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #50628: <==closure== 80765 (pos)
                    (Pb_checked_p5)

                    ; #55857: <==closure== 56381 (pos)
                    (Pd_checked_p5)

                    ; #56381: <==commonly_known== 76939 (pos)
                    (Bd_checked_p5)

                    ; #67922: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #70135: <==closure== 48371 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #76939: origin
                    (checked_p5)

                    ; #80765: <==commonly_known== 76939 (pos)
                    (Bb_checked_p5)

                    ; #90716: <==commonly_known== 76939 (pos)
                    (Ba_checked_p5)

                    ; #12658: <==negation-removal== 67922 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #24956: <==negation-removal== 13404 (pos)
                    (not (Ba_not_checked_p5))

                    ; #25956: <==negation-removal== 50628 (pos)
                    (not (Bb_not_checked_p5))

                    ; #30486: <==negation-removal== 80765 (pos)
                    (not (Pb_not_checked_p5))

                    ; #31782: <==uncertain_firing== 48371 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #33580: <==uncertain_firing== 67922 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #43359: <==unclosure== 33580 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #47353: <==unclosure== 31782 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47823: <==negation-removal== 70135 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #53095: <==negation-removal== 76939 (pos)
                    (not (not_checked_p5))

                    ; #60693: <==negation-removal== 48371 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #73453: <==negation-removal== 90716 (pos)
                    (not (Pa_not_checked_p5))

                    ; #83659: <==negation-removal== 55857 (pos)
                    (not (Bd_not_checked_p5))

                    ; #87596: <==negation-removal== 20738 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #87901: <==negation-removal== 29634 (pos)
                    (not (Pc_not_checked_p5))

                    ; #95533: <==negation-removal== 56381 (pos)
                    (not (Pd_not_checked_p5))

                    ; #98968: <==negation-removal== 38307 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11990: <==commonly_known== 72999 (pos)
                    (Bc_checked_p6)

                    ; #38966: <==closure== 74933 (pos)
                    (Pa_checked_p6)

                    ; #40623: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #50649: <==closure== 88490 (pos)
                    (Pd_checked_p6)

                    ; #51446: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #54907: <==commonly_known== 72999 (pos)
                    (Bb_checked_p6)

                    ; #57922: <==closure== 11990 (pos)
                    (Pc_checked_p6)

                    ; #71445: <==closure== 40623 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #72999: origin
                    (checked_p6)

                    ; #74933: <==commonly_known== 72999 (pos)
                    (Ba_checked_p6)

                    ; #87006: <==closure== 51446 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #88490: <==commonly_known== 72999 (pos)
                    (Bd_checked_p6)

                    ; #91633: <==closure== 54907 (pos)
                    (Pb_checked_p6)

                    ; #14705: <==negation-removal== 38966 (pos)
                    (not (Ba_not_checked_p6))

                    ; #22339: <==negation-removal== 11990 (pos)
                    (not (Pc_not_checked_p6))

                    ; #24393: <==negation-removal== 72999 (pos)
                    (not (not_checked_p6))

                    ; #34103: <==negation-removal== 54907 (pos)
                    (not (Pb_not_checked_p6))

                    ; #34150: <==unclosure== 66350 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #35831: <==unclosure== 84882 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #46640: <==negation-removal== 87006 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #52965: <==negation-removal== 74933 (pos)
                    (not (Pa_not_checked_p6))

                    ; #61606: <==negation-removal== 71445 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #61611: <==negation-removal== 88490 (pos)
                    (not (Pd_not_checked_p6))

                    ; #64305: <==negation-removal== 51446 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #66350: <==uncertain_firing== 51446 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #69471: <==negation-removal== 57922 (pos)
                    (not (Bc_not_checked_p6))

                    ; #77557: <==negation-removal== 40623 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #84882: <==uncertain_firing== 40623 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #85919: <==negation-removal== 50649 (pos)
                    (not (Bd_not_checked_p6))

                    ; #92185: <==negation-removal== 91633 (pos)
                    (not (Bb_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15128: <==commonly_known== 16286 (pos)
                    (Bc_checked_p7)

                    ; #16286: origin
                    (checked_p7)

                    ; #16966: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #17809: <==closure== 15128 (pos)
                    (Pc_checked_p7)

                    ; #22192: <==closure== 66562 (pos)
                    (Pb_checked_p7)

                    ; #27310: <==closure== 92044 (pos)
                    (Pa_checked_p7)

                    ; #56419: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #61068: <==closure== 85878 (pos)
                    (Pd_checked_p7)

                    ; #66562: <==commonly_known== 16286 (pos)
                    (Bb_checked_p7)

                    ; #77063: <==closure== 16966 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #85878: <==commonly_known== 16286 (pos)
                    (Bd_checked_p7)

                    ; #87045: <==closure== 56419 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #92044: <==commonly_known== 16286 (pos)
                    (Ba_checked_p7)

                    ; #13386: <==negation-removal== 66562 (pos)
                    (not (Pb_not_checked_p7))

                    ; #26740: <==negation-removal== 22192 (pos)
                    (not (Bb_not_checked_p7))

                    ; #31876: <==unclosure== 38519 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #38519: <==uncertain_firing== 16966 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #43436: <==uncertain_firing== 56419 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #43707: <==negation-removal== 17809 (pos)
                    (not (Bc_not_checked_p7))

                    ; #44273: <==unclosure== 43436 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #44735: <==negation-removal== 92044 (pos)
                    (not (Pa_not_checked_p7))

                    ; #60812: <==negation-removal== 87045 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #60952: <==negation-removal== 27310 (pos)
                    (not (Ba_not_checked_p7))

                    ; #61617: <==negation-removal== 61068 (pos)
                    (not (Bd_not_checked_p7))

                    ; #75548: <==negation-removal== 56419 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #77461: <==negation-removal== 77063 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #77809: <==negation-removal== 16286 (pos)
                    (not (not_checked_p7))

                    ; #87776: <==negation-removal== 85878 (pos)
                    (not (Pd_not_checked_p7))

                    ; #90114: <==negation-removal== 16966 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #90240: <==negation-removal== 15128 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12440: <==closure== 15576 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #13681: <==commonly_known== 78191 (pos)
                    (Bb_checked_p8)

                    ; #15576: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #20695: <==closure== 39291 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #23969: <==closure== 13681 (pos)
                    (Pb_checked_p8)

                    ; #24400: <==commonly_known== 78191 (pos)
                    (Bc_checked_p8)

                    ; #37246: <==commonly_known== 78191 (pos)
                    (Bd_checked_p8)

                    ; #39291: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #50199: <==closure== 24400 (pos)
                    (Pc_checked_p8)

                    ; #69013: <==closure== 37246 (pos)
                    (Pd_checked_p8)

                    ; #69846: <==closure== 78804 (pos)
                    (Pa_checked_p8)

                    ; #78191: origin
                    (checked_p8)

                    ; #78804: <==commonly_known== 78191 (pos)
                    (Ba_checked_p8)

                    ; #17493: <==negation-removal== 78804 (pos)
                    (not (Pa_not_checked_p8))

                    ; #25127: <==uncertain_firing== 39291 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #27840: <==unclosure== 25127 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #29145: <==negation-removal== 39291 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #43042: <==negation-removal== 69846 (pos)
                    (not (Ba_not_checked_p8))

                    ; #46984: <==negation-removal== 37246 (pos)
                    (not (Pd_not_checked_p8))

                    ; #50793: <==uncertain_firing== 15576 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #51127: <==negation-removal== 78191 (pos)
                    (not (not_checked_p8))

                    ; #54274: <==unclosure== 50793 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56799: <==negation-removal== 15576 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #59287: <==negation-removal== 12440 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #61575: <==negation-removal== 23969 (pos)
                    (not (Bb_not_checked_p8))

                    ; #72896: <==negation-removal== 50199 (pos)
                    (not (Bc_not_checked_p8))

                    ; #72930: <==negation-removal== 13681 (pos)
                    (not (Pb_not_checked_p8))

                    ; #73167: <==negation-removal== 69013 (pos)
                    (not (Bd_not_checked_p8))

                    ; #81713: <==negation-removal== 24400 (pos)
                    (not (Pc_not_checked_p8))

                    ; #91451: <==negation-removal== 20695 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #39700: <==closure== 41155 (pos)
                    (Pc_checked_p9)

                    ; #41155: <==commonly_known== 82826 (pos)
                    (Bc_checked_p9)

                    ; #43140: <==commonly_known== 82826 (pos)
                    (Bb_checked_p9)

                    ; #49179: <==closure== 70140 (pos)
                    (Pa_checked_p9)

                    ; #49999: <==commonly_known== 82826 (pos)
                    (Bd_checked_p9)

                    ; #66110: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #70140: <==commonly_known== 82826 (pos)
                    (Ba_checked_p9)

                    ; #71011: <==closure== 43140 (pos)
                    (Pb_checked_p9)

                    ; #74127: <==closure== 49999 (pos)
                    (Pd_checked_p9)

                    ; #78560: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #82826: origin
                    (checked_p9)

                    ; #90045: <==closure== 78560 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #90442: <==closure== 66110 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #14835: <==negation-removal== 43140 (pos)
                    (not (Pb_not_checked_p9))

                    ; #18655: <==negation-removal== 90442 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #29961: <==unclosure== 49613 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #33581: <==negation-removal== 90045 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #46779: <==negation-removal== 70140 (pos)
                    (not (Pa_not_checked_p9))

                    ; #49613: <==uncertain_firing== 66110 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #50761: <==negation-removal== 39700 (pos)
                    (not (Bc_not_checked_p9))

                    ; #58067: <==negation-removal== 66110 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #58483: <==negation-removal== 49179 (pos)
                    (not (Ba_not_checked_p9))

                    ; #59435: <==negation-removal== 78560 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #67464: <==unclosure== 85448 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #69559: <==negation-removal== 71011 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73511: <==negation-removal== 49999 (pos)
                    (not (Pd_not_checked_p9))

                    ; #76732: <==negation-removal== 41155 (pos)
                    (not (Pc_not_checked_p9))

                    ; #83039: <==negation-removal== 82826 (pos)
                    (not (not_checked_p9))

                    ; #85448: <==uncertain_firing== 78560 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #96886: <==negation-removal== 74127 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #18609: <==closure== 25901 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #24755: <==commonly_known== 80539 (pos)
                    (Bb_checked_p1)

                    ; #25901: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #33151: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #35278: <==commonly_known== 80539 (pos)
                    (Bc_checked_p1)

                    ; #37770: <==closure== 75352 (pos)
                    (Pd_checked_p1)

                    ; #51672: <==closure== 90848 (pos)
                    (Pa_checked_p1)

                    ; #58604: <==closure== 35278 (pos)
                    (Pc_checked_p1)

                    ; #62877: <==closure== 24755 (pos)
                    (Pb_checked_p1)

                    ; #71870: <==closure== 33151 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #75352: <==commonly_known== 80539 (pos)
                    (Bd_checked_p1)

                    ; #80539: origin
                    (checked_p1)

                    ; #90848: <==commonly_known== 80539 (pos)
                    (Ba_checked_p1)

                    ; #11556: <==negation-removal== 90848 (pos)
                    (not (Pa_not_checked_p1))

                    ; #13631: <==negation-removal== 51672 (pos)
                    (not (Ba_not_checked_p1))

                    ; #15999: <==negation-removal== 80539 (pos)
                    (not (not_checked_p1))

                    ; #20366: <==uncertain_firing== 25901 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #21606: <==unclosure== 20366 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #27660: <==negation-removal== 33151 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #30976: <==negation-removal== 24755 (pos)
                    (not (Pb_not_checked_p1))

                    ; #34491: <==negation-removal== 71870 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #34533: <==negation-removal== 25901 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #35163: <==uncertain_firing== 33151 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54280: <==negation-removal== 35278 (pos)
                    (not (Pc_not_checked_p1))

                    ; #58263: <==negation-removal== 37770 (pos)
                    (not (Bd_not_checked_p1))

                    ; #68232: <==unclosure== 35163 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #73656: <==negation-removal== 18609 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #74129: <==negation-removal== 75352 (pos)
                    (not (Pd_not_checked_p1))

                    ; #80452: <==negation-removal== 58604 (pos)
                    (not (Bc_not_checked_p1))

                    ; #89118: <==negation-removal== 62877 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15283: <==closure== 18584 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #18584: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #20043: <==commonly_known== 99282 (pos)
                    (Bc_checked_p2)

                    ; #28226: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #45772: <==commonly_known== 99282 (pos)
                    (Ba_checked_p2)

                    ; #48990: <==closure== 20043 (pos)
                    (Pc_checked_p2)

                    ; #51767: <==closure== 90762 (pos)
                    (Pd_checked_p2)

                    ; #64711: <==commonly_known== 99282 (pos)
                    (Bb_checked_p2)

                    ; #75374: <==closure== 64711 (pos)
                    (Pb_checked_p2)

                    ; #81596: <==closure== 28226 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #89530: <==closure== 45772 (pos)
                    (Pa_checked_p2)

                    ; #90762: <==commonly_known== 99282 (pos)
                    (Bd_checked_p2)

                    ; #99282: origin
                    (checked_p2)

                    ; #18688: <==negation-removal== 89530 (pos)
                    (not (Ba_not_checked_p2))

                    ; #23875: <==unclosure== 89164 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #25308: <==negation-removal== 15283 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #32114: <==negation-removal== 99282 (pos)
                    (not (not_checked_p2))

                    ; #33857: <==negation-removal== 51767 (pos)
                    (not (Bd_not_checked_p2))

                    ; #34443: <==negation-removal== 90762 (pos)
                    (not (Pd_not_checked_p2))

                    ; #38496: <==negation-removal== 64711 (pos)
                    (not (Pb_not_checked_p2))

                    ; #53214: <==negation-removal== 18584 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #57407: <==uncertain_firing== 28226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #58989: <==negation-removal== 45772 (pos)
                    (not (Pa_not_checked_p2))

                    ; #61159: <==unclosure== 57407 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #61694: <==negation-removal== 48990 (pos)
                    (not (Bc_not_checked_p2))

                    ; #70891: <==negation-removal== 81596 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #74251: <==negation-removal== 20043 (pos)
                    (not (Pc_not_checked_p2))

                    ; #76404: <==negation-removal== 28226 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #81879: <==negation-removal== 75374 (pos)
                    (not (Bb_not_checked_p2))

                    ; #89164: <==uncertain_firing== 18584 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15693: <==closure== 16784 (pos)
                    (Pc_checked_p3)

                    ; #16784: <==commonly_known== 26536 (pos)
                    (Bc_checked_p3)

                    ; #26536: origin
                    (checked_p3)

                    ; #36562: <==closure== 73512 (pos)
                    (Pb_checked_p3)

                    ; #56629: <==commonly_known== 26536 (pos)
                    (Bd_checked_p3)

                    ; #60162: <==closure== 84488 (pos)
                    (Pa_checked_p3)

                    ; #62647: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #67266: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #73512: <==commonly_known== 26536 (pos)
                    (Bb_checked_p3)

                    ; #84488: <==commonly_known== 26536 (pos)
                    (Ba_checked_p3)

                    ; #86874: <==closure== 56629 (pos)
                    (Pd_checked_p3)

                    ; #88792: <==closure== 67266 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #90198: <==closure== 62647 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #10103: <==negation-removal== 36562 (pos)
                    (not (Bb_not_checked_p3))

                    ; #11724: <==negation-removal== 16784 (pos)
                    (not (Pc_not_checked_p3))

                    ; #12528: <==negation-removal== 86874 (pos)
                    (not (Bd_not_checked_p3))

                    ; #13737: <==negation-removal== 90198 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #14677: <==unclosure== 22985 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #19541: <==negation-removal== 56629 (pos)
                    (not (Pd_not_checked_p3))

                    ; #22985: <==uncertain_firing== 62647 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #27481: <==uncertain_firing== 67266 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #56984: <==unclosure== 27481 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #57188: <==negation-removal== 15693 (pos)
                    (not (Bc_not_checked_p3))

                    ; #58710: <==negation-removal== 62647 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #60853: <==negation-removal== 60162 (pos)
                    (not (Ba_not_checked_p3))

                    ; #62065: <==negation-removal== 84488 (pos)
                    (not (Pa_not_checked_p3))

                    ; #63831: <==negation-removal== 88792 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #73734: <==negation-removal== 67266 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #82244: <==negation-removal== 73512 (pos)
                    (not (Pb_not_checked_p3))

                    ; #84931: <==negation-removal== 26536 (pos)
                    (not (not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13239: <==closure== 17456 (pos)
                    (Pc_checked_p4)

                    ; #17456: <==commonly_known== 24972 (pos)
                    (Bc_checked_p4)

                    ; #20845: <==commonly_known== 24972 (pos)
                    (Bb_checked_p4)

                    ; #22265: <==commonly_known== 24972 (pos)
                    (Ba_checked_p4)

                    ; #24478: <==closure== 46817 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #24972: origin
                    (checked_p4)

                    ; #25438: <==closure== 46013 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #38847: <==closure== 20845 (pos)
                    (Pb_checked_p4)

                    ; #46013: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #46817: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #49862: <==closure== 77055 (pos)
                    (Pd_checked_p4)

                    ; #77055: <==commonly_known== 24972 (pos)
                    (Bd_checked_p4)

                    ; #87882: <==closure== 22265 (pos)
                    (Pa_checked_p4)

                    ; #10757: <==negation-removal== 38847 (pos)
                    (not (Bb_not_checked_p4))

                    ; #23661: <==negation-removal== 24972 (pos)
                    (not (not_checked_p4))

                    ; #25818: <==unclosure== 48985 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #29529: <==negation-removal== 77055 (pos)
                    (not (Pd_not_checked_p4))

                    ; #34639: <==negation-removal== 24478 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #34672: <==unclosure== 74099 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #36793: <==negation-removal== 20845 (pos)
                    (not (Pb_not_checked_p4))

                    ; #37600: <==negation-removal== 25438 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #40314: <==negation-removal== 22265 (pos)
                    (not (Pa_not_checked_p4))

                    ; #48051: <==negation-removal== 17456 (pos)
                    (not (Pc_not_checked_p4))

                    ; #48985: <==uncertain_firing== 46013 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #55453: <==negation-removal== 87882 (pos)
                    (not (Ba_not_checked_p4))

                    ; #62263: <==negation-removal== 49862 (pos)
                    (not (Bd_not_checked_p4))

                    ; #67279: <==negation-removal== 13239 (pos)
                    (not (Bc_not_checked_p4))

                    ; #73101: <==negation-removal== 46013 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #74099: <==uncertain_firing== 46817 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #87517: <==negation-removal== 46817 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13404: <==closure== 90716 (pos)
                    (Pa_checked_p5)

                    ; #29495: <==closure== 90368 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #29634: <==commonly_known== 76939 (pos)
                    (Bc_checked_p5)

                    ; #38307: <==closure== 29634 (pos)
                    (Pc_checked_p5)

                    ; #50628: <==closure== 80765 (pos)
                    (Pb_checked_p5)

                    ; #55857: <==closure== 56381 (pos)
                    (Pd_checked_p5)

                    ; #56381: <==commonly_known== 76939 (pos)
                    (Bd_checked_p5)

                    ; #64508: <==closure== 66437 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #66437: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #76939: origin
                    (checked_p5)

                    ; #80765: <==commonly_known== 76939 (pos)
                    (Bb_checked_p5)

                    ; #90368: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #90716: <==commonly_known== 76939 (pos)
                    (Ba_checked_p5)

                    ; #12437: <==uncertain_firing== 90368 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #22007: <==negation-removal== 66437 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #24956: <==negation-removal== 13404 (pos)
                    (not (Ba_not_checked_p5))

                    ; #25956: <==negation-removal== 50628 (pos)
                    (not (Bb_not_checked_p5))

                    ; #30486: <==negation-removal== 80765 (pos)
                    (not (Pb_not_checked_p5))

                    ; #53095: <==negation-removal== 76939 (pos)
                    (not (not_checked_p5))

                    ; #54661: <==unclosure== 72026 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #63516: <==negation-removal== 90368 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #67492: <==negation-removal== 29495 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #72026: <==uncertain_firing== 66437 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #73453: <==negation-removal== 90716 (pos)
                    (not (Pa_not_checked_p5))

                    ; #78231: <==unclosure== 12437 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #83659: <==negation-removal== 55857 (pos)
                    (not (Bd_not_checked_p5))

                    ; #87901: <==negation-removal== 29634 (pos)
                    (not (Pc_not_checked_p5))

                    ; #87964: <==negation-removal== 64508 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #95533: <==negation-removal== 56381 (pos)
                    (not (Pd_not_checked_p5))

                    ; #98968: <==negation-removal== 38307 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11990: <==commonly_known== 72999 (pos)
                    (Bc_checked_p6)

                    ; #18751: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #38966: <==closure== 74933 (pos)
                    (Pa_checked_p6)

                    ; #50649: <==closure== 88490 (pos)
                    (Pd_checked_p6)

                    ; #54907: <==commonly_known== 72999 (pos)
                    (Bb_checked_p6)

                    ; #55550: <==closure== 60310 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #57922: <==closure== 11990 (pos)
                    (Pc_checked_p6)

                    ; #60310: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #71041: <==closure== 18751 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #72999: origin
                    (checked_p6)

                    ; #74933: <==commonly_known== 72999 (pos)
                    (Ba_checked_p6)

                    ; #88490: <==commonly_known== 72999 (pos)
                    (Bd_checked_p6)

                    ; #91633: <==closure== 54907 (pos)
                    (Pb_checked_p6)

                    ; #10306: <==uncertain_firing== 60310 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #10589: <==unclosure== 81087 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #14705: <==negation-removal== 38966 (pos)
                    (not (Ba_not_checked_p6))

                    ; #22339: <==negation-removal== 11990 (pos)
                    (not (Pc_not_checked_p6))

                    ; #24393: <==negation-removal== 72999 (pos)
                    (not (not_checked_p6))

                    ; #29417: <==negation-removal== 55550 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #34103: <==negation-removal== 54907 (pos)
                    (not (Pb_not_checked_p6))

                    ; #52965: <==negation-removal== 74933 (pos)
                    (not (Pa_not_checked_p6))

                    ; #61611: <==negation-removal== 88490 (pos)
                    (not (Pd_not_checked_p6))

                    ; #66502: <==negation-removal== 60310 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #67278: <==unclosure== 10306 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #69471: <==negation-removal== 57922 (pos)
                    (not (Bc_not_checked_p6))

                    ; #72389: <==negation-removal== 71041 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #77184: <==negation-removal== 18751 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #81087: <==uncertain_firing== 18751 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #85919: <==negation-removal== 50649 (pos)
                    (not (Bd_not_checked_p6))

                    ; #92185: <==negation-removal== 91633 (pos)
                    (not (Bb_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15128: <==commonly_known== 16286 (pos)
                    (Bc_checked_p7)

                    ; #16286: origin
                    (checked_p7)

                    ; #17809: <==closure== 15128 (pos)
                    (Pc_checked_p7)

                    ; #22192: <==closure== 66562 (pos)
                    (Pb_checked_p7)

                    ; #23060: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #27310: <==closure== 92044 (pos)
                    (Pa_checked_p7)

                    ; #29406: <==closure== 23060 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #58348: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #61068: <==closure== 85878 (pos)
                    (Pd_checked_p7)

                    ; #66562: <==commonly_known== 16286 (pos)
                    (Bb_checked_p7)

                    ; #85878: <==commonly_known== 16286 (pos)
                    (Bd_checked_p7)

                    ; #86882: <==closure== 58348 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #92044: <==commonly_known== 16286 (pos)
                    (Ba_checked_p7)

                    ; #13386: <==negation-removal== 66562 (pos)
                    (not (Pb_not_checked_p7))

                    ; #22473: <==negation-removal== 29406 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #26740: <==negation-removal== 22192 (pos)
                    (not (Bb_not_checked_p7))

                    ; #28315: <==unclosure== 78821 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #38939: <==negation-removal== 86882 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #43707: <==negation-removal== 17809 (pos)
                    (not (Bc_not_checked_p7))

                    ; #44735: <==negation-removal== 92044 (pos)
                    (not (Pa_not_checked_p7))

                    ; #52180: <==uncertain_firing== 58348 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #60952: <==negation-removal== 27310 (pos)
                    (not (Ba_not_checked_p7))

                    ; #61617: <==negation-removal== 61068 (pos)
                    (not (Bd_not_checked_p7))

                    ; #71071: <==unclosure== 52180 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #77096: <==negation-removal== 58348 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #77809: <==negation-removal== 16286 (pos)
                    (not (not_checked_p7))

                    ; #78821: <==uncertain_firing== 23060 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #84601: <==negation-removal== 23060 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #87776: <==negation-removal== 85878 (pos)
                    (not (Pd_not_checked_p7))

                    ; #90240: <==negation-removal== 15128 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13681: <==commonly_known== 78191 (pos)
                    (Bb_checked_p8)

                    ; #23969: <==closure== 13681 (pos)
                    (Pb_checked_p8)

                    ; #24400: <==commonly_known== 78191 (pos)
                    (Bc_checked_p8)

                    ; #35143: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #37246: <==commonly_known== 78191 (pos)
                    (Bd_checked_p8)

                    ; #50199: <==closure== 24400 (pos)
                    (Pc_checked_p8)

                    ; #64929: <==closure== 91354 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #69013: <==closure== 37246 (pos)
                    (Pd_checked_p8)

                    ; #69846: <==closure== 78804 (pos)
                    (Pa_checked_p8)

                    ; #78191: origin
                    (checked_p8)

                    ; #78804: <==commonly_known== 78191 (pos)
                    (Ba_checked_p8)

                    ; #84198: <==closure== 35143 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #91354: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #13946: <==uncertain_firing== 35143 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #17493: <==negation-removal== 78804 (pos)
                    (not (Pa_not_checked_p8))

                    ; #43042: <==negation-removal== 69846 (pos)
                    (not (Ba_not_checked_p8))

                    ; #46984: <==negation-removal== 37246 (pos)
                    (not (Pd_not_checked_p8))

                    ; #48626: <==negation-removal== 35143 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #51127: <==negation-removal== 78191 (pos)
                    (not (not_checked_p8))

                    ; #56572: <==unclosure== 13946 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #60566: <==negation-removal== 84198 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #61575: <==negation-removal== 23969 (pos)
                    (not (Bb_not_checked_p8))

                    ; #67514: <==negation-removal== 91354 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70091: <==negation-removal== 64929 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #72896: <==negation-removal== 50199 (pos)
                    (not (Bc_not_checked_p8))

                    ; #72930: <==negation-removal== 13681 (pos)
                    (not (Pb_not_checked_p8))

                    ; #73167: <==negation-removal== 69013 (pos)
                    (not (Bd_not_checked_p8))

                    ; #81713: <==negation-removal== 24400 (pos)
                    (not (Pc_not_checked_p8))

                    ; #84225: <==uncertain_firing== 91354 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #86354: <==unclosure== 84225 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11424: <==closure== 52188 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #39700: <==closure== 41155 (pos)
                    (Pc_checked_p9)

                    ; #41155: <==commonly_known== 82826 (pos)
                    (Bc_checked_p9)

                    ; #43140: <==commonly_known== 82826 (pos)
                    (Bb_checked_p9)

                    ; #49179: <==closure== 70140 (pos)
                    (Pa_checked_p9)

                    ; #49999: <==commonly_known== 82826 (pos)
                    (Bd_checked_p9)

                    ; #52188: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #58490: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #70140: <==commonly_known== 82826 (pos)
                    (Ba_checked_p9)

                    ; #71011: <==closure== 43140 (pos)
                    (Pb_checked_p9)

                    ; #74127: <==closure== 49999 (pos)
                    (Pd_checked_p9)

                    ; #80580: <==closure== 58490 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #82826: origin
                    (checked_p9)

                    ; #14835: <==negation-removal== 43140 (pos)
                    (not (Pb_not_checked_p9))

                    ; #29649: <==negation-removal== 52188 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #34169: <==unclosure== 60005 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #46779: <==negation-removal== 70140 (pos)
                    (not (Pa_not_checked_p9))

                    ; #50761: <==negation-removal== 39700 (pos)
                    (not (Bc_not_checked_p9))

                    ; #58483: <==negation-removal== 49179 (pos)
                    (not (Ba_not_checked_p9))

                    ; #60005: <==uncertain_firing== 52188 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #60598: <==negation-removal== 11424 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #65904: <==uncertain_firing== 58490 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #69554: <==negation-removal== 80580 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #69559: <==negation-removal== 71011 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73511: <==negation-removal== 49999 (pos)
                    (not (Pd_not_checked_p9))

                    ; #76732: <==negation-removal== 41155 (pos)
                    (not (Pc_not_checked_p9))

                    ; #83039: <==negation-removal== 82826 (pos)
                    (not (not_checked_p9))

                    ; #83573: <==negation-removal== 58490 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #84353: <==unclosure== 65904 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #96886: <==negation-removal== 74127 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24755: <==commonly_known== 80539 (pos)
                    (Bb_checked_p1)

                    ; #33693: <==closure== 49502 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #35278: <==commonly_known== 80539 (pos)
                    (Bc_checked_p1)

                    ; #37770: <==closure== 75352 (pos)
                    (Pd_checked_p1)

                    ; #49502: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #51672: <==closure== 90848 (pos)
                    (Pa_checked_p1)

                    ; #53789: <==closure== 57312 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #57312: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #58604: <==closure== 35278 (pos)
                    (Pc_checked_p1)

                    ; #62877: <==closure== 24755 (pos)
                    (Pb_checked_p1)

                    ; #75352: <==commonly_known== 80539 (pos)
                    (Bd_checked_p1)

                    ; #80539: origin
                    (checked_p1)

                    ; #90848: <==commonly_known== 80539 (pos)
                    (Ba_checked_p1)

                    ; #11139: <==negation-removal== 57312 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #11556: <==negation-removal== 90848 (pos)
                    (not (Pa_not_checked_p1))

                    ; #13631: <==negation-removal== 51672 (pos)
                    (not (Ba_not_checked_p1))

                    ; #14337: <==negation-removal== 33693 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #15999: <==negation-removal== 80539 (pos)
                    (not (not_checked_p1))

                    ; #16793: <==uncertain_firing== 49502 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #30976: <==negation-removal== 24755 (pos)
                    (not (Pb_not_checked_p1))

                    ; #36155: <==negation-removal== 53789 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #45772: <==negation-removal== 49502 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #54280: <==negation-removal== 35278 (pos)
                    (not (Pc_not_checked_p1))

                    ; #58263: <==negation-removal== 37770 (pos)
                    (not (Bd_not_checked_p1))

                    ; #63144: <==uncertain_firing== 57312 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #71036: <==unclosure== 16793 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #74129: <==negation-removal== 75352 (pos)
                    (not (Pd_not_checked_p1))

                    ; #80452: <==negation-removal== 58604 (pos)
                    (not (Bc_not_checked_p1))

                    ; #89118: <==negation-removal== 62877 (pos)
                    (not (Bb_not_checked_p1))

                    ; #90936: <==unclosure== 63144 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #20043: <==commonly_known== 99282 (pos)
                    (Bc_checked_p2)

                    ; #28302: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #34451: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #38803: <==closure== 28302 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #45772: <==commonly_known== 99282 (pos)
                    (Ba_checked_p2)

                    ; #48990: <==closure== 20043 (pos)
                    (Pc_checked_p2)

                    ; #51767: <==closure== 90762 (pos)
                    (Pd_checked_p2)

                    ; #64711: <==commonly_known== 99282 (pos)
                    (Bb_checked_p2)

                    ; #75374: <==closure== 64711 (pos)
                    (Pb_checked_p2)

                    ; #84661: <==closure== 34451 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #89530: <==closure== 45772 (pos)
                    (Pa_checked_p2)

                    ; #90762: <==commonly_known== 99282 (pos)
                    (Bd_checked_p2)

                    ; #99282: origin
                    (checked_p2)

                    ; #14627: <==negation-removal== 34451 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #14908: <==uncertain_firing== 28302 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #18688: <==negation-removal== 89530 (pos)
                    (not (Ba_not_checked_p2))

                    ; #22823: <==unclosure== 14908 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #32114: <==negation-removal== 99282 (pos)
                    (not (not_checked_p2))

                    ; #33072: <==uncertain_firing== 34451 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #33857: <==negation-removal== 51767 (pos)
                    (not (Bd_not_checked_p2))

                    ; #34443: <==negation-removal== 90762 (pos)
                    (not (Pd_not_checked_p2))

                    ; #36738: <==unclosure== 33072 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #38496: <==negation-removal== 64711 (pos)
                    (not (Pb_not_checked_p2))

                    ; #49043: <==negation-removal== 28302 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #58989: <==negation-removal== 45772 (pos)
                    (not (Pa_not_checked_p2))

                    ; #61694: <==negation-removal== 48990 (pos)
                    (not (Bc_not_checked_p2))

                    ; #74251: <==negation-removal== 20043 (pos)
                    (not (Pc_not_checked_p2))

                    ; #81083: <==negation-removal== 38803 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #81879: <==negation-removal== 75374 (pos)
                    (not (Bb_not_checked_p2))

                    ; #84046: <==negation-removal== 84661 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15693: <==closure== 16784 (pos)
                    (Pc_checked_p3)

                    ; #16784: <==commonly_known== 26536 (pos)
                    (Bc_checked_p3)

                    ; #25992: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #26536: origin
                    (checked_p3)

                    ; #36562: <==closure== 73512 (pos)
                    (Pb_checked_p3)

                    ; #56239: <==closure== 25992 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #56629: <==commonly_known== 26536 (pos)
                    (Bd_checked_p3)

                    ; #60162: <==closure== 84488 (pos)
                    (Pa_checked_p3)

                    ; #71242: <==closure== 87513 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #73512: <==commonly_known== 26536 (pos)
                    (Bb_checked_p3)

                    ; #84488: <==commonly_known== 26536 (pos)
                    (Ba_checked_p3)

                    ; #86874: <==closure== 56629 (pos)
                    (Pd_checked_p3)

                    ; #87513: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #10103: <==negation-removal== 36562 (pos)
                    (not (Bb_not_checked_p3))

                    ; #11479: <==unclosure== 75537 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #11724: <==negation-removal== 16784 (pos)
                    (not (Pc_not_checked_p3))

                    ; #12528: <==negation-removal== 86874 (pos)
                    (not (Bd_not_checked_p3))

                    ; #19541: <==negation-removal== 56629 (pos)
                    (not (Pd_not_checked_p3))

                    ; #32465: <==unclosure== 48625 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #35162: <==negation-removal== 56239 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #48471: <==negation-removal== 87513 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #48625: <==uncertain_firing== 87513 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #57188: <==negation-removal== 15693 (pos)
                    (not (Bc_not_checked_p3))

                    ; #60604: <==negation-removal== 25992 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #60853: <==negation-removal== 60162 (pos)
                    (not (Ba_not_checked_p3))

                    ; #62065: <==negation-removal== 84488 (pos)
                    (not (Pa_not_checked_p3))

                    ; #75537: <==uncertain_firing== 25992 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #82244: <==negation-removal== 73512 (pos)
                    (not (Pb_not_checked_p3))

                    ; #83536: <==negation-removal== 71242 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #84931: <==negation-removal== 26536 (pos)
                    (not (not_checked_p3))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13239: <==closure== 17456 (pos)
                    (Pc_checked_p4)

                    ; #17456: <==commonly_known== 24972 (pos)
                    (Bc_checked_p4)

                    ; #20845: <==commonly_known== 24972 (pos)
                    (Bb_checked_p4)

                    ; #22265: <==commonly_known== 24972 (pos)
                    (Ba_checked_p4)

                    ; #24972: origin
                    (checked_p4)

                    ; #38847: <==closure== 20845 (pos)
                    (Pb_checked_p4)

                    ; #43971: <==closure== 83705 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #49862: <==closure== 77055 (pos)
                    (Pd_checked_p4)

                    ; #52736: <==closure== 67444 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #67444: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #77055: <==commonly_known== 24972 (pos)
                    (Bd_checked_p4)

                    ; #83705: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #87882: <==closure== 22265 (pos)
                    (Pa_checked_p4)

                    ; #10757: <==negation-removal== 38847 (pos)
                    (not (Bb_not_checked_p4))

                    ; #23661: <==negation-removal== 24972 (pos)
                    (not (not_checked_p4))

                    ; #27585: <==negation-removal== 43971 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #29529: <==negation-removal== 77055 (pos)
                    (not (Pd_not_checked_p4))

                    ; #36793: <==negation-removal== 20845 (pos)
                    (not (Pb_not_checked_p4))

                    ; #40314: <==negation-removal== 22265 (pos)
                    (not (Pa_not_checked_p4))

                    ; #44284: <==negation-removal== 83705 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #48051: <==negation-removal== 17456 (pos)
                    (not (Pc_not_checked_p4))

                    ; #49609: <==negation-removal== 52736 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #53674: <==unclosure== 91237 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #55453: <==negation-removal== 87882 (pos)
                    (not (Ba_not_checked_p4))

                    ; #56403: <==negation-removal== 67444 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #59690: <==uncertain_firing== 67444 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #62263: <==negation-removal== 49862 (pos)
                    (not (Bd_not_checked_p4))

                    ; #67279: <==negation-removal== 13239 (pos)
                    (not (Bc_not_checked_p4))

                    ; #67805: <==unclosure== 59690 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #91237: <==uncertain_firing== 83705 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13404: <==closure== 90716 (pos)
                    (Pa_checked_p5)

                    ; #29634: <==commonly_known== 76939 (pos)
                    (Bc_checked_p5)

                    ; #30219: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #31541: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #38307: <==closure== 29634 (pos)
                    (Pc_checked_p5)

                    ; #50628: <==closure== 80765 (pos)
                    (Pb_checked_p5)

                    ; #55857: <==closure== 56381 (pos)
                    (Pd_checked_p5)

                    ; #56381: <==commonly_known== 76939 (pos)
                    (Bd_checked_p5)

                    ; #76816: <==closure== 30219 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #76939: origin
                    (checked_p5)

                    ; #80765: <==commonly_known== 76939 (pos)
                    (Bb_checked_p5)

                    ; #87221: <==closure== 31541 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #90716: <==commonly_known== 76939 (pos)
                    (Ba_checked_p5)

                    ; #12654: <==unclosure== 82738 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #19212: <==negation-removal== 87221 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #24956: <==negation-removal== 13404 (pos)
                    (not (Ba_not_checked_p5))

                    ; #25956: <==negation-removal== 50628 (pos)
                    (not (Bb_not_checked_p5))

                    ; #27535: <==negation-removal== 30219 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #30486: <==negation-removal== 80765 (pos)
                    (not (Pb_not_checked_p5))

                    ; #41333: <==unclosure== 50248 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #47443: <==negation-removal== 76816 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #50248: <==uncertain_firing== 31541 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #53095: <==negation-removal== 76939 (pos)
                    (not (not_checked_p5))

                    ; #73453: <==negation-removal== 90716 (pos)
                    (not (Pa_not_checked_p5))

                    ; #79178: <==negation-removal== 31541 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #82738: <==uncertain_firing== 30219 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #83659: <==negation-removal== 55857 (pos)
                    (not (Bd_not_checked_p5))

                    ; #87901: <==negation-removal== 29634 (pos)
                    (not (Pc_not_checked_p5))

                    ; #95533: <==negation-removal== 56381 (pos)
                    (not (Pd_not_checked_p5))

                    ; #98968: <==negation-removal== 38307 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11990: <==commonly_known== 72999 (pos)
                    (Bc_checked_p6)

                    ; #38966: <==closure== 74933 (pos)
                    (Pa_checked_p6)

                    ; #39533: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #40214: <==closure== 49939 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #49939: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #50649: <==closure== 88490 (pos)
                    (Pd_checked_p6)

                    ; #52705: <==closure== 39533 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #54907: <==commonly_known== 72999 (pos)
                    (Bb_checked_p6)

                    ; #57922: <==closure== 11990 (pos)
                    (Pc_checked_p6)

                    ; #72999: origin
                    (checked_p6)

                    ; #74933: <==commonly_known== 72999 (pos)
                    (Ba_checked_p6)

                    ; #88490: <==commonly_known== 72999 (pos)
                    (Bd_checked_p6)

                    ; #91633: <==closure== 54907 (pos)
                    (Pb_checked_p6)

                    ; #12770: <==negation-removal== 52705 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #14705: <==negation-removal== 38966 (pos)
                    (not (Ba_not_checked_p6))

                    ; #14797: <==negation-removal== 40214 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #22339: <==negation-removal== 11990 (pos)
                    (not (Pc_not_checked_p6))

                    ; #24393: <==negation-removal== 72999 (pos)
                    (not (not_checked_p6))

                    ; #34103: <==negation-removal== 54907 (pos)
                    (not (Pb_not_checked_p6))

                    ; #40494: <==unclosure== 80942 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #52965: <==negation-removal== 74933 (pos)
                    (not (Pa_not_checked_p6))

                    ; #61611: <==negation-removal== 88490 (pos)
                    (not (Pd_not_checked_p6))

                    ; #64852: <==unclosure== 79204 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #69471: <==negation-removal== 57922 (pos)
                    (not (Bc_not_checked_p6))

                    ; #79204: <==uncertain_firing== 49939 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #80942: <==uncertain_firing== 39533 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #84283: <==negation-removal== 39533 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #85919: <==negation-removal== 50649 (pos)
                    (not (Bd_not_checked_p6))

                    ; #88838: <==negation-removal== 49939 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #92185: <==negation-removal== 91633 (pos)
                    (not (Bb_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15128: <==commonly_known== 16286 (pos)
                    (Bc_checked_p7)

                    ; #16286: origin
                    (checked_p7)

                    ; #16854: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #17809: <==closure== 15128 (pos)
                    (Pc_checked_p7)

                    ; #22081: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #22192: <==closure== 66562 (pos)
                    (Pb_checked_p7)

                    ; #27310: <==closure== 92044 (pos)
                    (Pa_checked_p7)

                    ; #35019: <==closure== 22081 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #43227: <==closure== 16854 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #61068: <==closure== 85878 (pos)
                    (Pd_checked_p7)

                    ; #66562: <==commonly_known== 16286 (pos)
                    (Bb_checked_p7)

                    ; #85878: <==commonly_known== 16286 (pos)
                    (Bd_checked_p7)

                    ; #92044: <==commonly_known== 16286 (pos)
                    (Ba_checked_p7)

                    ; #13386: <==negation-removal== 66562 (pos)
                    (not (Pb_not_checked_p7))

                    ; #17661: <==unclosure== 72725 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #19134: <==negation-removal== 22081 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #26740: <==negation-removal== 22192 (pos)
                    (not (Bb_not_checked_p7))

                    ; #43523: <==negation-removal== 16854 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #43707: <==negation-removal== 17809 (pos)
                    (not (Bc_not_checked_p7))

                    ; #44735: <==negation-removal== 92044 (pos)
                    (not (Pa_not_checked_p7))

                    ; #59210: <==negation-removal== 43227 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #60952: <==negation-removal== 27310 (pos)
                    (not (Ba_not_checked_p7))

                    ; #61617: <==negation-removal== 61068 (pos)
                    (not (Bd_not_checked_p7))

                    ; #69316: <==unclosure== 76236 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #72725: <==uncertain_firing== 22081 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #76236: <==uncertain_firing== 16854 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #77809: <==negation-removal== 16286 (pos)
                    (not (not_checked_p7))

                    ; #86432: <==negation-removal== 35019 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #87776: <==negation-removal== 85878 (pos)
                    (not (Pd_not_checked_p7))

                    ; #90240: <==negation-removal== 15128 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11394: <==closure== 37966 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #13681: <==commonly_known== 78191 (pos)
                    (Bb_checked_p8)

                    ; #23969: <==closure== 13681 (pos)
                    (Pb_checked_p8)

                    ; #24400: <==commonly_known== 78191 (pos)
                    (Bc_checked_p8)

                    ; #37246: <==commonly_known== 78191 (pos)
                    (Bd_checked_p8)

                    ; #37966: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #50199: <==closure== 24400 (pos)
                    (Pc_checked_p8)

                    ; #67318: <==closure== 86160 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #69013: <==closure== 37246 (pos)
                    (Pd_checked_p8)

                    ; #69846: <==closure== 78804 (pos)
                    (Pa_checked_p8)

                    ; #78191: origin
                    (checked_p8)

                    ; #78804: <==commonly_known== 78191 (pos)
                    (Ba_checked_p8)

                    ; #86160: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #10690: <==negation-removal== 86160 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #17493: <==negation-removal== 78804 (pos)
                    (not (Pa_not_checked_p8))

                    ; #27297: <==uncertain_firing== 86160 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #43042: <==negation-removal== 69846 (pos)
                    (not (Ba_not_checked_p8))

                    ; #46984: <==negation-removal== 37246 (pos)
                    (not (Pd_not_checked_p8))

                    ; #51127: <==negation-removal== 78191 (pos)
                    (not (not_checked_p8))

                    ; #61575: <==negation-removal== 23969 (pos)
                    (not (Bb_not_checked_p8))

                    ; #71571: <==negation-removal== 11394 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #72896: <==negation-removal== 50199 (pos)
                    (not (Bc_not_checked_p8))

                    ; #72930: <==negation-removal== 13681 (pos)
                    (not (Pb_not_checked_p8))

                    ; #73167: <==negation-removal== 69013 (pos)
                    (not (Bd_not_checked_p8))

                    ; #81713: <==negation-removal== 24400 (pos)
                    (not (Pc_not_checked_p8))

                    ; #82481: <==unclosure== 91387 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #87584: <==negation-removal== 67318 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #88895: <==unclosure== 27297 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #89446: <==negation-removal== 37966 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #91387: <==uncertain_firing== 37966 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11319: <==closure== 39104 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #21556: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #39104: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #39700: <==closure== 41155 (pos)
                    (Pc_checked_p9)

                    ; #41155: <==commonly_known== 82826 (pos)
                    (Bc_checked_p9)

                    ; #43140: <==commonly_known== 82826 (pos)
                    (Bb_checked_p9)

                    ; #49179: <==closure== 70140 (pos)
                    (Pa_checked_p9)

                    ; #49999: <==commonly_known== 82826 (pos)
                    (Bd_checked_p9)

                    ; #70140: <==commonly_known== 82826 (pos)
                    (Ba_checked_p9)

                    ; #71011: <==closure== 43140 (pos)
                    (Pb_checked_p9)

                    ; #74127: <==closure== 49999 (pos)
                    (Pd_checked_p9)

                    ; #76839: <==closure== 21556 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #82826: origin
                    (checked_p9)

                    ; #11915: <==unclosure== 55990 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #14753: <==negation-removal== 76839 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #14835: <==negation-removal== 43140 (pos)
                    (not (Pb_not_checked_p9))

                    ; #16742: <==negation-removal== 39104 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #46779: <==negation-removal== 70140 (pos)
                    (not (Pa_not_checked_p9))

                    ; #50761: <==negation-removal== 39700 (pos)
                    (not (Bc_not_checked_p9))

                    ; #55990: <==uncertain_firing== 39104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #58386: <==negation-removal== 21556 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #58483: <==negation-removal== 49179 (pos)
                    (not (Ba_not_checked_p9))

                    ; #64332: <==unclosure== 73162 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #69559: <==negation-removal== 71011 (pos)
                    (not (Bb_not_checked_p9))

                    ; #73162: <==uncertain_firing== 21556 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #73511: <==negation-removal== 49999 (pos)
                    (not (Pd_not_checked_p9))

                    ; #76732: <==negation-removal== 41155 (pos)
                    (not (Pc_not_checked_p9))

                    ; #83039: <==negation-removal== 82826 (pos)
                    (not (not_checked_p9))

                    ; #83846: <==negation-removal== 11319 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #96886: <==negation-removal== 74127 (pos)
                    (not (Bd_not_checked_p9))))

)