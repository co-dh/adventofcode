t: read0 `:4.txt

f: {
 ; d:([]k: .Q.a; v: 26#0)
 ; d1: d pj/ {([k: enlist x] v: enlist 1)} each raze -1_ "-" vs x
 ; common : 5 # raze exec k from `v xdesc select asc k by v from d1 where v <> 0 
 ; ck: -1 _ last "[" vs x
 ; $[common ~ ck; "I"$ first "[" vs last "-" vs x ; 0]
 } 

f x: "aaaaa-bbb-z-y-x-123[abxyz]"
f "a-b-c-d-e-f-g-h-987[abcde]"
f "not-a-real-room-404[oarel]"
f "totally-real-room-200[decoy]"
sum f each t