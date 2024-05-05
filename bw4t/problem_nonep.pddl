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
        (location_id [roomc1,roomc2,roomc3,dropzone,frontdz,righthalld,lefthalld,lefthallc,righthallc,frontroomc1,frontroomc2,frontroomc3])
        (connected [roomc1,roomc2,roomc3,dropzone,frontdz,righthalld,lefthalld,lefthallc,righthallc,frontroomc1,frontroomc2,frontroomc3][roomc1,roomc2,roomc3,dropzone,frontdz,righthalld,lefthalld,lefthallc,righthallc,frontroomc1,frontroomc2,frontroomc3])
        (observed [b1,b2,r1,r2])
        (holding [a,b,c] [b1,b2,r1,r2])
        (handempty [a,b,c])
        ; (shared [s1,s2,s3])
        (searched [roomc1,roomc2,roomc3,dropzone,frontdz,righthalld,lefthalld,lefthallc,righthallc,frontroomc1,frontroomc2,frontroomc3])
    )

    (:init
        ; agent location assignment
        (= (location a) 'roomc3')
        (= (location b) 'righthallc')
        (= (location c) 'righthallc')
        (= (location b1) 'roomc3')
        (= (location b2) 'roomc2')
        (= (location r1) 'roomc1')
        (= (location r2) 'roomc2')
        ;inicialize all locations
        (= (location_id roomc1) 'roomc1')
        (= (location_id roomc2) 'roomc2')
        (= (location_id roomc3) 'roomc3')
        (= (location_id dropzone) 'dropzone')
        (= (location_id frontdz) 'frontdz')
        (= (location_id righthalld) 'righthalld')
        (= (location_id lefthalld) 'lefthalld')
        (= (location_id lefthallc) 'lefthallc')
        (= (location_id righthallc) 'righthallc')
        (= (location_id frontroomc1) 'frontroomc1')
        (= (location_id frontroomc2) 'frontroomc2')
        (= (location_id frontroomc3) 'frontroomc3')

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

        (= (holding a b1) 0)
        (= (holding a b2) 0)
        (= (holding a r1) 0)
        (= (holding a r2) 0)
        (= (holding b b1) 0)
        (= (holding b b2) 0)
        (= (holding b r1) 0)
        (= (holding b r2) 0)
        (= (holding c b1) 0)
        (= (holding c b2) 0)
        (= (holding c r1) 0)
        (= (holding c r2) 0)

        (= (handempty a) 1)
        (= (handempty b) 1)
        (= (handempty c) 1)
        ; (= (shared s1) 'f')
        ; (= (shared s2) 'f')
        ; (= (shared s3) 'f')
        ; ; dummy values 
        (= (observed b1) 't')
        (= (observed b2) 't')
        (= (observed r1) 't')
        (= (observed r2) 't')
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
        ; (:ontic (= (searched roomc1) 1))
        ; (:ontic (= (searched roomc2) 1))
        ; (:ontic (= (searched roomc3) 1))
        ; (:epistemic + b [a] (= (observed b1) 't'))
        (:ontic (= (location b1) 'frontroomc3'))
        ; (= (:epistemic b [a] (= (observed s2) 't')) 1)
        ; (= (:epistemic b [b] (= (observed s3) 't')) 1)
    ))

    (:domains
        (location enumerate ['roomc1','roomc2','roomc3','dropzone','frontdz','righthalld','lefthalld','lefthallc','righthallc','frontroomc1','frontroomc2','frontroomc3'])
        (location_id enumerate ['roomc1','roomc2','roomc3','dropzone','frontdz','righthalld','lefthalld','lefthallc','righthallc','frontroomc1','frontroomc2','frontroomc3'])
        (observed enumerate ['t','f'])
        ; (shared enumerate ['t','f'])
        (connected integer [0,1])
        (holding enumerate [0,1])
        (handempty integer [0,1])
        ; (commander integer [0,1])
        ; (can_communicate integer [0,1])
        ; 0 indicates that room has not been searched neither occupied
        ; 1 indicates that room is occupied
        ; 2 indicates that room has been searched and it is not occupied 
        (searched integer [0,1])
    )
)

