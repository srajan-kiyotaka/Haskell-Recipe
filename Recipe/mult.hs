-- (*')
(***) :: (Eq a, Num a) => a -> a -> a
_ *** 0 = 0
0 *** _ = 0
a *** 1 = a
1 *** a = a
n *** m = m + ((n-1) *** m)