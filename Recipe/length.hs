-- length
length' :: [a] -> Int
length' xs = sum [1 | _ <- xs]