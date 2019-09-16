import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
    [ DbDate (UTCTime
                (fromGregorian 1911 5 1)
                (secondsToDiffTime 341223))
    , DbNumber 9001
    , DbNumber 19 
    , DbString "Hello, world!"
    , DbDate (UTCTime
                (fromGregorian 1921 5 1)
                (secondsToDiffTime 34123))
    ]

helper :: DatabaseItem -> [UTCTime] -> [UTCTime]
helper a b =
    case a of
        DbDate utcTime -> utcTime : b 

        _ -> b

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate items =
    foldr (\item acc -> 
        case item of
            DbDate utcTime -> utcTime : acc
            _ -> acc) [] items

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber items =
    foldr (\item acc -> 
        case item of
            DbNumber number -> number : acc
            _ -> acc) [] items

maxDate = UTCTime (fromGregorian 9999 12 31) (secondsToDiffTime 0)


mostRecent :: [DatabaseItem] -> UTCTime
mostRecent items =
    foldr (\item acc ->
        case item of
            DbDate utcTime ->
                if utcTime < acc then
                    utcTime
                else acc
                
            _ -> acc) maxDate items
    
sumDb :: [DatabaseItem] -> Integer
sumDb items =
    foldr (\item acc ->
        case item of
            DbNumber number -> number + acc
            _ -> acc) 0 items

sumAndCount :: [DatabaseItem] -> (Integer, Integer)
sumAndCount items =
    foldr (\item (sum, count) ->
        case item of
            DbNumber number -> (number + sum, 1 + count)
            _ -> (sum, count)) (0,0) items

avgDb :: [DatabaseItem] -> Double
avgDb items =
    (\(a, b) -> (fromIntegral a) / (fromIntegral b)) (sumAndCount items)