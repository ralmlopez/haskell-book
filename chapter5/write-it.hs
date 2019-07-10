module WriteIt where
    i :: a -> a
    i a = a

    c :: a -> b -> a
    c x _ = x

    c'' :: b -> a -> b
    c'' x _ = x

    c' :: a -> b -> b
    c' x y = y

    r :: [a] -> [a]
    r s = tail s

    r' :: [a] -> [a]
    r' s = reverse s

    co :: (b -> c) -> (a -> b) -> a -> c
    co bToc aTob a = bToc (aTob a)

    a :: (a -> c) -> a -> a
    a aToc a = a

    a' :: (a -> b) -> a -> b
    a' aTob a = aTob a