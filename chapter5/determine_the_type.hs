{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

    example = 1

    a = (* 9) 6
    b = head [(0, "dodge"), (1, "kitteh")]
    c = head [(0 :: Integer, "doge"), (1, "kitteh")]
    d = if False then True else False
    e = length [1,2,3,4,5]
    f = (length [1,2,3,4]) > (length "TACOCAT")


    x = "Julie"
    y = " <3 "
    z = "Haskell"
    g = x ++ y ++ z

    functionH :: [a] -> a
    functionH (x:_) = x

    functionC :: Ord a => a -> a -> Bool 
    functionC x y =
        if (x > y) then True else False

    functionS :: (a, b) -> b
    functionS (x, y) = y