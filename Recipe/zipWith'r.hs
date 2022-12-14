-- zipWith'r
zipWith'r :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith'r _ [] _ = []
zipWith'r _ _ [] = []
zipWith'r f (x:xs) (y:ys) = (f x y):(zipWith'r f xs ys)

-- zipWith'l
zipWith'l :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith'l f xs ys = [f x y | (x,y) <- zip xs ys]