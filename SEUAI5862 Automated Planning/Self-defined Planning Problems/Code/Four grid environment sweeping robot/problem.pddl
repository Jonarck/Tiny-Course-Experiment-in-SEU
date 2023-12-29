(define (problem clean-room-problem)
(:domain clean-room)
(:objects Agent P1 P2 P3 P4)

(:init (room P1)
       (room P2)
       (room P3)
       (room P4)
       (moppingrobot Agent)
       (clean P1) (dirty P2)
       (dirty P3)
       (dirty P4)
       (at Agent P1)
       (near P1 P2)
       (near P1 P3)
       (near P2 P1)
       (near P2 P4)
       (near P3 P1)
       (near P3 P4)
       (near P4 P2)
       (near P4 P3))

(:goal (and (clean P1)
            (clean P2)
            (clean P3)
            (clean P4)
            (at Agent P1))))