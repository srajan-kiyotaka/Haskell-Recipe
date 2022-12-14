-- last
last' :: [a] -> a
last' xs = head $ reverse xs

-- last
last'' :: [a] -> a
last'' = head . reverse

-- last'''
last''' :: [a] -> a
last''' [] = error "Empty List!"
last''' [x] = x
last''' (x:xs) = last''' xs