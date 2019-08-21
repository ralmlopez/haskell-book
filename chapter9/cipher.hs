module Cipher where

import Data.Char

shift :: Char -> Int -> Char
shift c n =
    chr $ (mod (ord c - 96 + n) 26) + 96

shiftR :: Char -> Int -> Char
shiftR c n =
    shift c n

shiftL :: Char -> Int -> Char
shiftL c n =
    shift c (-n)

caesar :: String -> Int -> String
caesar [] _ = []
caesar (x:xs) n = shiftR x n : caesar xs n

unCaesar :: String -> Int -> String
unCaesar [] _ = []
unCaesar (x:xs) n = shiftL x n : unCaesar xs n

