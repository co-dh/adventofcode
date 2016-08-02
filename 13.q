/ cat 13.txt | sed "s/would //" | sed "s/gain //" | sed "s/lose /-/" | sed "s/happiness units by sitting next to //" | sed "s/\.//" > 13b.txt
flip (SIS; " ") 0: `:13b.txt
syms: distinct raze d 0 2
idxs: flip ("i" $ `syms $/: d 0 2), enlist d 1
m: 8 8 # 0
{m[x 0; x 1] : x 2} each idxs

i :{(z#y),x,(z _ y)} / insert element x into array y before index z
p: { $[x=1; enlist enlist 0; raze (.z.s x-1) i[x-1]\:/: til x]}
idx2: {x, first x} each p 8
max (sum {m[x;y]+m[y;x]} prior)each idx2
