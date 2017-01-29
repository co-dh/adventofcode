ele: {enlist[x]!enlist 1} 
keyval: { (key[x];value x)}
swap:{(x[1];x[0])}
top: {raze key desc .[!] swap keyval asc each group sum ele each x}    
p2: {(x z 0; y z 1)} 
p3: {[f;g;h;x](f x 0; g x 1; h x 2)} 
fork: {(x;x)}
fork3: {(x;x;x)}
traceStep: {(y, enlist[x], enlist eval[parse x] last y)} 
trace:  { ('[;]) over {traceStep[x;]} each x} 
fmtStep: {$[10=type x; $[`p2 ~ first p: parse x; "|" sv (-3!) each 1_p; x]; -1 < type x and (4 > count x);  "|" sv (-3!) each x;  (-3!) x]} 
fmtTrace: {-1 "\n" sv fmtStep each x }
