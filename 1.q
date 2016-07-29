x: ("EE";16 16) 0: `:ex3x.dat
y: (enlist "E" ; enlist 16) 0: `:ex3y.dat
y: y[0]

dot: { sum x * y }
z: (1 + count x) # 0
x:(enlist (count y) # 1 ), x

square: { x * x}
/ z for theta
cost: {(sum square y - dot[x;z]) % ( 2 * count y)}

a: 0.1
z -: a *

show z -: a * dot[dot[x;z]-y;] each x
do[9500; show cost[x;y;z], z -: a * dot[dot[x;z]-y;] each x]

/ Expection
E: { sum (z x) * y x} / x: random variable, y:Probability mass function, z: arbitrary function.
/ Variance
vari = {E square x - E x}