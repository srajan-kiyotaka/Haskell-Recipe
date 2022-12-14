-- riffler
riffler :: [a] -> [a] -> [a]
riffler [] _ = []
riffler _ [] = []
riffler (x:xs) (y:ys) = x:y:(riffler xs ys)

-- rifflel
rifflel :: [a] -> [a] -> [a]
rifflel xs ys = concat [[x,y]| (x,y) <- zip xs ys]