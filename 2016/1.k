dis: "I"$1_' s: ", "\:*0: `:1.txt; rot: `$'*:'s; R: -1 * L:(0 -1f; 1 0f); p: 0 0f; d: 0 1f; f: {p+:y*d::`.[x]$d}; rot f' dis; +/ abs p
p: 0 0f; d: 0 1f; v:,p; 
f: {d:: `.[x]$d; while[y>0; y-:1; p+:d; v,:, p]}; 
rot f' dis;
i:2; while[~: v[i] in (i-1)#v; i+:1];
sum abs v i
