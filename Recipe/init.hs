-- init
init' :: [a] -> [a]
init' = reverse . tail . reverse

-- init'' 
init'' :: [a] -> [a]
init'' [] = []
init'' [x] = []
init'' (x:xs) = x:(init'' xs)