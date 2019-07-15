func :: [a] -> [a] -> [a]
func x y = x ++ y

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty = cattyConny "woops"
frappe = flippy "haha"

sumOfN :: (Eq a, Num a) => a -> a
sumOfN 0 = 0
sumOfN n = n + sumOfN (n - 1)

multNums :: (Integral a) => a -> a -> a
multNums _ 0 = 0
multNums x y = x + multNums x (y - 1)

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go (abs num) (abs denom) num denom 0
    where go an ad n d count
           | an < ad = 
                case (((abs n) == n) && ((abs d) == d) || ((abs n) + n == 0 && (abs d) + d == 0)) of
                    True -> (count, an) 
                    False -> ((-count), (-an))
           | otherwise =
                   go (an - ad) ad n d (count + 1) 

data DividedResult = 
    Result Integer
    | DividedByZero
    deriving (Show)

isPositive :: (Integral a, Eq a) => a -> Bool
isPositive n = n >= 0

isNegative :: (Integral a, Eq a) => a -> Bool
isNegative n = not (isPositive n)

haveTheSameSign :: (Integral a, Eq a) => a -> a -> Bool
haveTheSameSign x y = 
    (isPositive x && isPositive y) || (isNegative x && isNegative y)

dividedBy' :: Integral a => a -> a -> DividedResult
dividedBy' num 0 = DividedByZero
dividedBy' num denom = go (abs num) (abs denom) num denom 0
    where go an ad n d count
           | an < ad = 
                case (haveTheSameSign n d) of
                    True -> Result count  
                    False -> Result (-count)
           | otherwise =
                   go (an - ad) ad n d (count + 1) 

mc91 :: Integral a => a -> a
mc91 n  
   | n > 100   = n - 10
   | otherwise = mc91 (mc91 (n + 11)) 