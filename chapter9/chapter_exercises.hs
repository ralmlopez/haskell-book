import Data.Char

filterUpperCase :: String -> String
filterUpperCase s =
    filter isUpper s

capitalizeFirst :: String -> String
capitalizeFirst (x:xs) =
    toUpper x : xs

capAll :: [Char] -> [Char]
capAll [] = []
capAll (x:xs) = toUpper x : capAll xs 

getCapitalFirst :: String -> Char
getCapitalFirst s =
    (toUpper . head) s