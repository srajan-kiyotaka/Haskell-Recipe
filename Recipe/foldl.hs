{- foldl -}

-- foldl'
foldl' :: (a -> b -> b) -> b -> [a] -> b
foldl' _ v [] = v
foldl' f v (x:xs) = foldl' f (f x v) xs

-- sum'fl
sum'fl :: Num a => [a] -> a
sum'fl = foldl' (+) 0

-- product'fl 
product'fl :: Num a => [a] -> a
product'fl = foldl' (*) 1

-- and'fl
and'fl :: [Bool] -> Bool
and'fl = foldl' (&&) True

-- or'fl
or'fl :: [Bool] -> Bool
or'fl = foldl' (||) False

-- length'fl 
length'fl :: [a] -> Int
length'fl = foldl' (\_ -> (\n -> 1 + n)) 0

-- foldl''
foldl'' :: (a -> b -> b) -> b -> [a] -> b
foldl'' f v (x:xs) = let z = (f x v) in 
                         z `seq` foldl'' f z xs
-- -- map'fl
-- map'fl :: (a -> b) -> [a] -> [b]
-- map'fl f = foldl' (\ xs x -> xs ++ [f x]) []

-- -- filter'fl 
-- filter'fl :: (a -> Bool) -> [a] -> [a]
-- filter'fl p = foldl'' (\xs x -> if p x then xs ++ [x] else xs) []