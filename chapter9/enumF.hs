eftBool :: Bool -> Bool -> [Bool]
eftBool True True = [True]
eftBool False False = [True]
eftBool x y = [x, y]

eftOrder :: Ordering -> Ordering -> [Ordering]
eftOrder x y = build x y [] 
    where build a b lst 
            | a == b = 
                    a : lst 
            | otherwise = 
                    a : build (succ a) b lst
                    
eftInt :: Int -> Int -> [Int]
eftInt x y = build x y []
    where build a b lst
            | a == b =
                    a : lst
            | otherwise =
                    a: build (a + 1) b lst

eftChar :: Char -> Char -> [Char]
eftChar x y = build x y []
    where build a b lst
            | a == b =
                    a : lst
            | otherwise =
                    a: build (succ a) b lst
