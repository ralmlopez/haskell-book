module MoreFunc where

    tensDigit :: Integral a => a -> a
    tensDigit x = d
        where xLast = x `div` 10
              d     = xLast `mod` 10

    tensDigit' :: Integral a => a -> a
    tensDigit' x = d
        where (xLast, _) = x `divMod` 10
              (_, d)     = xLast `divMod` 10

    hunsDigit :: Integral a => a -> a
    hunsDigit x = d
        where xLast = x `div` 100
              d     = xLast `mod` 10

    foldBool :: a -> a -> Bool -> a
    foldBool x y b =
        case b of
            False -> x
            True  -> y

    foldBool' :: a -> a -> Bool -> a
    foldBool' x y b 
        | b = y
        | otherwise = x

    foldBool3 :: a -> a -> Bool -> a
    foldBool3 x _ False = x
    foldBool3 _ y True = y
        
    g :: (a -> b) -> (a, c) -> (b, c)
    g f (x, y) =
        (f x, y)