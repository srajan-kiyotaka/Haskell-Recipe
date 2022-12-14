-- oddNum 
oddNum :: Int -> [Int]
oddNum n = map (\x -> 2*x + 1) [1..n]