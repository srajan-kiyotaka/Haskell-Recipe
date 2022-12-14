-- lowers 
lowers :: [Char] -> Int
lowers chs = length [x | x <- chs, x >= 'a' && x <= 'z']