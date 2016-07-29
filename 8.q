
s: read0 `:8.txt
f: {-2 + count ssr[ssr[x; "\\x[0123456789abcdefgh][0123456789abcdefgh]"; "_"]; "\\?"; "-"]}
(sum count each s) - sum f each s

g:{2 + sum x in "\"\\"}
sum g each s

