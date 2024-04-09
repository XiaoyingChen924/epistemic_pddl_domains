;Header and description

(define 
    (domain sc)

    (:action move
        :parameters (?i - agent, ?r1 - object, ?r2 - object)
        :precondition (and 
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

    (:action communicate_to_commander
        :parameters (?i - agent, ?s - object, ?r - object)
        :precondition (and 
            (:ontic (= (can_communiacte ?i) 1))
            (:ontic (= (room ?s) (room ?i)))
            (:ontic (= (room ?i) (room_num ?r)))
            (:ontic (= (room ?s) (room_num ?r)))
            ; (= (:ontic (= (shared ?s) 'f')) 1)
            ; (= (:ontic (= (searched ?r) 1)) 1)
        )
        :effect (and 
            (= (shared ?s) 't')
            ; every agent knows the location of the survivor
        )
    )

)