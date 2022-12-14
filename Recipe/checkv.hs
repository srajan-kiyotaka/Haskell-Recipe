-- checkv
checkv :: Char -> Bool
checkv c | c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' = True
         | otherwise                                                = False  

-- vowelsr
vowelsr :: [Char] -> [Char]
vowelsr [] = []
vowelsr (x:xs) | checkv x  = x:(vowelsr xs)
               | otherwise = vowelsr xs 

-- vowelsl
vowelsl :: [Char] -> [Char]
vowelsl xs = [x | x <- xs, checkv x]