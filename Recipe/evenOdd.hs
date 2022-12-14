-- even
even' :: Integral a => a -> Bool
even' x = x `mod` 2 == 0

-- odd
odd' :: Integral a => a -> Bool
odd' x = not $ even' x