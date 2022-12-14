-- abs
abs' :: (Num a, Ord a) => a -> a
abs' x | x >= 0    = x
       | otherwise = -x