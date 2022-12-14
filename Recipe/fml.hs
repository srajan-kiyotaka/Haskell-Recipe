-- fml 
fml :: [a] -> (a,a,a)
fml xs = (head xs, head $ drop (length xs `div` 2) xs, last xs)