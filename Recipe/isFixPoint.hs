-- isFixPoint
isFixPoint :: (Eq a, Num a) => (a -> a) -> a -> Bool
isFixPoint f x = x == (f x)