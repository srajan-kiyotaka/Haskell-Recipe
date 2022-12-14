-- dec2int 
dec2int :: [Int] -> Int
dec2int = foldl' (\x y -> x + y*10) 0