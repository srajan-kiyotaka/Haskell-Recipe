-- init
init' :: [a] -> [a]
init' = reverse . tail . reverse