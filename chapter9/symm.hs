splitString :: String -> Char -> [String]
splitString s c
    | (length s) == 0 = []
    | otherwise = takeWhile (/= c) s : splitString (dropWhile (== c) (dropWhile (/= c) s)) c

myWords :: String -> [String]
myWords s = splitString s ' '