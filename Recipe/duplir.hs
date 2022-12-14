-- duplir
duplir :: [a] -> [a]
duplir [] = []
duplir (x:xs) = x:x:(duplir xs)

-- duplil
duplil :: [a] -> [a]
duplil xs = [x | x <- xs, _ <- [1,2]]