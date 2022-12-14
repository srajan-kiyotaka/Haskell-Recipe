-- Signum
signum' :: (Ord a, Eq a, Num a) => a -> a
signum' x = if x < 0 then -1 else if x == 0 then 0 else 1  

-- Signum
signum'' :: (Ord a, Eq a, Num a) => a -> a 
signum'' x | x < 0 = -1
           | x == 0 = 0
           | otherwise = 1