-- sorted 
sorted :: (Ord a, Num a) => [a] -> Bool
sorted xs = and [x < y | (x, y) <- zip xs $ tail xs]