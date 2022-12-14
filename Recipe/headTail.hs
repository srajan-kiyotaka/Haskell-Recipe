-- head
head' :: [a] -> a
head' (x:_) = x

-- tail
tail' :: [a] -> [a]
tail' (_:xs) = xs