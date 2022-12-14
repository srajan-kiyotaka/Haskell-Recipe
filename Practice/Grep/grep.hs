import System.IO
import System.Environment


-- Main Function
main = do
       word:fileName:[] <- getArgs
       fHandle <- openFile fileName ReadMode 
       contents <- hGetContents fHandle 
       putStr $ unlines $ finalResult word $ lines contents
       hClose fHandle


-- sub functions
sub :: Int -> String -> String
sub 0 _ = []
sub n (x:xs) = x:sub (n-1) xs


-- new check function
newCheck :: String -> String -> Bool
newCheck _ [] = False
newCheck word sentence | head word == head sentence = if word == sub (length word) sentence
                                                         then True 
                                                         else newCheck word $ tail sentence
                       | otherwise                  = newCheck word $ tail sentence


-- finalResult 
finalResult :: String -> [String] -> [String]
finalResult word xss = [show n ++ " : " ++ x | (x,n) <- zip xss [1..], newCheck word x]








{-
import System.IO
import System.Environment

-- Main Function
main = do
       word:fileName:[] <- getArgs
    --    print fileName
       fHandle <- openFile fileName ReadMode 
       contents <- hGetContents fHandle 
    --    print $ lines contents
       putStr $ unlines $ finalResult word $ lines contents
       hClose fHandle


-- -- check 
-- check :: String -> [String] -> Bool
-- check word [] = False
-- check word (x:xs)| x == word = True
--                  | otherwise = check word xs


-- sub functions
sub :: Int -> String -> String
sub 0 _ = []
sub n (x:xs) = x:sub (n-1) xs


-- new check function
newCheck :: String -> String -> Bool
newCheck _ [] = False
newCheck word sentence | head word == head sentence =  if word == sub (length word) sentence
                                                          then True else newCheck word $ tail sentence
                       | otherwise                  = newCheck word $ tail sentence



-- finalResult 
finalResult :: String -> [String] -> [String]
-- finalResult _ [] = []
-- finalResult n word (x:xs) | check word $ words x = (show n ++ " : " ++ x):finalResult (n+1) word xs
--                           | otherwise = finalResult (n+1) word xs

finalResult word xss = [show n ++ " : " ++ x | (x,n) <- zip xss [1..], newCheck word x]
-}
