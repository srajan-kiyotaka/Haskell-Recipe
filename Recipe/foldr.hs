{- foldr -}

-- foldr'
foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' _ v [] = v
foldr' f v (x:xs) = x `f` foldr' f v xs

-- sum'fr
sum'fr :: Num a => [a] -> a
sum'fr = foldr' (+) 0

-- product'fr 
product'fr :: Num a => [a] -> a
product'fr = foldr' (*) 1

-- and'fr
and'fr :: [Bool] -> Bool
and'fr = foldr' (&&) True

-- or'fr
or'fr :: [Bool] -> Bool
or'fr = foldr' (||) False

-- length'fr 
length'fr :: [a] -> Int
length'fr = foldr' (\_ -> (\n -> 1 + n)) 0

-- map'fr
map'fr :: (a -> b) -> [a] -> [b]
map'fr f = foldr' (\ x xs -> (f x): xs) []

-- filter'fr
filter'fr :: (a -> Bool) -> [a] -> [a]
filter'fr p = foldr' (\x xs -> if p x then x:xs else xs) []

-- sumLength
sumLength :: Num a => [a] -> (a,Int)
sumLength = foldr' (\ x (s, l) -> (s + x, l + 1)) (0,0)