import System.Environment

-- hammingDist
hammingDist :: Eq a => [a] -> [a] -> Maybe Int
hammingDist [] [] = return 0
hammingDist _ [] = Nothing
hammingDist [] _ = Nothing
hammingDist (x:xs) (y:ys) = do n <- hammingDist xs ys
                               if x == y 
                                  then return n
                                  else return (n + 1)