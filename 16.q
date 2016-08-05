/ sed "s/Sue/sue:/g" 16.txt | sed s/,/:/g > 16a.txt
t: `sue`cars`akitas`goldfish`children`samoyeds`trees`vizslas`cats`perfumes`pomeranians!(11 # 0Ni)
d: flip ("SISISISI"; ":")0: `:16a.txt
r: {x[2 * til 4] ! x[1+2*til 4]} each d
t: flip t ,/: r

select from t1 where ((children = 3) or null children) and ((cats = 7) or null cats) and ((samoyeds=2) or null samoyeds) and ((pomeranians = 3) or null pomeranians) and ((akitas = 0) or (null akitas)) and ((vizslas = 0) or null vizslas) and ((goldfish=5) or null goldfish) and ((trees=3) or null trees) and ((cars=2) or null cars) and ((perfumes=1) or null perfumes)


select from t1 where ((children = 3) or null children) and ((cats > 7) or null cats) and ((samoyeds=2) or null samoyeds) and ((pomeranians < 3) or null pomeranians) and ((akitas = 0) or (null akitas)) and ((vizslas = 0) or null vizslas) and ((goldfish<5) or null goldfish) and ((trees>3) or null trees) and ((cars=2) or null cars) and ((perfumes=1) or null perfumes)
