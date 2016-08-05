
t: read0 `:18.txt
d: "#."!(1b;0b)
m: d each t

up:  {flip prev each flip x }
down:{flip next each flip x }
left: { prev each x}
right: { next each x}
nbs: { (up x) + (down x) + (left x ) + (right x) + (up left x) + (up right x) + (down left x) + (down right x)}
step: {[m] ((not m) and m1 = 3) or (m and (m1: nbs m)  within 2 3) }
sum sum step/[100;m]

fix: { x[0 99;0 99]: 1b ; x}
step1: { step fix x }
sum sum fix step1/[100;m]

