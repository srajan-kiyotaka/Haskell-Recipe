-- any'
any' :: (a -> Bool) -> [a] -> Bool
-- any' p xs = or $ map p xs
any' p = not . null . filter p