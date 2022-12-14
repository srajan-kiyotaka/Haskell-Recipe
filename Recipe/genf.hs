-- genf
genf :: Int -> [Int -> Int]
genf n = map (\i -> (+i)) [1..n]