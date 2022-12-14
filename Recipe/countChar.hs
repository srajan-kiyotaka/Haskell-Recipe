-- countChar 
countChar :: Char -> String -> Int
countChar c str = length [1 | x <- str, x == c]

-- countChar 
countChar' :: Char -> String -> Int
countChar' c str = sum [1 | x <- str, x == c]