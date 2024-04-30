(define 
    (domain sc)

    (:action move
        :parameters (?i - agent, ?r1 - object, ?r2 - object)
        :precondition (and 
            (:ontic (= (room ?i) (room ?r1)))
            (:ontic (= (connected ?r1 ?r2) 1))
            (:ontic (-= (searched ?r2) 1)) ;  -1 is false, 0 is unknown

        )
        :effect (and 
            (= (searched ?r2) 1)
            (= (room ?i) (room ?r2))
            (= (searched ?r1) 2)
        )
    )

)

    