-- last
last' :: [a] -> a
last' xs = head $ reverse xs

-- last
last'' :: [a] -> a
last'' = head . reverse