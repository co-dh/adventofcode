/
2
(sum prd a) + 2 * sum sum  2 #/: asc each flip a
(sum 2 * sum (prd a) %/: a) + sum prd each  2 #/: asc each flip a

3.

a: read0 `:3.txt
a: a[0]
dir: "^v<>" !(0 1; 0 -1; -1 0; 1 0)
b: (+\) dir a
sum (count each  group b) > 0

i: 2 * til (count a) div 2
f:{count each group (enlist 0 0),(+\) dir x }
count ((f a i ) + f a i+1) > 0

4.
test: {(0x00;0x00;0x00)~ x[0 1 2]}
step: {$[test md5 x, string y; y; y+1]}
fix:{[f]x:0; x1:f x; while[x<>x1; x:x1; x1: f x1]; x}

5.
vow: "aeoiu"
pat: ("ab";"cd";"pq";"xy")
a: 2 < sum each t in\: vow
b: 0 < sum each t = prev each t
c: 0 = sum each  t like/:\: ("*" ,/: pat) ,\: "*"

nooverlap: { 0 = sum (x =' prev prev x) and x =' prev x }
pairof2:{ 0 < sum 1 < count each group x ,' next x}
jump: { 0 < sum x =' prev prev x}
f:{(nooverlap x) and (pairof2 x) and jump x}
sum f each t

6.
cat 6.txt | sed "s/turn //" | sed "s/,/ /g" | sed "s/through //" > 6a.txt
d: flip ("SIIII"; " ")0: `:6a.txt
m: 1000 1000 # 0
on: { m[range[x 0; x 2]; range[x 1; x 3]]: 1}
off: { m[range[x 0; x 2]; range[x 1; x 3]]: 0}
toggle : { m[range[x 0; x 2]; range[x 1; x 3]]: 1 - m[range[x 0; x 2]; range[x 1; x 3]]}
dis: `on`off`toggle ! (on;off;toggle)
ex: { (dis x 0) @ 1 _ x }
ex @/: d
sum sum m


on : { m[range[x 0; x 2]; range[x 1; x 3]] +: 1}
f: {max(x;0)}
off : { m[range[x 0; x 2]; range[x 1; x 3]] -: 1; m :: f each m;}
toggle : { m[range[x 0; x 2]; range[x 1; x 3]] +: 2}

7.
\
t: " " vs/: read0 `:7a.txt
f: {$[null "I" $ x; ` $ x ; -16 # 0b vs "I" $ x ]}
d: (f each) each (`$ last each t)!-1 _/: t

lshift: { next/[`long$ 0b sv y;x]}
rshift: { prev/[`long$ 0b sv y;x]}

ops: `AND`OR`NOT`LSHIFT`RSHIFT!(and;or;not;lshift;rshift)

eval1: {
     $[
        1 = type x; x; / byte array 
        -11 = type x; [d[x]: .z.s d x; d[x]]; / symbol
        1   = count x; .z.s first x;
        2   = count x; (ops x 0)  .z.s  x 1;
        3   = count x; (ops x 1)[.z.s x 0; .z.s x 2];
        0N! ("something wrong";x)
        ]
        }

eval1 `a
