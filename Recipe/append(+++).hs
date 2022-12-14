-- append(+++)
(+++) :: [a] -> [a] -> [a]
[] +++ xs = xs
xs +++ [] = xs
xs +++ ys = init xs +++ (x:ys)
            where x = last xs 
-- (x:xs) +++ ys = x:(xs +++ ys)