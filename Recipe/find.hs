-- find
find' :: Eq a => [a] -> a -> Bool
find' xs y = or [x == y| x <- xs]