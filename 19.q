mol: "ORnPBPMgArCaCaCaSiThCaCaSiThCaCaPBSiRnFArRnFArCaCaSiThCaCaSiThCaCaCaCaCaCaSiRnFYFArSiRnMgArCaSiRnPTiTiBFYPBFArSiRnCaSiRnTiRnFArSiAlArPTiBPTiRnCaSiAlArCaPTiTiBPMgYFArPTiRnFArSiRnCaCaFArRnCaFArCaSiRnSiRnMgArFYCaSiRnMgArCaCaSiThPRnFArPBCaSiRnMgArCaCaSiThCaSiRnTiMgArFArSiThSiThCaCaSiRnMgArCaCaSiRnFArTiBPTiRnCaSiAlArCaPTiRnFArPBPBCaCaSiThCaPBSiThPRnFArSiThCaSiThCaSiThCaPTiBSiRnFYFArCaCaPRnFArPBCaCaPBSiRnTiRnFArCaPRnFArSiRnCaCaCaSiThCaRnCaFArYCaSiRnFArBCaCaCaSiThFArPBFArCaSiRnFArRnCaCaCaFArSiRnFArTiRnPMgArF"
t: flip `k`v! ("S S"; " ") 0: `:19.txt
t1: exec v by k from t
-1 _ i ,' next i: where mol within "AZ"
range: { x + til y - x }
ms: mol range ./: -1 _ i ,' next i: where mol within "AZ"
replace1: { [str; old; new; idx] (idx # str) , new , ( neg count[str] - count[old] + idx) # str }
rule1: { raze (string  t1 `$x) replace1[y;x;;]/:\: y ss x}
step: { distinct raze rule1[;x] each string key t1 }
step1: { raze step each x }
x: enlist enlist "e"
while[not mol in x; x: step1 x]
wsfull
