module Exercise1 where

addExclamation :: String -> String
addExclamation s = s ++ "!"

getFifthChar :: String -> Char
getFifthChar s = s !! 4

dropFirstNineChars :: String -> String
dropFirstNineChars s = drop 9 s

thirdLetter :: String -> Char
thirdLetter s = s !! 2

letterIndex :: Int -> Char
letterIndex n = s !! n
        where s = "Curry is awesome!"

rvrs :: String -> String
rvrs s = take 5 s ++ take 4 (drop 5 s) ++ drop 9 s