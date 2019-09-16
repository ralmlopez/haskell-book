module OwnFuncs where

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) =
    if x == True
    then True
    else myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) =
    if f x == True
    then True
    else myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs) =
    if y == x
    then True
    else myElem y xs

myElem' :: Eq a => a -> [a] -> Bool
myElem' y l = myAny (\x -> x == y) l

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x] 

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs 

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain l = squishMap (\x -> x) l

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ (x:[]) = x
myMaximumBy f (x:y:xs) =
    if f x y == GT
    then myMaximumBy f (x:xs) 
    else myMaximumBy f (y:xs)

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ (y:[]) = y
myMinimumBy f (x:y:xs) = 
    if f x y == LT
    then myMinimumBy f (x:xs)
    else myMinimumBy f (y:xs)

myMaximum :: (Ord a) => [a] -> a
myMaximum l = myMaximumBy compare l

myMinimum :: (Ord a) => [a] -> a
myMinimum l = myMinimumBy compare l