predicate :: String -> Bool
predicate x = not $ elem x ["the", "a", "an" ]

myFilter :: String -> [String]
myFilter s =
    (filter predicate . words) s