module WordNumber where

import Data.List (intersperse)

split :: Int -> [Int] -> [Int]
split n lst  
    | n < 10 = n : lst
    | otherwise = mod n 10 : split (div n 10) lst

digits :: Int -> [Int]
digits n = 
    reverse (split n [])

digitToNumber :: Int -> String
digitToNumber n 
    | n == 0 = "Zero"
    | n == 1 = "One"
    | n == 2 = "Two"
    | n == 3 = "Three"
    | n == 4 = "Four"
    | n == 5 = "Five"
    | n == 6 = "Six"
    | n == 7 = "Seven"
    | n == 8 = "Eight"
    | n == 9 = "Nine"
    | otherwise = ""

wordToNumber :: Int -> String
wordToNumber n =  
    concat (intersperse "-" (map digitToNumber (digits n)))
