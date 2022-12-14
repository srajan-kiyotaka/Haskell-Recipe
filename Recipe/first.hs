-- first
first' :: [(a,b)] -> [a]
first' xs = [p | (p, _) <- xs]