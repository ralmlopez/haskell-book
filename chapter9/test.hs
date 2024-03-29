myTail :: [a] -> [a]
myTail [] = []
myTail (_ : xs) = xs

safeTail :: [a] -> Maybe [a]
safeTail []       = Nothing
safeTail (_ : []) = Nothing
safeTail (_ : xs) = Just xs

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x