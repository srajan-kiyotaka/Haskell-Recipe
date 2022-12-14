-- pairs
pairs' :: [a] -> [(a,a)]
pairs' xs = zip xs $ tail xs

-- pairs
pairs' xs = [(x,y) | (x,y) <- zip xs $ tail xs]