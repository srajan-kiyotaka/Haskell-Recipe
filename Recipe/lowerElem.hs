-- lowerElem
lowerElem' :: String -> String
lowerElem' str = [x | x <- str, x >= 'a' && x <= 'z']