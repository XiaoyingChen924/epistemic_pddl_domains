;Header and description

(define 
    (domain bw4t)

    (:action move
        :parameters (?i - agent, ?r1 - object, ?r2 - object)
        :precondition (and 
            ; (= (:ontic (= (commander ?i) 0)) 1)
            (:ontic (= (location ?i) (location_id ?r1)))
            (:ontic (= (connected ?r1 ?r2) 1))
            (:ontic (= (handempty ?i) 1))
            ;  -1 is false, 0 is unknown
        )
        :effect (and 
            (= (searched ?r2) 1)
            (= (location ?i) (location_id ?r2))
            ; (= (searched ?r1) 1)
        )
    )

    (:action pickup
        :parameters (?i - agent, ?b - object, ?r - object)
        :precondition (and 
            (:ontic (= (location ?i) (location_id ?r)))
            (:ontic (= (location ?b) (location_id ?r)))
            (:ontic (= (handempty ?i) 1))
        )
        :effect (and 
            (= (holding ?i ?b) 1)
            (= (handempty ?i) 0)
        )
    )

    ; (:action putdown
    ;     :parameters (?i - agent, ?b - object, ?r1 - object, ?r2 - object)
    ;     :precondition (and 
    ;         (:ontic (= (location ?i) (location_id ?r1)))
    ;         (:ontic (= (location ?b) (location_id ?r1)))
    ;         (:ontic (= (connected ?r1 ?r2) 1))
    ;         (:ontic (= (holding ?i ?b) 1))
    ;     )
    ;     :effect (and 
    ;         (= (location ?i) (location_id ?r2))
    ;         (= (location ?b) (location_id ?r2))
    ;         (= (holding ?i ?b) 0)
    ;         (= (handempty ?i) 1)
    ;     )
    ; )

   (:action gotodrop
        :parameters (?i - agent, ?b - object, ?r1 - object, ?r2 - object)
        :precondition (and 
            (:ontic (= (location ?i) (location_id ?r1)))
            (:ontic (= (connected ?r1 ?r2) 1))
            (:ontic (= (holding ?i ?b) 1))
        )
        :effect (and 
            (= (location ?i) (location_id ?r2))
            (= (location ?b) (location_id ?r2))
        )
    )
    ; (:action communicate_to_commander
    ;     :parameters (?i - agent, ?s - object, ?r - object)
    ;     :precondition (and 
    ;         (= (:ontic (= (room ?s) (room ?i))) 1)
    ;         (= (:ontic (= (room ?i) (room ?r))) 1)
    ;         (= (:ontic (= (room ?s) (room ?r))) 1)
    ;         ; (= (:ontic (= (shared ?s) 'f')) 1)
    ;         ; (= (:ontic (= (searched ?r) 1)) 1)
    ;     )
    ;     :effect (and 
    ;         (= (shared ?s) 't')
    ;         ; every agent knows the location of the survivor
    ;     )
    ; )

)