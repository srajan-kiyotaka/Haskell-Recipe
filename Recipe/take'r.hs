-- take'r 
take'r :: Int -> [a] -> [a]
take'r n [] = []
take'r 0 _ = []
take'r n (x:xs) = x:(take'r (n-1) xs)

-- take'l 
take'l :: Int -> [a] -> [a]
take'l n xs = [x | (x,i) <- zip xs [1..n]]