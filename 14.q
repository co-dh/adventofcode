p: flip (" III"; " ")0: `:14b.txt
dist: {[t;x](min (t mod (x[1] + x 2); x 1) *  (x 0)) + (x 0) * (x 1) * t div (x 1) + x 2}
dist[2503] each p
m1: max each d1: (1 + til 2503) dist/:\: p
max sum each m1 =/: flip d1
