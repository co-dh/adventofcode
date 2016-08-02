a: "abcdefghijklmnopqrstuvwxyz"
wrap: { ("*" ,/: x) ,\: "*" }
pats: wrap a flip (i: til 24; 1+i;2+i) 
r1: {1 = max x like/: pats}
r2: {0 = max "iol" in x}
pat3: wrap a flip (til 26; til 26)
r3: {1 < sum x like/: pat3}
inclast : { x1: (-1 _ x), 1 + last x;$[25 < last x1; (.z.s -1 _ x1), 0; x1] }
ax: "cqjxjnds"
x: a ? ax
while[not (r1 ax) and (r2 ax) and r3 ax; x: inclast x; ax: a x] 


