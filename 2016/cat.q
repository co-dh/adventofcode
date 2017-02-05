prod2	  : {[f;g]{(f x[0]; g x[1])}}
prod      : {[fs;a] .[@] each fs,' enlist each a}
fork	  : {(x;x)}
associate : {(x[0;0]; (x[0;1]; x[1]))}  
keyval	  : {(key x; value x)}             
unzip	  : {(first each x; last each x) } 
 