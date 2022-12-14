-- rep 
rep :: a -> Int -> [a]
rep x 0 = []
rep x n = x:(rep x (n-1))

-- replir
replir :: [a] -> Int -> [a]
replir [] _ = []
replir (x:xs) n = ys ++ replir xs n
                  where ys = rep x n

-- replil
replil :: [a] -> Int -> [a]
replil xs n = [x | x <- xs, _ <- [1..n]]