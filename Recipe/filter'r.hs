-- filter'r
filter'r :: (a -> Bool) -> [a] -> [a]
filter'r _ [] = []
filter'r p (x:xs) | p x       = x:(filter'r p xs)
                  | otherwise = filter'r p xs
-- filter'l
filter'l :: (a -> Bool) -> [a] -> [a]
filter'l p xs = [x | x <- xs, p x]