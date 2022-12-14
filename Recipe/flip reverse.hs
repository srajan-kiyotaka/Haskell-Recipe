-- flip reverse
flipr :: [(a,b)] -> [(b,a)]
flipr [] = []
flipr ((x,y):xs) = (y,x):(flipr xs)

-- flipl reverse
flipl :: [(a,b)] -> [(b,a)]
flipl xs = [(y,x) | (x,y) <- xs]