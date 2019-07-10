data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
    (==) (TisAn r) (TisAn r') = r == r'


data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
    (==) (Two r1 r2) (Two r1' r2') = r1 == r1' && r2 == r2'


data StringOrInt =
      TisAnInt   Int
    | TisAString String

instance Eq StringOrInt where
    (==) (TisAnInt r) (TisAnInt r')     = r == r'
    (==) (TisAString s) (TisAString s') = s == s'
    (==) _ _                            = False

    
data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
    (==) (Pair a b) (Pair a' b') = a == a' && b == b'


data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b) (Tuple a' b') = a == a' && b == b'


data Which a =
    ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
    (==) (ThisOne x) (ThisOne x') = x == x'
    (==) (ThatOne x) (ThatOne x') = x == x'
    (==) _ _                      = False

data EitherOr a b =
    Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where 
    (==) (Hello a) (Hello a')     = a == a'
    (==) (Goodbye b) (Goodbye b') = b == b'
    (==) _ _                      = False