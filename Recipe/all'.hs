-- all'
all' :: (a -> Bool) -> [a] -> Bool
all' p xs = and $ map p xs