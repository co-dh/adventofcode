t: 4 5 # 4 -2 0 0 5 0 5 -1 0 8 -1 0 5 0 6 0 0 -2 2 1
o: til 101
r: raze o ,/:\:  raze o ,/:\: o
r1: r where 101 > sum each r
r2: {x, 100 - sum x} each r1
m0: {max(0;x)}
max {prd m0 each x mm/: -1 _ flip t} each r2
r2: r2 where 500 = r2 mm\: 5 8 6 1

