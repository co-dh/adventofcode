import nre, strutils, sequtils, math, json

#let pat = re"[+-]?\d+"
#echo "12.txt".readFile.findAll(pat).map(parseInt).sum

let j = "12.txt".readFile.parseJson()
proc sum1(j: JsonNode): BiggestInt=
  var sum2:BiggestInt = 0
  case j.kind
  of JObject:
    for key, val in j.pairs:
      if val.kind == JString and val.str == "red":
        sum2 = 0
        break
      sum2 = sum2 + sum1(val)
    sum2
  of JArray:
    for val in j.items:
      sum2 = sum2 + sum1(val)
    sum2
  of JNull:
    0
  of JBool:
    0
  of JInt:
    j.num
  of JFloat:
    j.fnum.toBiggestInt
  of JString:
    0

echo j.sum1


