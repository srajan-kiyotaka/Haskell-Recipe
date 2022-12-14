-- doubleEvenr
doubleEvenr :: [Int] -> [Int]
doubleEvenr [] = []
doubleEvenr (x:xs) | x `mod` 2 == 0 = (x*2):(doubleEvenr xs)
                   | otherwise      = x:(doubleEvenr xs)

-- doubleEvenl
doubleEvenl :: [Int] -> [Int]
doubleEvenl xs = [if x `mod` 2 == 0 then x*2 else x| x <- xs]