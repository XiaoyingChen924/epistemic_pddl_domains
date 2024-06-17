(define 
        (problem bbl1_t_00000) 
        (:domain bbl)

        (:agents
            a b - turnable
        )

        (:objects 
            p - askable
        )

        (:init
            (assign (dir a) 'sw')
            (assign (dir b) 'n')
            (assign (x a) 3)
            (assign (x b) 2)
            (assign (x p) 1)
            (assign (y a) 3)
            (assign (y b) 2)
            (assign (y p) 1)
            (assign (v p) 't')
        )

        ; the @ represent this is an epistemic evaluation
        ; 
        (:goal 
            (and 
                (= (@ep ("+ b [b] + b [a] ") (= (v p) 't')) ep.true)
                ; (= (@ep ("+ b [b]") (= (v p) 't')) ep.true)
            )
        )

        ; D, domain of variables, in order to differentiate from the domain, we use range as key word
        (:ranges
            (dir enumerate ['w','nw','n','ne','e','se','s','sw'])
            (x integer [0,4])
            (y integer [0,4])
            (v enumerate ['t','f'])
        )

        (:rules
            (static (dir a) [])
            (static (dir b) [])
            (static (dir p) [])
            (static (x a) [])
            (static (x b) [])
            (static (x p) [])
            (static (y a) [])
            (static (y b) [])
            (static (y p) [])
            (static (v p) [])
        )
    )