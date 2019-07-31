module PoemLines where

    firstSen = "Tyger Tyger, burning bright\n"
    secondSen = "In the forests of the night\n"
    thirdSen = "What immortal hand or eye\n"
    fourthSen = "Could frame thy fearful symmetry?"

    sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

    shouldEqual =
        [ "Tyger Tyger, burning bright"
        , "In the forests of the night"
        , "What immortal hand or eye"
        , "Could frame thy fearful symmetry?" ]

    splitString :: String -> Char -> [String]
    splitString s c
        | (length s) == 0 = []
        | otherwise = takeWhile (/= c) s : splitString (dropWhile (== c) (dropWhile (/= c) s)) c

    myLines :: String -> [String]
    myLines l = splitString l '\n'

    main :: IO () 
    main =
        print $
        "Are they equal? "
        ++ show (myLines sentences
        == shouldEqual)
