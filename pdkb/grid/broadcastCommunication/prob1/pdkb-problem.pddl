(define (problem grid-prob)

    (:domain grid)

    (:init
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
        (Pa_Ba_not_checked_p1)
        (Pa_Ba_not_checked_p2)
        (Pa_Ba_not_checked_p3)
        (Pa_Ba_not_checked_p4)
        (Pa_Ba_not_checked_p5)
        (Pa_Ba_not_checked_p6)
        (Pa_Ba_not_checked_p7)
        (Pa_Ba_not_checked_p8)
        (Pa_Ba_not_checked_p9)
        (Pa_Ba_not_hiddensurvivorat_s_p1)
        (Pa_Ba_not_hiddensurvivorat_s_p2)
        (Pa_Ba_not_hiddensurvivorat_s_p3)
        (Pa_Ba_not_hiddensurvivorat_s_p4)
        (Pa_Ba_not_hiddensurvivorat_s_p5)
        (Pa_Ba_not_hiddensurvivorat_s_p6)
        (Pa_Ba_not_hiddensurvivorat_s_p7)
        (Pa_Ba_not_hiddensurvivorat_s_p8)
        (Pa_Ba_not_hiddensurvivorat_s_p9)
        (Pa_Ba_not_survivorat_s_p1)
        (Pa_Ba_not_survivorat_s_p2)
        (Pa_Ba_not_survivorat_s_p3)
        (Pa_Ba_not_survivorat_s_p4)
        (Pa_Ba_not_survivorat_s_p5)
        (Pa_Ba_not_survivorat_s_p6)
        (Pa_Ba_not_survivorat_s_p7)
        (Pa_Ba_not_survivorat_s_p8)
        (Pa_Ba_not_survivorat_s_p9)
        (Pa_Ba_checked_p1)
        (Pa_Ba_checked_p2)
        (Pa_Ba_checked_p3)
        (Pa_Ba_checked_p4)
        (Pa_Ba_checked_p5)
        (Pa_Ba_checked_p6)
        (Pa_Ba_checked_p7)
        (Pa_Ba_checked_p8)
        (Pa_Ba_checked_p9)
        (Pa_Ba_hiddensurvivorat_s_p1)
        (Pa_Ba_hiddensurvivorat_s_p2)
        (Pa_Ba_hiddensurvivorat_s_p3)
        (Pa_Ba_hiddensurvivorat_s_p4)
        (Pa_Ba_hiddensurvivorat_s_p5)
        (Pa_Ba_hiddensurvivorat_s_p6)
        (Pa_Ba_hiddensurvivorat_s_p7)
        (Pa_Ba_hiddensurvivorat_s_p8)
        (Pa_Ba_hiddensurvivorat_s_p9)
        (Pa_Ba_survivorat_s_p1)
        (Pa_Ba_survivorat_s_p2)
        (Pa_Ba_survivorat_s_p3)
        (Pa_Ba_survivorat_s_p4)
        (Pa_Ba_survivorat_s_p5)
        (Pa_Ba_survivorat_s_p6)
        (Pa_Ba_survivorat_s_p7)
        (Pa_Ba_survivorat_s_p8)
        (Pa_Ba_survivorat_s_p9)
        (Pa_Bb_not_checked_p1)
        (Pa_Bb_not_checked_p2)
        (Pa_Bb_not_checked_p3)
        (Pa_Bb_not_checked_p4)
        (Pa_Bb_not_checked_p5)
        (Pa_Bb_not_checked_p6)
        (Pa_Bb_not_checked_p7)
        (Pa_Bb_not_checked_p8)
        (Pa_Bb_not_checked_p9)
        (Pa_Bb_not_hiddensurvivorat_s_p1)
        (Pa_Bb_not_hiddensurvivorat_s_p2)
        (Pa_Bb_not_hiddensurvivorat_s_p3)
        (Pa_Bb_not_hiddensurvivorat_s_p4)
        (Pa_Bb_not_hiddensurvivorat_s_p5)
        (Pa_Bb_not_hiddensurvivorat_s_p6)
        (Pa_Bb_not_hiddensurvivorat_s_p7)
        (Pa_Bb_not_hiddensurvivorat_s_p8)
        (Pa_Bb_not_hiddensurvivorat_s_p9)
        (Pa_Bb_not_survivorat_s_p1)
        (Pa_Bb_not_survivorat_s_p2)
        (Pa_Bb_not_survivorat_s_p3)
        (Pa_Bb_not_survivorat_s_p4)
        (Pa_Bb_not_survivorat_s_p5)
        (Pa_Bb_not_survivorat_s_p6)
        (Pa_Bb_not_survivorat_s_p7)
        (Pa_Bb_not_survivorat_s_p8)
        (Pa_Bb_not_survivorat_s_p9)
        (Pa_Bb_checked_p1)
        (Pa_Bb_checked_p2)
        (Pa_Bb_checked_p3)
        (Pa_Bb_checked_p4)
        (Pa_Bb_checked_p5)
        (Pa_Bb_checked_p6)
        (Pa_Bb_checked_p7)
        (Pa_Bb_checked_p8)
        (Pa_Bb_checked_p9)
        (Pa_Bb_hiddensurvivorat_s_p1)
        (Pa_Bb_hiddensurvivorat_s_p2)
        (Pa_Bb_hiddensurvivorat_s_p3)
        (Pa_Bb_hiddensurvivorat_s_p4)
        (Pa_Bb_hiddensurvivorat_s_p5)
        (Pa_Bb_hiddensurvivorat_s_p6)
        (Pa_Bb_hiddensurvivorat_s_p7)
        (Pa_Bb_hiddensurvivorat_s_p8)
        (Pa_Bb_hiddensurvivorat_s_p9)
        (Pa_Bb_survivorat_s_p1)
        (Pa_Bb_survivorat_s_p2)
        (Pa_Bb_survivorat_s_p3)
        (Pa_Bb_survivorat_s_p4)
        (Pa_Bb_survivorat_s_p5)
        (Pa_Bb_survivorat_s_p6)
        (Pa_Bb_survivorat_s_p7)
        (Pa_Bb_survivorat_s_p8)
        (Pa_Bb_survivorat_s_p9)
        (Pa_Bc_not_checked_p1)
        (Pa_Bc_not_checked_p2)
        (Pa_Bc_not_checked_p3)
        (Pa_Bc_not_checked_p4)
        (Pa_Bc_not_checked_p5)
        (Pa_Bc_not_checked_p6)
        (Pa_Bc_not_checked_p7)
        (Pa_Bc_not_checked_p8)
        (Pa_Bc_not_checked_p9)
        (Pa_Bc_not_hiddensurvivorat_s_p1)
        (Pa_Bc_not_hiddensurvivorat_s_p2)
        (Pa_Bc_not_hiddensurvivorat_s_p3)
        (Pa_Bc_not_hiddensurvivorat_s_p4)
        (Pa_Bc_not_hiddensurvivorat_s_p5)
        (Pa_Bc_not_hiddensurvivorat_s_p6)
        (Pa_Bc_not_hiddensurvivorat_s_p7)
        (Pa_Bc_not_hiddensurvivorat_s_p8)
        (Pa_Bc_not_hiddensurvivorat_s_p9)
        (Pa_Bc_not_survivorat_s_p1)
        (Pa_Bc_not_survivorat_s_p2)
        (Pa_Bc_not_survivorat_s_p3)
        (Pa_Bc_not_survivorat_s_p4)
        (Pa_Bc_not_survivorat_s_p5)
        (Pa_Bc_not_survivorat_s_p6)
        (Pa_Bc_not_survivorat_s_p7)
        (Pa_Bc_not_survivorat_s_p8)
        (Pa_Bc_not_survivorat_s_p9)
        (Pa_Bc_checked_p1)
        (Pa_Bc_checked_p2)
        (Pa_Bc_checked_p3)
        (Pa_Bc_checked_p4)
        (Pa_Bc_checked_p5)
        (Pa_Bc_checked_p6)
        (Pa_Bc_checked_p7)
        (Pa_Bc_checked_p8)
        (Pa_Bc_checked_p9)
        (Pa_Bc_hiddensurvivorat_s_p1)
        (Pa_Bc_hiddensurvivorat_s_p2)
        (Pa_Bc_hiddensurvivorat_s_p3)
        (Pa_Bc_hiddensurvivorat_s_p4)
        (Pa_Bc_hiddensurvivorat_s_p5)
        (Pa_Bc_hiddensurvivorat_s_p6)
        (Pa_Bc_hiddensurvivorat_s_p7)
        (Pa_Bc_hiddensurvivorat_s_p8)
        (Pa_Bc_hiddensurvivorat_s_p9)
        (Pa_Bc_survivorat_s_p1)
        (Pa_Bc_survivorat_s_p2)
        (Pa_Bc_survivorat_s_p3)
        (Pa_Bc_survivorat_s_p4)
        (Pa_Bc_survivorat_s_p5)
        (Pa_Bc_survivorat_s_p6)
        (Pa_Bc_survivorat_s_p7)
        (Pa_Bc_survivorat_s_p8)
        (Pa_Bc_survivorat_s_p9)
        (Pa_Pa_not_checked_p1)
        (Pa_Pa_not_checked_p2)
        (Pa_Pa_not_checked_p3)
        (Pa_Pa_not_checked_p4)
        (Pa_Pa_not_checked_p5)
        (Pa_Pa_not_checked_p6)
        (Pa_Pa_not_checked_p7)
        (Pa_Pa_not_checked_p8)
        (Pa_Pa_not_checked_p9)
        (Pa_Pa_not_hiddensurvivorat_s_p1)
        (Pa_Pa_not_hiddensurvivorat_s_p2)
        (Pa_Pa_not_hiddensurvivorat_s_p3)
        (Pa_Pa_not_hiddensurvivorat_s_p4)
        (Pa_Pa_not_hiddensurvivorat_s_p5)
        (Pa_Pa_not_hiddensurvivorat_s_p6)
        (Pa_Pa_not_hiddensurvivorat_s_p7)
        (Pa_Pa_not_hiddensurvivorat_s_p8)
        (Pa_Pa_not_hiddensurvivorat_s_p9)
        (Pa_Pa_not_survivorat_s_p1)
        (Pa_Pa_not_survivorat_s_p2)
        (Pa_Pa_not_survivorat_s_p3)
        (Pa_Pa_not_survivorat_s_p4)
        (Pa_Pa_not_survivorat_s_p5)
        (Pa_Pa_not_survivorat_s_p6)
        (Pa_Pa_not_survivorat_s_p7)
        (Pa_Pa_not_survivorat_s_p8)
        (Pa_Pa_not_survivorat_s_p9)
        (Pa_Pa_checked_p1)
        (Pa_Pa_checked_p2)
        (Pa_Pa_checked_p3)
        (Pa_Pa_checked_p4)
        (Pa_Pa_checked_p5)
        (Pa_Pa_checked_p6)
        (Pa_Pa_checked_p7)
        (Pa_Pa_checked_p8)
        (Pa_Pa_checked_p9)
        (Pa_Pa_hiddensurvivorat_s_p1)
        (Pa_Pa_hiddensurvivorat_s_p2)
        (Pa_Pa_hiddensurvivorat_s_p3)
        (Pa_Pa_hiddensurvivorat_s_p4)
        (Pa_Pa_hiddensurvivorat_s_p5)
        (Pa_Pa_hiddensurvivorat_s_p6)
        (Pa_Pa_hiddensurvivorat_s_p7)
        (Pa_Pa_hiddensurvivorat_s_p8)
        (Pa_Pa_hiddensurvivorat_s_p9)
        (Pa_Pa_survivorat_s_p1)
        (Pa_Pa_survivorat_s_p2)
        (Pa_Pa_survivorat_s_p3)
        (Pa_Pa_survivorat_s_p4)
        (Pa_Pa_survivorat_s_p5)
        (Pa_Pa_survivorat_s_p6)
        (Pa_Pa_survivorat_s_p7)
        (Pa_Pa_survivorat_s_p8)
        (Pa_Pa_survivorat_s_p9)
        (Pa_Pb_not_checked_p1)
        (Pa_Pb_not_checked_p2)
        (Pa_Pb_not_checked_p3)
        (Pa_Pb_not_checked_p4)
        (Pa_Pb_not_checked_p5)
        (Pa_Pb_not_checked_p6)
        (Pa_Pb_not_checked_p7)
        (Pa_Pb_not_checked_p8)
        (Pa_Pb_not_checked_p9)
        (Pa_Pb_not_hiddensurvivorat_s_p1)
        (Pa_Pb_not_hiddensurvivorat_s_p2)
        (Pa_Pb_not_hiddensurvivorat_s_p3)
        (Pa_Pb_not_hiddensurvivorat_s_p4)
        (Pa_Pb_not_hiddensurvivorat_s_p5)
        (Pa_Pb_not_hiddensurvivorat_s_p6)
        (Pa_Pb_not_hiddensurvivorat_s_p7)
        (Pa_Pb_not_hiddensurvivorat_s_p8)
        (Pa_Pb_not_hiddensurvivorat_s_p9)
        (Pa_Pb_not_survivorat_s_p1)
        (Pa_Pb_not_survivorat_s_p2)
        (Pa_Pb_not_survivorat_s_p3)
        (Pa_Pb_not_survivorat_s_p4)
        (Pa_Pb_not_survivorat_s_p5)
        (Pa_Pb_not_survivorat_s_p6)
        (Pa_Pb_not_survivorat_s_p7)
        (Pa_Pb_not_survivorat_s_p8)
        (Pa_Pb_not_survivorat_s_p9)
        (Pa_Pb_checked_p1)
        (Pa_Pb_checked_p2)
        (Pa_Pb_checked_p3)
        (Pa_Pb_checked_p4)
        (Pa_Pb_checked_p5)
        (Pa_Pb_checked_p6)
        (Pa_Pb_checked_p7)
        (Pa_Pb_checked_p8)
        (Pa_Pb_checked_p9)
        (Pa_Pb_hiddensurvivorat_s_p1)
        (Pa_Pb_hiddensurvivorat_s_p2)
        (Pa_Pb_hiddensurvivorat_s_p3)
        (Pa_Pb_hiddensurvivorat_s_p4)
        (Pa_Pb_hiddensurvivorat_s_p5)
        (Pa_Pb_hiddensurvivorat_s_p6)
        (Pa_Pb_hiddensurvivorat_s_p7)
        (Pa_Pb_hiddensurvivorat_s_p8)
        (Pa_Pb_hiddensurvivorat_s_p9)
        (Pa_Pb_survivorat_s_p1)
        (Pa_Pb_survivorat_s_p2)
        (Pa_Pb_survivorat_s_p3)
        (Pa_Pb_survivorat_s_p4)
        (Pa_Pb_survivorat_s_p5)
        (Pa_Pb_survivorat_s_p6)
        (Pa_Pb_survivorat_s_p7)
        (Pa_Pb_survivorat_s_p8)
        (Pa_Pb_survivorat_s_p9)
        (Pa_Pc_not_checked_p1)
        (Pa_Pc_not_checked_p2)
        (Pa_Pc_not_checked_p3)
        (Pa_Pc_not_checked_p4)
        (Pa_Pc_not_checked_p5)
        (Pa_Pc_not_checked_p6)
        (Pa_Pc_not_checked_p7)
        (Pa_Pc_not_checked_p8)
        (Pa_Pc_not_checked_p9)
        (Pa_Pc_not_hiddensurvivorat_s_p1)
        (Pa_Pc_not_hiddensurvivorat_s_p2)
        (Pa_Pc_not_hiddensurvivorat_s_p3)
        (Pa_Pc_not_hiddensurvivorat_s_p4)
        (Pa_Pc_not_hiddensurvivorat_s_p5)
        (Pa_Pc_not_hiddensurvivorat_s_p6)
        (Pa_Pc_not_hiddensurvivorat_s_p7)
        (Pa_Pc_not_hiddensurvivorat_s_p8)
        (Pa_Pc_not_hiddensurvivorat_s_p9)
        (Pa_Pc_not_survivorat_s_p1)
        (Pa_Pc_not_survivorat_s_p2)
        (Pa_Pc_not_survivorat_s_p3)
        (Pa_Pc_not_survivorat_s_p4)
        (Pa_Pc_not_survivorat_s_p5)
        (Pa_Pc_not_survivorat_s_p6)
        (Pa_Pc_not_survivorat_s_p7)
        (Pa_Pc_not_survivorat_s_p8)
        (Pa_Pc_not_survivorat_s_p9)
        (Pa_Pc_checked_p1)
        (Pa_Pc_checked_p2)
        (Pa_Pc_checked_p3)
        (Pa_Pc_checked_p4)
        (Pa_Pc_checked_p5)
        (Pa_Pc_checked_p6)
        (Pa_Pc_checked_p7)
        (Pa_Pc_checked_p8)
        (Pa_Pc_checked_p9)
        (Pa_Pc_hiddensurvivorat_s_p1)
        (Pa_Pc_hiddensurvivorat_s_p2)
        (Pa_Pc_hiddensurvivorat_s_p3)
        (Pa_Pc_hiddensurvivorat_s_p4)
        (Pa_Pc_hiddensurvivorat_s_p5)
        (Pa_Pc_hiddensurvivorat_s_p6)
        (Pa_Pc_hiddensurvivorat_s_p7)
        (Pa_Pc_hiddensurvivorat_s_p8)
        (Pa_Pc_hiddensurvivorat_s_p9)
        (Pa_Pc_survivorat_s_p1)
        (Pa_Pc_survivorat_s_p2)
        (Pa_Pc_survivorat_s_p3)
        (Pa_Pc_survivorat_s_p4)
        (Pa_Pc_survivorat_s_p5)
        (Pa_Pc_survivorat_s_p6)
        (Pa_Pc_survivorat_s_p7)
        (Pa_Pc_survivorat_s_p8)
        (Pa_Pc_survivorat_s_p9)
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
        (Pb_Ba_not_checked_p1)
        (Pb_Ba_not_checked_p2)
        (Pb_Ba_not_checked_p3)
        (Pb_Ba_not_checked_p4)
        (Pb_Ba_not_checked_p5)
        (Pb_Ba_not_checked_p6)
        (Pb_Ba_not_checked_p7)
        (Pb_Ba_not_checked_p8)
        (Pb_Ba_not_checked_p9)
        (Pb_Ba_not_hiddensurvivorat_s_p1)
        (Pb_Ba_not_hiddensurvivorat_s_p2)
        (Pb_Ba_not_hiddensurvivorat_s_p3)
        (Pb_Ba_not_hiddensurvivorat_s_p4)
        (Pb_Ba_not_hiddensurvivorat_s_p5)
        (Pb_Ba_not_hiddensurvivorat_s_p6)
        (Pb_Ba_not_hiddensurvivorat_s_p7)
        (Pb_Ba_not_hiddensurvivorat_s_p8)
        (Pb_Ba_not_hiddensurvivorat_s_p9)
        (Pb_Ba_not_survivorat_s_p1)
        (Pb_Ba_not_survivorat_s_p2)
        (Pb_Ba_not_survivorat_s_p3)
        (Pb_Ba_not_survivorat_s_p4)
        (Pb_Ba_not_survivorat_s_p5)
        (Pb_Ba_not_survivorat_s_p6)
        (Pb_Ba_not_survivorat_s_p7)
        (Pb_Ba_not_survivorat_s_p8)
        (Pb_Ba_not_survivorat_s_p9)
        (Pb_Ba_checked_p1)
        (Pb_Ba_checked_p2)
        (Pb_Ba_checked_p3)
        (Pb_Ba_checked_p4)
        (Pb_Ba_checked_p5)
        (Pb_Ba_checked_p6)
        (Pb_Ba_checked_p7)
        (Pb_Ba_checked_p8)
        (Pb_Ba_checked_p9)
        (Pb_Ba_hiddensurvivorat_s_p1)
        (Pb_Ba_hiddensurvivorat_s_p2)
        (Pb_Ba_hiddensurvivorat_s_p3)
        (Pb_Ba_hiddensurvivorat_s_p4)
        (Pb_Ba_hiddensurvivorat_s_p5)
        (Pb_Ba_hiddensurvivorat_s_p6)
        (Pb_Ba_hiddensurvivorat_s_p7)
        (Pb_Ba_hiddensurvivorat_s_p8)
        (Pb_Ba_hiddensurvivorat_s_p9)
        (Pb_Ba_survivorat_s_p1)
        (Pb_Ba_survivorat_s_p2)
        (Pb_Ba_survivorat_s_p3)
        (Pb_Ba_survivorat_s_p4)
        (Pb_Ba_survivorat_s_p5)
        (Pb_Ba_survivorat_s_p6)
        (Pb_Ba_survivorat_s_p7)
        (Pb_Ba_survivorat_s_p8)
        (Pb_Ba_survivorat_s_p9)
        (Pb_Bb_not_checked_p1)
        (Pb_Bb_not_checked_p2)
        (Pb_Bb_not_checked_p3)
        (Pb_Bb_not_checked_p4)
        (Pb_Bb_not_checked_p5)
        (Pb_Bb_not_checked_p6)
        (Pb_Bb_not_checked_p7)
        (Pb_Bb_not_checked_p8)
        (Pb_Bb_not_checked_p9)
        (Pb_Bb_not_hiddensurvivorat_s_p1)
        (Pb_Bb_not_hiddensurvivorat_s_p2)
        (Pb_Bb_not_hiddensurvivorat_s_p3)
        (Pb_Bb_not_hiddensurvivorat_s_p4)
        (Pb_Bb_not_hiddensurvivorat_s_p5)
        (Pb_Bb_not_hiddensurvivorat_s_p6)
        (Pb_Bb_not_hiddensurvivorat_s_p7)
        (Pb_Bb_not_hiddensurvivorat_s_p8)
        (Pb_Bb_not_hiddensurvivorat_s_p9)
        (Pb_Bb_not_survivorat_s_p1)
        (Pb_Bb_not_survivorat_s_p2)
        (Pb_Bb_not_survivorat_s_p3)
        (Pb_Bb_not_survivorat_s_p4)
        (Pb_Bb_not_survivorat_s_p5)
        (Pb_Bb_not_survivorat_s_p6)
        (Pb_Bb_not_survivorat_s_p7)
        (Pb_Bb_not_survivorat_s_p8)
        (Pb_Bb_not_survivorat_s_p9)
        (Pb_Bb_checked_p1)
        (Pb_Bb_checked_p2)
        (Pb_Bb_checked_p3)
        (Pb_Bb_checked_p4)
        (Pb_Bb_checked_p5)
        (Pb_Bb_checked_p6)
        (Pb_Bb_checked_p7)
        (Pb_Bb_checked_p8)
        (Pb_Bb_checked_p9)
        (Pb_Bb_hiddensurvivorat_s_p1)
        (Pb_Bb_hiddensurvivorat_s_p2)
        (Pb_Bb_hiddensurvivorat_s_p3)
        (Pb_Bb_hiddensurvivorat_s_p4)
        (Pb_Bb_hiddensurvivorat_s_p5)
        (Pb_Bb_hiddensurvivorat_s_p6)
        (Pb_Bb_hiddensurvivorat_s_p7)
        (Pb_Bb_hiddensurvivorat_s_p8)
        (Pb_Bb_hiddensurvivorat_s_p9)
        (Pb_Bb_survivorat_s_p1)
        (Pb_Bb_survivorat_s_p2)
        (Pb_Bb_survivorat_s_p3)
        (Pb_Bb_survivorat_s_p4)
        (Pb_Bb_survivorat_s_p5)
        (Pb_Bb_survivorat_s_p6)
        (Pb_Bb_survivorat_s_p7)
        (Pb_Bb_survivorat_s_p8)
        (Pb_Bb_survivorat_s_p9)
        (Pb_Bc_not_checked_p1)
        (Pb_Bc_not_checked_p2)
        (Pb_Bc_not_checked_p3)
        (Pb_Bc_not_checked_p4)
        (Pb_Bc_not_checked_p5)
        (Pb_Bc_not_checked_p6)
        (Pb_Bc_not_checked_p7)
        (Pb_Bc_not_checked_p8)
        (Pb_Bc_not_checked_p9)
        (Pb_Bc_not_hiddensurvivorat_s_p1)
        (Pb_Bc_not_hiddensurvivorat_s_p2)
        (Pb_Bc_not_hiddensurvivorat_s_p3)
        (Pb_Bc_not_hiddensurvivorat_s_p4)
        (Pb_Bc_not_hiddensurvivorat_s_p5)
        (Pb_Bc_not_hiddensurvivorat_s_p6)
        (Pb_Bc_not_hiddensurvivorat_s_p7)
        (Pb_Bc_not_hiddensurvivorat_s_p8)
        (Pb_Bc_not_hiddensurvivorat_s_p9)
        (Pb_Bc_not_survivorat_s_p1)
        (Pb_Bc_not_survivorat_s_p2)
        (Pb_Bc_not_survivorat_s_p3)
        (Pb_Bc_not_survivorat_s_p4)
        (Pb_Bc_not_survivorat_s_p5)
        (Pb_Bc_not_survivorat_s_p6)
        (Pb_Bc_not_survivorat_s_p7)
        (Pb_Bc_not_survivorat_s_p8)
        (Pb_Bc_not_survivorat_s_p9)
        (Pb_Bc_checked_p1)
        (Pb_Bc_checked_p2)
        (Pb_Bc_checked_p3)
        (Pb_Bc_checked_p4)
        (Pb_Bc_checked_p5)
        (Pb_Bc_checked_p6)
        (Pb_Bc_checked_p7)
        (Pb_Bc_checked_p8)
        (Pb_Bc_checked_p9)
        (Pb_Bc_hiddensurvivorat_s_p1)
        (Pb_Bc_hiddensurvivorat_s_p2)
        (Pb_Bc_hiddensurvivorat_s_p3)
        (Pb_Bc_hiddensurvivorat_s_p4)
        (Pb_Bc_hiddensurvivorat_s_p5)
        (Pb_Bc_hiddensurvivorat_s_p6)
        (Pb_Bc_hiddensurvivorat_s_p7)
        (Pb_Bc_hiddensurvivorat_s_p8)
        (Pb_Bc_hiddensurvivorat_s_p9)
        (Pb_Bc_survivorat_s_p1)
        (Pb_Bc_survivorat_s_p2)
        (Pb_Bc_survivorat_s_p3)
        (Pb_Bc_survivorat_s_p4)
        (Pb_Bc_survivorat_s_p5)
        (Pb_Bc_survivorat_s_p6)
        (Pb_Bc_survivorat_s_p7)
        (Pb_Bc_survivorat_s_p8)
        (Pb_Bc_survivorat_s_p9)
        (Pb_Pa_not_checked_p1)
        (Pb_Pa_not_checked_p2)
        (Pb_Pa_not_checked_p3)
        (Pb_Pa_not_checked_p4)
        (Pb_Pa_not_checked_p5)
        (Pb_Pa_not_checked_p6)
        (Pb_Pa_not_checked_p7)
        (Pb_Pa_not_checked_p8)
        (Pb_Pa_not_checked_p9)
        (Pb_Pa_not_hiddensurvivorat_s_p1)
        (Pb_Pa_not_hiddensurvivorat_s_p2)
        (Pb_Pa_not_hiddensurvivorat_s_p3)
        (Pb_Pa_not_hiddensurvivorat_s_p4)
        (Pb_Pa_not_hiddensurvivorat_s_p5)
        (Pb_Pa_not_hiddensurvivorat_s_p6)
        (Pb_Pa_not_hiddensurvivorat_s_p7)
        (Pb_Pa_not_hiddensurvivorat_s_p8)
        (Pb_Pa_not_hiddensurvivorat_s_p9)
        (Pb_Pa_not_survivorat_s_p1)
        (Pb_Pa_not_survivorat_s_p2)
        (Pb_Pa_not_survivorat_s_p3)
        (Pb_Pa_not_survivorat_s_p4)
        (Pb_Pa_not_survivorat_s_p5)
        (Pb_Pa_not_survivorat_s_p6)
        (Pb_Pa_not_survivorat_s_p7)
        (Pb_Pa_not_survivorat_s_p8)
        (Pb_Pa_not_survivorat_s_p9)
        (Pb_Pa_checked_p1)
        (Pb_Pa_checked_p2)
        (Pb_Pa_checked_p3)
        (Pb_Pa_checked_p4)
        (Pb_Pa_checked_p5)
        (Pb_Pa_checked_p6)
        (Pb_Pa_checked_p7)
        (Pb_Pa_checked_p8)
        (Pb_Pa_checked_p9)
        (Pb_Pa_hiddensurvivorat_s_p1)
        (Pb_Pa_hiddensurvivorat_s_p2)
        (Pb_Pa_hiddensurvivorat_s_p3)
        (Pb_Pa_hiddensurvivorat_s_p4)
        (Pb_Pa_hiddensurvivorat_s_p5)
        (Pb_Pa_hiddensurvivorat_s_p6)
        (Pb_Pa_hiddensurvivorat_s_p7)
        (Pb_Pa_hiddensurvivorat_s_p8)
        (Pb_Pa_hiddensurvivorat_s_p9)
        (Pb_Pa_survivorat_s_p1)
        (Pb_Pa_survivorat_s_p2)
        (Pb_Pa_survivorat_s_p3)
        (Pb_Pa_survivorat_s_p4)
        (Pb_Pa_survivorat_s_p5)
        (Pb_Pa_survivorat_s_p6)
        (Pb_Pa_survivorat_s_p7)
        (Pb_Pa_survivorat_s_p8)
        (Pb_Pa_survivorat_s_p9)
        (Pb_Pb_not_checked_p1)
        (Pb_Pb_not_checked_p2)
        (Pb_Pb_not_checked_p3)
        (Pb_Pb_not_checked_p4)
        (Pb_Pb_not_checked_p5)
        (Pb_Pb_not_checked_p6)
        (Pb_Pb_not_checked_p7)
        (Pb_Pb_not_checked_p8)
        (Pb_Pb_not_checked_p9)
        (Pb_Pb_not_hiddensurvivorat_s_p1)
        (Pb_Pb_not_hiddensurvivorat_s_p2)
        (Pb_Pb_not_hiddensurvivorat_s_p3)
        (Pb_Pb_not_hiddensurvivorat_s_p4)
        (Pb_Pb_not_hiddensurvivorat_s_p5)
        (Pb_Pb_not_hiddensurvivorat_s_p6)
        (Pb_Pb_not_hiddensurvivorat_s_p7)
        (Pb_Pb_not_hiddensurvivorat_s_p8)
        (Pb_Pb_not_hiddensurvivorat_s_p9)
        (Pb_Pb_not_survivorat_s_p1)
        (Pb_Pb_not_survivorat_s_p2)
        (Pb_Pb_not_survivorat_s_p3)
        (Pb_Pb_not_survivorat_s_p4)
        (Pb_Pb_not_survivorat_s_p5)
        (Pb_Pb_not_survivorat_s_p6)
        (Pb_Pb_not_survivorat_s_p7)
        (Pb_Pb_not_survivorat_s_p8)
        (Pb_Pb_not_survivorat_s_p9)
        (Pb_Pb_checked_p1)
        (Pb_Pb_checked_p2)
        (Pb_Pb_checked_p3)
        (Pb_Pb_checked_p4)
        (Pb_Pb_checked_p5)
        (Pb_Pb_checked_p6)
        (Pb_Pb_checked_p7)
        (Pb_Pb_checked_p8)
        (Pb_Pb_checked_p9)
        (Pb_Pb_hiddensurvivorat_s_p1)
        (Pb_Pb_hiddensurvivorat_s_p2)
        (Pb_Pb_hiddensurvivorat_s_p3)
        (Pb_Pb_hiddensurvivorat_s_p4)
        (Pb_Pb_hiddensurvivorat_s_p5)
        (Pb_Pb_hiddensurvivorat_s_p6)
        (Pb_Pb_hiddensurvivorat_s_p7)
        (Pb_Pb_hiddensurvivorat_s_p8)
        (Pb_Pb_hiddensurvivorat_s_p9)
        (Pb_Pb_survivorat_s_p1)
        (Pb_Pb_survivorat_s_p2)
        (Pb_Pb_survivorat_s_p3)
        (Pb_Pb_survivorat_s_p4)
        (Pb_Pb_survivorat_s_p5)
        (Pb_Pb_survivorat_s_p6)
        (Pb_Pb_survivorat_s_p7)
        (Pb_Pb_survivorat_s_p8)
        (Pb_Pb_survivorat_s_p9)
        (Pb_Pc_not_checked_p1)
        (Pb_Pc_not_checked_p2)
        (Pb_Pc_not_checked_p3)
        (Pb_Pc_not_checked_p4)
        (Pb_Pc_not_checked_p5)
        (Pb_Pc_not_checked_p6)
        (Pb_Pc_not_checked_p7)
        (Pb_Pc_not_checked_p8)
        (Pb_Pc_not_checked_p9)
        (Pb_Pc_not_hiddensurvivorat_s_p1)
        (Pb_Pc_not_hiddensurvivorat_s_p2)
        (Pb_Pc_not_hiddensurvivorat_s_p3)
        (Pb_Pc_not_hiddensurvivorat_s_p4)
        (Pb_Pc_not_hiddensurvivorat_s_p5)
        (Pb_Pc_not_hiddensurvivorat_s_p6)
        (Pb_Pc_not_hiddensurvivorat_s_p7)
        (Pb_Pc_not_hiddensurvivorat_s_p8)
        (Pb_Pc_not_hiddensurvivorat_s_p9)
        (Pb_Pc_not_survivorat_s_p1)
        (Pb_Pc_not_survivorat_s_p2)
        (Pb_Pc_not_survivorat_s_p3)
        (Pb_Pc_not_survivorat_s_p4)
        (Pb_Pc_not_survivorat_s_p5)
        (Pb_Pc_not_survivorat_s_p6)
        (Pb_Pc_not_survivorat_s_p7)
        (Pb_Pc_not_survivorat_s_p8)
        (Pb_Pc_not_survivorat_s_p9)
        (Pb_Pc_checked_p1)
        (Pb_Pc_checked_p2)
        (Pb_Pc_checked_p3)
        (Pb_Pc_checked_p4)
        (Pb_Pc_checked_p5)
        (Pb_Pc_checked_p6)
        (Pb_Pc_checked_p7)
        (Pb_Pc_checked_p8)
        (Pb_Pc_checked_p9)
        (Pb_Pc_hiddensurvivorat_s_p1)
        (Pb_Pc_hiddensurvivorat_s_p2)
        (Pb_Pc_hiddensurvivorat_s_p3)
        (Pb_Pc_hiddensurvivorat_s_p4)
        (Pb_Pc_hiddensurvivorat_s_p5)
        (Pb_Pc_hiddensurvivorat_s_p6)
        (Pb_Pc_hiddensurvivorat_s_p7)
        (Pb_Pc_hiddensurvivorat_s_p8)
        (Pb_Pc_hiddensurvivorat_s_p9)
        (Pb_Pc_survivorat_s_p1)
        (Pb_Pc_survivorat_s_p2)
        (Pb_Pc_survivorat_s_p3)
        (Pb_Pc_survivorat_s_p4)
        (Pb_Pc_survivorat_s_p5)
        (Pb_Pc_survivorat_s_p6)
        (Pb_Pc_survivorat_s_p7)
        (Pb_Pc_survivorat_s_p8)
        (Pb_Pc_survivorat_s_p9)
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
        (Pc_Ba_not_checked_p1)
        (Pc_Ba_not_checked_p2)
        (Pc_Ba_not_checked_p3)
        (Pc_Ba_not_checked_p4)
        (Pc_Ba_not_checked_p5)
        (Pc_Ba_not_checked_p6)
        (Pc_Ba_not_checked_p7)
        (Pc_Ba_not_checked_p8)
        (Pc_Ba_not_checked_p9)
        (Pc_Ba_not_hiddensurvivorat_s_p1)
        (Pc_Ba_not_hiddensurvivorat_s_p2)
        (Pc_Ba_not_hiddensurvivorat_s_p3)
        (Pc_Ba_not_hiddensurvivorat_s_p4)
        (Pc_Ba_not_hiddensurvivorat_s_p5)
        (Pc_Ba_not_hiddensurvivorat_s_p6)
        (Pc_Ba_not_hiddensurvivorat_s_p7)
        (Pc_Ba_not_hiddensurvivorat_s_p8)
        (Pc_Ba_not_hiddensurvivorat_s_p9)
        (Pc_Ba_not_survivorat_s_p1)
        (Pc_Ba_not_survivorat_s_p2)
        (Pc_Ba_not_survivorat_s_p3)
        (Pc_Ba_not_survivorat_s_p4)
        (Pc_Ba_not_survivorat_s_p5)
        (Pc_Ba_not_survivorat_s_p6)
        (Pc_Ba_not_survivorat_s_p7)
        (Pc_Ba_not_survivorat_s_p8)
        (Pc_Ba_not_survivorat_s_p9)
        (Pc_Ba_checked_p1)
        (Pc_Ba_checked_p2)
        (Pc_Ba_checked_p3)
        (Pc_Ba_checked_p4)
        (Pc_Ba_checked_p5)
        (Pc_Ba_checked_p6)
        (Pc_Ba_checked_p7)
        (Pc_Ba_checked_p8)
        (Pc_Ba_checked_p9)
        (Pc_Ba_hiddensurvivorat_s_p1)
        (Pc_Ba_hiddensurvivorat_s_p2)
        (Pc_Ba_hiddensurvivorat_s_p3)
        (Pc_Ba_hiddensurvivorat_s_p4)
        (Pc_Ba_hiddensurvivorat_s_p5)
        (Pc_Ba_hiddensurvivorat_s_p6)
        (Pc_Ba_hiddensurvivorat_s_p7)
        (Pc_Ba_hiddensurvivorat_s_p8)
        (Pc_Ba_hiddensurvivorat_s_p9)
        (Pc_Ba_survivorat_s_p1)
        (Pc_Ba_survivorat_s_p2)
        (Pc_Ba_survivorat_s_p3)
        (Pc_Ba_survivorat_s_p4)
        (Pc_Ba_survivorat_s_p5)
        (Pc_Ba_survivorat_s_p6)
        (Pc_Ba_survivorat_s_p7)
        (Pc_Ba_survivorat_s_p8)
        (Pc_Ba_survivorat_s_p9)
        (Pc_Bb_not_checked_p1)
        (Pc_Bb_not_checked_p2)
        (Pc_Bb_not_checked_p3)
        (Pc_Bb_not_checked_p4)
        (Pc_Bb_not_checked_p5)
        (Pc_Bb_not_checked_p6)
        (Pc_Bb_not_checked_p7)
        (Pc_Bb_not_checked_p8)
        (Pc_Bb_not_checked_p9)
        (Pc_Bb_not_hiddensurvivorat_s_p1)
        (Pc_Bb_not_hiddensurvivorat_s_p2)
        (Pc_Bb_not_hiddensurvivorat_s_p3)
        (Pc_Bb_not_hiddensurvivorat_s_p4)
        (Pc_Bb_not_hiddensurvivorat_s_p5)
        (Pc_Bb_not_hiddensurvivorat_s_p6)
        (Pc_Bb_not_hiddensurvivorat_s_p7)
        (Pc_Bb_not_hiddensurvivorat_s_p8)
        (Pc_Bb_not_hiddensurvivorat_s_p9)
        (Pc_Bb_not_survivorat_s_p1)
        (Pc_Bb_not_survivorat_s_p2)
        (Pc_Bb_not_survivorat_s_p3)
        (Pc_Bb_not_survivorat_s_p4)
        (Pc_Bb_not_survivorat_s_p5)
        (Pc_Bb_not_survivorat_s_p6)
        (Pc_Bb_not_survivorat_s_p7)
        (Pc_Bb_not_survivorat_s_p8)
        (Pc_Bb_not_survivorat_s_p9)
        (Pc_Bb_checked_p1)
        (Pc_Bb_checked_p2)
        (Pc_Bb_checked_p3)
        (Pc_Bb_checked_p4)
        (Pc_Bb_checked_p5)
        (Pc_Bb_checked_p6)
        (Pc_Bb_checked_p7)
        (Pc_Bb_checked_p8)
        (Pc_Bb_checked_p9)
        (Pc_Bb_hiddensurvivorat_s_p1)
        (Pc_Bb_hiddensurvivorat_s_p2)
        (Pc_Bb_hiddensurvivorat_s_p3)
        (Pc_Bb_hiddensurvivorat_s_p4)
        (Pc_Bb_hiddensurvivorat_s_p5)
        (Pc_Bb_hiddensurvivorat_s_p6)
        (Pc_Bb_hiddensurvivorat_s_p7)
        (Pc_Bb_hiddensurvivorat_s_p8)
        (Pc_Bb_hiddensurvivorat_s_p9)
        (Pc_Bb_survivorat_s_p1)
        (Pc_Bb_survivorat_s_p2)
        (Pc_Bb_survivorat_s_p3)
        (Pc_Bb_survivorat_s_p4)
        (Pc_Bb_survivorat_s_p5)
        (Pc_Bb_survivorat_s_p6)
        (Pc_Bb_survivorat_s_p7)
        (Pc_Bb_survivorat_s_p8)
        (Pc_Bb_survivorat_s_p9)
        (Pc_Bc_not_checked_p1)
        (Pc_Bc_not_checked_p2)
        (Pc_Bc_not_checked_p3)
        (Pc_Bc_not_checked_p4)
        (Pc_Bc_not_checked_p5)
        (Pc_Bc_not_checked_p6)
        (Pc_Bc_not_checked_p7)
        (Pc_Bc_not_checked_p8)
        (Pc_Bc_not_checked_p9)
        (Pc_Bc_not_hiddensurvivorat_s_p1)
        (Pc_Bc_not_hiddensurvivorat_s_p2)
        (Pc_Bc_not_hiddensurvivorat_s_p3)
        (Pc_Bc_not_hiddensurvivorat_s_p4)
        (Pc_Bc_not_hiddensurvivorat_s_p5)
        (Pc_Bc_not_hiddensurvivorat_s_p6)
        (Pc_Bc_not_hiddensurvivorat_s_p7)
        (Pc_Bc_not_hiddensurvivorat_s_p8)
        (Pc_Bc_not_hiddensurvivorat_s_p9)
        (Pc_Bc_not_survivorat_s_p1)
        (Pc_Bc_not_survivorat_s_p2)
        (Pc_Bc_not_survivorat_s_p3)
        (Pc_Bc_not_survivorat_s_p4)
        (Pc_Bc_not_survivorat_s_p5)
        (Pc_Bc_not_survivorat_s_p6)
        (Pc_Bc_not_survivorat_s_p7)
        (Pc_Bc_not_survivorat_s_p8)
        (Pc_Bc_not_survivorat_s_p9)
        (Pc_Bc_checked_p1)
        (Pc_Bc_checked_p2)
        (Pc_Bc_checked_p3)
        (Pc_Bc_checked_p4)
        (Pc_Bc_checked_p5)
        (Pc_Bc_checked_p6)
        (Pc_Bc_checked_p7)
        (Pc_Bc_checked_p8)
        (Pc_Bc_checked_p9)
        (Pc_Bc_hiddensurvivorat_s_p1)
        (Pc_Bc_hiddensurvivorat_s_p2)
        (Pc_Bc_hiddensurvivorat_s_p3)
        (Pc_Bc_hiddensurvivorat_s_p4)
        (Pc_Bc_hiddensurvivorat_s_p5)
        (Pc_Bc_hiddensurvivorat_s_p6)
        (Pc_Bc_hiddensurvivorat_s_p7)
        (Pc_Bc_hiddensurvivorat_s_p8)
        (Pc_Bc_hiddensurvivorat_s_p9)
        (Pc_Bc_survivorat_s_p1)
        (Pc_Bc_survivorat_s_p2)
        (Pc_Bc_survivorat_s_p3)
        (Pc_Bc_survivorat_s_p4)
        (Pc_Bc_survivorat_s_p5)
        (Pc_Bc_survivorat_s_p6)
        (Pc_Bc_survivorat_s_p7)
        (Pc_Bc_survivorat_s_p8)
        (Pc_Bc_survivorat_s_p9)
        (Pc_Pa_not_checked_p1)
        (Pc_Pa_not_checked_p2)
        (Pc_Pa_not_checked_p3)
        (Pc_Pa_not_checked_p4)
        (Pc_Pa_not_checked_p5)
        (Pc_Pa_not_checked_p6)
        (Pc_Pa_not_checked_p7)
        (Pc_Pa_not_checked_p8)
        (Pc_Pa_not_checked_p9)
        (Pc_Pa_not_hiddensurvivorat_s_p1)
        (Pc_Pa_not_hiddensurvivorat_s_p2)
        (Pc_Pa_not_hiddensurvivorat_s_p3)
        (Pc_Pa_not_hiddensurvivorat_s_p4)
        (Pc_Pa_not_hiddensurvivorat_s_p5)
        (Pc_Pa_not_hiddensurvivorat_s_p6)
        (Pc_Pa_not_hiddensurvivorat_s_p7)
        (Pc_Pa_not_hiddensurvivorat_s_p8)
        (Pc_Pa_not_hiddensurvivorat_s_p9)
        (Pc_Pa_not_survivorat_s_p1)
        (Pc_Pa_not_survivorat_s_p2)
        (Pc_Pa_not_survivorat_s_p3)
        (Pc_Pa_not_survivorat_s_p4)
        (Pc_Pa_not_survivorat_s_p5)
        (Pc_Pa_not_survivorat_s_p6)
        (Pc_Pa_not_survivorat_s_p7)
        (Pc_Pa_not_survivorat_s_p8)
        (Pc_Pa_not_survivorat_s_p9)
        (Pc_Pa_checked_p1)
        (Pc_Pa_checked_p2)
        (Pc_Pa_checked_p3)
        (Pc_Pa_checked_p4)
        (Pc_Pa_checked_p5)
        (Pc_Pa_checked_p6)
        (Pc_Pa_checked_p7)
        (Pc_Pa_checked_p8)
        (Pc_Pa_checked_p9)
        (Pc_Pa_hiddensurvivorat_s_p1)
        (Pc_Pa_hiddensurvivorat_s_p2)
        (Pc_Pa_hiddensurvivorat_s_p3)
        (Pc_Pa_hiddensurvivorat_s_p4)
        (Pc_Pa_hiddensurvivorat_s_p5)
        (Pc_Pa_hiddensurvivorat_s_p6)
        (Pc_Pa_hiddensurvivorat_s_p7)
        (Pc_Pa_hiddensurvivorat_s_p8)
        (Pc_Pa_hiddensurvivorat_s_p9)
        (Pc_Pa_survivorat_s_p1)
        (Pc_Pa_survivorat_s_p2)
        (Pc_Pa_survivorat_s_p3)
        (Pc_Pa_survivorat_s_p4)
        (Pc_Pa_survivorat_s_p5)
        (Pc_Pa_survivorat_s_p6)
        (Pc_Pa_survivorat_s_p7)
        (Pc_Pa_survivorat_s_p8)
        (Pc_Pa_survivorat_s_p9)
        (Pc_Pb_not_checked_p1)
        (Pc_Pb_not_checked_p2)
        (Pc_Pb_not_checked_p3)
        (Pc_Pb_not_checked_p4)
        (Pc_Pb_not_checked_p5)
        (Pc_Pb_not_checked_p6)
        (Pc_Pb_not_checked_p7)
        (Pc_Pb_not_checked_p8)
        (Pc_Pb_not_checked_p9)
        (Pc_Pb_not_hiddensurvivorat_s_p1)
        (Pc_Pb_not_hiddensurvivorat_s_p2)
        (Pc_Pb_not_hiddensurvivorat_s_p3)
        (Pc_Pb_not_hiddensurvivorat_s_p4)
        (Pc_Pb_not_hiddensurvivorat_s_p5)
        (Pc_Pb_not_hiddensurvivorat_s_p6)
        (Pc_Pb_not_hiddensurvivorat_s_p7)
        (Pc_Pb_not_hiddensurvivorat_s_p8)
        (Pc_Pb_not_hiddensurvivorat_s_p9)
        (Pc_Pb_not_survivorat_s_p1)
        (Pc_Pb_not_survivorat_s_p2)
        (Pc_Pb_not_survivorat_s_p3)
        (Pc_Pb_not_survivorat_s_p4)
        (Pc_Pb_not_survivorat_s_p5)
        (Pc_Pb_not_survivorat_s_p6)
        (Pc_Pb_not_survivorat_s_p7)
        (Pc_Pb_not_survivorat_s_p8)
        (Pc_Pb_not_survivorat_s_p9)
        (Pc_Pb_checked_p1)
        (Pc_Pb_checked_p2)
        (Pc_Pb_checked_p3)
        (Pc_Pb_checked_p4)
        (Pc_Pb_checked_p5)
        (Pc_Pb_checked_p6)
        (Pc_Pb_checked_p7)
        (Pc_Pb_checked_p8)
        (Pc_Pb_checked_p9)
        (Pc_Pb_hiddensurvivorat_s_p1)
        (Pc_Pb_hiddensurvivorat_s_p2)
        (Pc_Pb_hiddensurvivorat_s_p3)
        (Pc_Pb_hiddensurvivorat_s_p4)
        (Pc_Pb_hiddensurvivorat_s_p5)
        (Pc_Pb_hiddensurvivorat_s_p6)
        (Pc_Pb_hiddensurvivorat_s_p7)
        (Pc_Pb_hiddensurvivorat_s_p8)
        (Pc_Pb_hiddensurvivorat_s_p9)
        (Pc_Pb_survivorat_s_p1)
        (Pc_Pb_survivorat_s_p2)
        (Pc_Pb_survivorat_s_p3)
        (Pc_Pb_survivorat_s_p4)
        (Pc_Pb_survivorat_s_p5)
        (Pc_Pb_survivorat_s_p6)
        (Pc_Pb_survivorat_s_p7)
        (Pc_Pb_survivorat_s_p8)
        (Pc_Pb_survivorat_s_p9)
        (Pc_Pc_not_checked_p1)
        (Pc_Pc_not_checked_p2)
        (Pc_Pc_not_checked_p3)
        (Pc_Pc_not_checked_p4)
        (Pc_Pc_not_checked_p5)
        (Pc_Pc_not_checked_p6)
        (Pc_Pc_not_checked_p7)
        (Pc_Pc_not_checked_p8)
        (Pc_Pc_not_checked_p9)
        (Pc_Pc_not_hiddensurvivorat_s_p1)
        (Pc_Pc_not_hiddensurvivorat_s_p2)
        (Pc_Pc_not_hiddensurvivorat_s_p3)
        (Pc_Pc_not_hiddensurvivorat_s_p4)
        (Pc_Pc_not_hiddensurvivorat_s_p5)
        (Pc_Pc_not_hiddensurvivorat_s_p6)
        (Pc_Pc_not_hiddensurvivorat_s_p7)
        (Pc_Pc_not_hiddensurvivorat_s_p8)
        (Pc_Pc_not_hiddensurvivorat_s_p9)
        (Pc_Pc_not_survivorat_s_p1)
        (Pc_Pc_not_survivorat_s_p2)
        (Pc_Pc_not_survivorat_s_p3)
        (Pc_Pc_not_survivorat_s_p4)
        (Pc_Pc_not_survivorat_s_p5)
        (Pc_Pc_not_survivorat_s_p6)
        (Pc_Pc_not_survivorat_s_p7)
        (Pc_Pc_not_survivorat_s_p8)
        (Pc_Pc_not_survivorat_s_p9)
        (Pc_Pc_checked_p1)
        (Pc_Pc_checked_p2)
        (Pc_Pc_checked_p3)
        (Pc_Pc_checked_p4)
        (Pc_Pc_checked_p5)
        (Pc_Pc_checked_p6)
        (Pc_Pc_checked_p7)
        (Pc_Pc_checked_p8)
        (Pc_Pc_checked_p9)
        (Pc_Pc_hiddensurvivorat_s_p1)
        (Pc_Pc_hiddensurvivorat_s_p2)
        (Pc_Pc_hiddensurvivorat_s_p3)
        (Pc_Pc_hiddensurvivorat_s_p4)
        (Pc_Pc_hiddensurvivorat_s_p5)
        (Pc_Pc_hiddensurvivorat_s_p6)
        (Pc_Pc_hiddensurvivorat_s_p7)
        (Pc_Pc_hiddensurvivorat_s_p8)
        (Pc_Pc_hiddensurvivorat_s_p9)
        (Pc_Pc_survivorat_s_p1)
        (Pc_Pc_survivorat_s_p2)
        (Pc_Pc_survivorat_s_p3)
        (Pc_Pc_survivorat_s_p4)
        (Pc_Pc_survivorat_s_p5)
        (Pc_Pc_survivorat_s_p6)
        (Pc_Pc_survivorat_s_p7)
        (Pc_Pc_survivorat_s_p8)
        (Pc_Pc_survivorat_s_p9)
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
        (at_a_p1)
        (at_b_p4)
        (at_c_p9)
        (hiddensurvivorat_s_p4)
        (hiddensurvivorat_s_p5)
        (hiddensurvivorat_s_p8)
        (leader_a)
        (succ_p1_p2)
        (succ_p1_p4)
        (succ_p2_p1)
        (succ_p2_p3)
        (succ_p2_p5)
        (succ_p3_p2)
        (succ_p3_p6)
        (succ_p4_p1)
        (succ_p4_p5)
        (succ_p4_p7)
        (succ_p5_p2)
        (succ_p5_p4)
        (succ_p5_p6)
        (succ_p5_p8)
        (succ_p6_p3)
        (succ_p6_p5)
        (succ_p6_p9)
        (succ_p7_p4)
        (succ_p7_p8)
        (succ_p8_p5)
        (succ_p8_p7)
        (succ_p8_p9)
        (succ_p9_p6)
        (succ_p9_p8)
    )

    (:goal (and
        (Ba_survivorat_s_p4)
        (Ba_survivorat_s_p5)
        (Ba_survivorat_s_p8)
        (Pa_survivorat_s_p4)
        (Pa_survivorat_s_p5)
        (Pa_survivorat_s_p8)
        (checked_p1)
        (checked_p2)
        (checked_p3)
        (checked_p4)
        (checked_p5)
        (checked_p6)
        (checked_p7)
        (checked_p8)
        (checked_p9)
    ))
)