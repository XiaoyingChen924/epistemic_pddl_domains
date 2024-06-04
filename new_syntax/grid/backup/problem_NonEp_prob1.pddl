( define
    (problem sc)
    (:domain grid)

    (:agents
        a b c
    )
    (:objects
        s1 s2 s3 r1 r2 r3 r4 r5 r6 r7 r8 r9
    )

    (:variables
        ;can_move: agent a is the commander, commander does not move
        (commander [a,b,c])
        (receiver [a,b,c])
        (can_communicate [a,b,c])
        (room [a,b,c,s1,s2,s3])
        (observed [s1,s2,s3])
        (shared [s1,s2,s3])
        (searched [r1,r2,r3,r4,r5,r6,r7,r8,r9])
        (room_num [r1,r2,r3,r4,r5,r6,r7,r8,r9])
        (connected [r1,r2,r3,r4,r5,r6,r7,r8,r9] [r1,r2,r3,r4,r5,r6,r7,r8,r9])
    )

    (:init
        ; a is the commander, and a does not move
        (= (commander a) 0)
        (= (commander b) 0)
        (= (commander c) 0)
        ; only b can communicate to the commander
        (= (can_communicate b) 1)
        (= (can_communicate c) 1)
        (= (can_communicate a) 1)
        ; only commander can receive messages 
        (= (receiver a) 1)
        (= (receiver b) 1)
        (= (receiver c) 1)
        ; agent location assignment
        (= (room a) 'r1')
        (= (room b) 'r4')
        (= (room c) 'r9')
        (= (room s1) 'r4')
        (= (room s2) 'r5')
        (= (room s3) 'r8')
        ; room number assignment
        (= (room_num r1) 'r1')
        (= (room_num r2) 'r2')
        (= (room_num r3) 'r3')
        (= (room_num r4) 'r4')
        (= (room_num r5) 'r5')
        (= (room_num r6) 'r6')
        (= (room_num r7) 'r7')
        (= (room_num r8) 'r8')
        (= (room_num r9) 'r9')
        ;connected rooms
        (= (connected r1 r2) 1)
        (= (connected r1 r4) 1)

        (= (connected r2 r1) 1)
        (= (connected r2 r3) 1)
        (= (connected r2 r5) 1)

        (= (connected r3 r6) 1)
        (= (connected r3 r2) 1)

        (= (connected r4 r5) 1)
        (= (connected r4 r1) 1)
        (= (connected r4 r7) 1); missed

        (= (connected r5 r6) 1)
        (= (connected r5 r2) 1)
        (= (connected r5 r4) 1)
        ;(= (connected r5 r7) 1) wrong

        (= (connected r6 r3) 1)
        (= (connected r6 r5) 1)
        (= (connected r6 r9) 1); missed
        ; (= (connected r6 r8) 1) wrong

        (= (connected r7 r8) 1)
        ; (= (connected r7 r5) 1) wrong
        (= (connected r7 r4) 1) ; missed
        
        (= (connected r8 r9) 1)
        (= (connected r8 r7) 1)
        ; (= (connected r8 r6) 1) wrong
        (= (connected r8 r5) 1) ; missed

        (= (connected r9 r8) 1)
        (= (connected r9 r6) 1) ; missed
        ; shared stand for sharing location 
        ; of the survivors
        (= (shared s1) 'f')
        (= (shared s2) 'f')
        (= (shared s3) 'f')
        ; dummy values 
        (= (observed s1) 't')
        (= (observed s2) 't')
        (= (observed s3) 't')
        ; has the room been searched
        (= (searched r1) 1)
        (= (searched r2) 0)
        (= (searched r3) 0)
        (= (searched r4) 1)
        (= (searched r5) 0)
        (= (searched r6) 0)
        (= (searched r7) 0)
        (= (searched r8) 0)
        (= (searched r9) 1)
        
    )

    (:goal (and 
        (:ontic (> (searched r1) 0))
        (:ontic (> (searched r2) 0))
        (:ontic (> (searched r3) 0))
        (:ontic (> (searched r4) 0))
        (:ontic (> (searched r5) 0))
        (:ontic (> (searched r6) 0))
        (:ontic (> (searched r7) 0))
        (:ontic (> (searched r8) 0))
        (:ontic (> (searched r9) 0))
    ))

    (:domains
        (room enumerate ['r1', 'r2', 'r3', 'r4', 'r5', 'r6', 'r7', 'r8', 'r9'])
        (room_num enumerate ['r1', 'r2', 'r3', 'r4', 'r5', 'r6', 'r7', 'r8', 'r9'])
        ; (room_num integer [1,9])
        (observed enumerate ['t','f'])
        (shared enumerate ['t','f'])
        (connected integer [0,1])
        (commander integer [0,1])
        (can_communicate integer [0,1])
        (receiver integer [0,1])
        ; (can_communicate integer [0,1])
        ; 0 indicates that room has not been searched neither occupied
        ; 1 indicates that room is occupied
        ; 2 indicates that room has been searched and it is not occupied 
        (searched integer [0,2])
    )
)

