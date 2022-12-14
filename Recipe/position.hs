-- position
position' :: Eq a => a -> [a] -> [Int]
position' n xs = [i | (x,i) <- zip xs [0..], x == n]