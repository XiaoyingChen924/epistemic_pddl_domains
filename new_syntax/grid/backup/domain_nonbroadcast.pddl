;Header and description

(define 
    (domain selective_communication)

    (:action move
        :parameters (?i - agent, ?r1 - object, ?r2 - object)
        :precondition (and 
            ; commander does not move
            (:ontic (= (commander ?i) 0))
            (:ontic (= (room ?i) (room_num ?r1)))
            (:ontic (= (connected ?r1 ?r2) 1))
            (:ontic (-= (searched ?r2) 1)) ;  -1 is false, 0 is unknown
        )
        :effect (and 
            (= (searched ?r2) 1)
            (= (room ?i) (room_num ?r2))
            (= (searched ?r1) 2)
        )
    )

    (:action communicate
        :parameters (?i - agent, ?s - object, ?r - object)
        :precondition (and 
            ; only specified agents can receive (commander)
            ; this is shown in the python runner 
            ; only specified agents can communicate to commander
            (:ontic (= (can_communicate ?i) 1))
            (:ontic (= (room ?s) (room ?i)))
            (:ontic (= (room ?i) (room_num ?r)))
            (:ontic (= (room ?s) (room_num ?r)))
        )
        :effect (and 
            (= (shared ?s) 't')
        )
    )

)