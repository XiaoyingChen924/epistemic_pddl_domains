;Header and description

(define 
    (domain grid)

    (:types
        agent survivor room
    )

    (:functions
        (agent_x ?i - agent)
        (agent_y ?i - agent)
        (survivor_x ?i - survivor)
        (survivor_y ?i - survivor)
        (room_x ?i - room)
        (room_y ?i - room)
        (max_x)
        (max_y)
        (min_x)
        (min_y)


    )

    (:action move_up
        :parameters (?i - agent, ?n - room)
        :precondition (
            ; agent is in the location
            (< (agent_x ?i) (max_x))
            (= (room_x ?n) (+ (agent_x ?i) 1))
            (= (room_y ?n) (agent_y ?i))
            ; the location is not occupied
            ; 0 means have not been searched
            ; 1 means occuriped by agent
            ; 2 means searched
            ; agent cannot entry a room if its been ocuuiped by another agent
            (!= (searched ?n) 1)
        )
        :effect (
            (assign (agent_loc ?i) 0)
        )
    )
    



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