i :{(z#y),x,(z_y)} / insert element x into array y before index z
p: { $[x=1; enlist enlist 0; raze (.z.s x-1) i[x-1]\:/: til x]}
d: ("S S I"; " ")0: `:9.txt
syms: distinct raze d 0 1
d1: flip ("i" $ `syms $/: d 0 1) , enlist d 2
dis: 8 8 # 0
{dis[x 0; x 1]: x 2} each d1
{dis[x 1; x 0]: x 2} each d1

q)dis
0   34  100 63  108 111 89  132
34  0   4   79  44  147 133 74 
100 4   0   105 95  48  88  7  
63  79  105 0   68  134 107 40 
108 44  95  68  0   11  66  144
111 147 48  134 11  0   115 135
89  133 88  107 66  115 0   127
132 74  7   40  144 135 127 0 

min (sum {dis[x;y]}prior )each p 8


