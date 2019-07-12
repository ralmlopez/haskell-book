fibonnaci :: Integral a => a -> a
fibonnaci 0 = 0
fibonnaci 1 = 1
fibonnaci x = fibonnaci (x - 1) + fibonnaci (x - 2)