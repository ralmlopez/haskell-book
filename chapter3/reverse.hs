rvrs :: String -> String
rvrs s = take 5 s ++ take 4 (drop 5 s) ++ drop 9 s

main :: IO ()
main = print $ rvrs "Curry is awesome"