r: {2 2 &0 0|y+x}; U:r[0 1]; D:r[0 -1];L:r[-1 0];R:r[1 0]; t: `$''0:`:2.txt; c:('[;])
m: (7 4 1; 8 5 2; 9 6 3); f:(c/)'|:'t
trace: { y, , x last y}
{m . x}' (c/{trace[x;]}' |f) [,1 1]
r: {$[2<+/abs y+x;y; x+y]}


