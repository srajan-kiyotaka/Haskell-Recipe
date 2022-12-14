-- sortedInsert
sortedInsert :: Ord a => a -> [a] -> [a]
sortedInsert x [] = [x]
sortedInsert x (y:ys) | x < y     = x:y:ys
                      | otherwise = y:(sortedInsert x ys)