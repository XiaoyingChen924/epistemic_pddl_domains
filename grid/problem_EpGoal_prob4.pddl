( define
    (problem sc)
    (:domain grid)

    (:agents
        a b c d
    )
    (:objects
        s1 s2 s3 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12
    )

    (:variables
        ;can_move: agent a is the commander, commander does not move
        (commander [a,b,c,d])
        (receiver [a,b,c,d])
        (can_communicate [a,b,c,d])
        (room [a,b,c,d,s1,s2,s3])
        (observed [s1,s2,s3])
        (shared [s1,s2,s3])
        (searched [r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12])
        (room_num [r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12])
        (connected [r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12] [r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12])
    )

    (:init
        ; a is the commander, and a does not move
        (= (commander a) 0)
        (= (commander b) 0)
        (= (commander c) 0)
        (= (commander d) 0)
        ; only b can communicate to the commander
        (= (can_communicate b) 1)
        (= (can_communicate c) 1)
        (= (can_communicate a) 1)
        (= (can_communicate d) 1)
        ; only commander can receive messages 
        (= (receiver a) 1)
        (= (receiver b) 1)
        (= (receiver c) 1)
        (= (receiver d) 1)
        ; agent location assignment
        (= (room a) 'r1')
        (= (room b) 'r4')
        (= (room c) 'r9')
        (= (room d) 'r2')
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
        (= (room_num r10) 'r10')
        (= (room_num r11) 'r11')
        (= (room_num r12) 'r12')
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
        (= (connected r4 r7) 1)

        (= (connected r5 r6) 1)
        (= (connected r5 r2) 1)
        (= (connected r5 r4) 1)

        (= (connected r6 r3) 1)
        (= (connected r6 r5) 1)
        (= (connected r6 r9) 1)


        (= (connected r7 r8) 1)
        (= (connected r7 r4) 1)
        
        (= (connected r8 r9) 1)
        (= (connected r8 r7) 1)
        (= (connected r8 r5) 1) 

        (= (connected r9 r8) 1)
        (= (connected r9 r6) 1) 

        (= (connected r11 r10) 1)
        (= (connected r10 r11) 1) 
        (= (connected r11 r12) 1)
        (= (connected r12 r11) 1) 
        (= (connected r7 r10) 1)
        (= (connected r10 r7) 1)
        (= (connected r11 r8) 1)
        (= (connected r8 r11) 1)
        (= (connected r9 r12) 1)
        (= (connected r12 r9) 1)

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
        (= (searched r10) 0)
        (= (searched r11) 0)
        (= (searched r12) 0)
        
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
        (:ontic (> (searched r10) 0))
        (:ontic (> (searched r11) 0))
        (:ontic (> (searched r12) 0))
        (:epistemic + b [a] (= (observed s1) 't'))
        (:epistemic + b [a] (= (observed s2) 't'))
        (:epistemic + b [a] (= (observed s3) 't'))
        (:epistemic + b [b] (= (observed s1) 't'))
        (:epistemic + b [b] (= (observed s2) 't'))
        (:epistemic + b [b] (= (observed s3) 't'))
        (:epistemic + b [c] (= (observed s1) 't'))
        (:epistemic + b [c] (= (observed s2) 't'))
        (:epistemic + b [c] (= (observed s3) 't'))
        (:epistemic + b [d] (= (observed s1) 't'))
        (:epistemic + b [d] (= (observed s2) 't'))
        (:epistemic + b [d] (= (observed s3) 't'))
    ))

    (:domains
        (room enumerate ['r1', 'r2', 'r3', 'r4', 'r5', 'r6', 'r7', 'r8', 'r9', 'r10', 'r11', 'r12'])
        (room_num enumerate ['r1', 'r2', 'r3', 'r4', 'r5', 'r6', 'r7', 'r8', 'r9', 'r10', 'r11', 'r12'])
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

