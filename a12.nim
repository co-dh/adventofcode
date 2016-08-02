import nre, strutils, sequtils, math, json

#let pat = re"[+-]?\d+"
#echo "12.txt".readFile.findAll(pat).map(parseInt).sum

let j = "12.txt".readFile.parseJson()
proc sum1(j: JsonNode): BiggestInt=
  case j.kind
  of JObject:
    for key, val in j.pairs:
      if val.kind == JString and val.str == "red":
        result = 0
        break
      result = result + sum1(val)
  of JArray:
    for val in j.items:
      result = result + sum1(val)
  of JNull, JBool, JString:
    result = 0
  of JInt:
    result = j.num
  of JFloat:
    result = j.fnum.toBiggestInt

echo j.sum1

