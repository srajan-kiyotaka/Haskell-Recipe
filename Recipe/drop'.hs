-- drop'
drop' :: Int -> [a] -> [a]
drop' _ [] = []
drop' 0 xs = xs
drop' n (x:xs) = drop' (n-1) xs 