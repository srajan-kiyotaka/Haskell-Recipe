-- elem'r
elem'r :: Eq a => [a] -> a -> Bool
elem'r [] _ = False
elem'r (x:xs) y | y == x    = True 
                | otherwise = elem'r xs y

-- elem'l
elem'l :: Eq a => [a] -> a -> Bool
elem'l xs y = or [x == y| x <- xs] 