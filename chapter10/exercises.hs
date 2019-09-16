a = foldr (++) "" ["woot", "WOOT", "woot"]

b = foldr max ' ' "fear is the little death"

c = foldr (&&) True [False, True]

d = foldr (||) True [False, True]

e = foldl (++) "" ((map show) [1..5])

f = foldr const 0 [1..5]

g = foldr const ' ' "tacos" 

h = foldl (flip const) ' ' "burritos"

i = foldl (flip const) 0 [1..5]