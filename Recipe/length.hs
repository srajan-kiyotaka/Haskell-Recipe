-- length
length' :: [a] -> Int
length' xs = sum [1 | _ <- xs]

-- length 
length'' :: [a] -> Int
length'' [] = 0
length'' (x:xs) = 1 + length'' xs