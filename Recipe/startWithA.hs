-- startWithA
startWithA :: (Char, Char, Char) -> Bool
startWithA ('a', _, _) = True
startWithA _ = False