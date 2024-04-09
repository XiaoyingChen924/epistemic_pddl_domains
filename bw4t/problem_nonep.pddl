(define
    (problem bw4t_nonep)
    (:domain bw4t)

    (:agents
        a b c
    )
    (:objects
        b1 b2 r1 r2 roomc1 roomc2 roomc3 dropzone frontdz righthalld lefthalld lefthallc righthallc frontroomc1 frontroomc2 frontroomc3
    )

    (:variables
        (location [a,b,c,b1,b2,r1,r2,roomc1,roomc2,roomc3,dropzone,frontdz,righthalld,lefthalld,lefthallc,righthallc,frontroomc1,frontroomc2,frontroomc3])
        (connected [roomc1,roomc2,roomc3,dropzone,frontdz,righthalld,lefthalld,lefthallc,righthallc,frontroomc1,frontroomc2,frontroomc3][roomc1,roomc2,roomc3,dropzone,frontdz,righthalld,lefthalld,lefthallc,righthallc,frontroomc1,frontroomc2,frontroomc3])
        ; (observed [s1,s2,s3])
        ; (shared [s1,s2,s3])
        (searched [roomc1,roomc2,roomc3,dropzone,frontdz,righthalld,lefthalld,lefthallc,righthallc,frontroomc1,frontroomc2,frontroomc3])
    )

    (:init
        ; agent location assignment
        (= (location a) 'lefthallc')
        (= (location b) 'righthallc')
        (= (location c) 'righthallc')
        (= (location b1) 'roomc3')
        (= (location b2) 'roomc2')
        (= (location r1) 'roomc1')
        (= (location r2) 'roomc2')
        ;inicialize all locations
        (= (location roomc1) 'roomc1')
        (= (location roomc2) 'roomc2')
        (= (location roomc3) 'roomc3')
        (= (location dropzone) 'dropzone')
        (= (location frontdz) 'frontdz')
        (= (location righthalld) 'righthalld')
        (= (location lefthalld) 'lefthalld')
        (= (location lefthallc) 'lefthallc')
        (= (location righthallc) 'righthallc')
        (= (location frontroomc1) 'frontroomc1')
        (= (location frontroomc2) 'frontroomc2')
        (= (location frontroomc3) 'frontroomc3')
        ;connected rooms
        (= (connected roomc1 frontroomc1) 1)
        (= (connected frontroomc1 roomc1) 1)
        (= (connected frontroomc1 frontroomc2) 1)
        (= (connected frontroomc2 frontroomc1) 1)
        (= (connected frontroomc1 lefthallc) 1)
        (= (connected lefthallc frontroomc1) 1)

        (= (connected roomc2 frontroomc2) 1)
        (= (connected frontroomc2 roomc2) 1)
        (= (connected frontroomc2 frontroomc1) 1)
        (= (connected frontroomc1 frontroomc2) 1)
        (= (connected frontroomc2 frontroomc3) 1)
        (= (connected frontroomc3 frontroomc2) 1)

        (= (connected roomc3 frontroomc3) 1)
        (= (connected frontroomc3 roomc3) 1)
        (= (connected frontroomc3 righthallc) 1)
        (= (connected righthallc frontroomc3) 1)

        (= (connected dropzone frontdropzone) 1)
        (= (connected frontdropzone dropzone) 1)
        (= (connected frontdropzone lefthalld) 1)
        (= (connected frontdropzone righthalld) 1)
        (= (connected lefthalld frontdropzone) 1)
        (= (connected righthalld frontdropzone) 1)

        (= (connected lefthallc lefthalld) 1)
        (= (connected lefthalld lefthallc) 1)
        (= (connected righthallc righthalld) 1)
        (= (connected righthalld righthallc) 1)

        
        ; (= (shared s1) 'f')
        ; (= (shared s2) 'f')
        ; (= (shared s3) 'f')
        ; ; dummy values 
        ; (= (observed s1) 't')
        ; (= (observed s2) 't')
        ; (= (observed s3) 't')
        ; has the room been searched
        (= (searched lefthallc) 1)
        (= (searched righthallc) 1)
        (= (searched lefthalld) 0)
        (= (searched righthalld) 0)
        (= (searched roomc1) 0)
        (= (searched roomc2) 0)
        (= (searched roomc3) 0)
        (= (searched dropzone) 0)
        (= (searched frontdz) 0)
        (= (searched frontroomc1) 0)
        (= (searched frontroomc2) 0)
        (= (searched frontroomc3) 0)
    )

    (:goal (and 
        (= (:ontic (= (searched roomc1) 1)) 1)
        (= (:ontic (= (searched roomc2) 1)) 1)
        (= (:ontic (= (searched roomc3) 1)) 1)
        ; (= (:ontic (> (searched r1) 0)) 1)
        ; (= (:ontic (> (searched r2) 0)) 1)
        ; (= (:ontic (> (searched r3) 0)) 1)
        ; (= (:ontic (> (searched r4) 0)) 1)
        ; (= (:ontic (> (searched r5) 0)) 1)
        ; (= (:ontic (> (searched r6) 0)) 1)
        ;(= (:ontic (> (searched r7) 0)) 1)
        ;(= (:ontic (> (searched r8) 0)) 1)
        ;(= (:ontic (> (searched r9) 0)) 1)  
        ; (= (:epistemic b [a] (= (observed s1) 't')) 1)
        ; (= (:epistemic b [a] (= (observed s2) 't')) 1)
        ; (= (:epistemic b [b] (= (observed s3) 't')) 1)
    ))

    (:domains
        (location enumerate ['roomc1','roomc2','roomc3','dropzone','frontdz','righthalld','lefthalld','lefthallc','righthallc','frontroomc1','frontroomc2','frontroomc3'])
        ; (observed enumerate ['t','f'])
        ; (shared enumerate ['t','f'])
        (connected integer [0,1])
        ; (commander integer [0,1])
        ; (can_communicate integer [0,1])
        ; 0 indicates that room has not been searched neither occupied
        ; 1 indicates that room is occupied
        ; 2 indicates that room has been searched and it is not occupied 
        (searched integer [0,1])
    )
)

