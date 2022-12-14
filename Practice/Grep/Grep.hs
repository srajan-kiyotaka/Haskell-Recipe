import System.IO
import System.Environment
import Control.Monad
import Text.Read
import Data.Char
import Data.List

-- main function
main = do args <- getArgs
          let string = head args
              filename = head $ tail args
          fhandel <- openFile filename ReadMode
          contents <- hGetContents fhandel
          let result = unlines $ grep string $ lines contents
          putStrLn result
          hClose fhandel
          fhandel <- openFile "result.txt" WriteMode
          hPutStr fhandel result
          hClose fhandel

-- checkString
checkString :: String -> String -> Bool
checkString [] _ = False
checkString (x:xs) word | head word == x = if word == take (length word) (x:xs) 
                                              then True 
                                              else checkString xs word
                        | otherwise      = checkString xs word

-- updateString
updateString :: String -> Int -> String
updateString str n = show n ++ " : " ++ str

-- grep
grep :: String -> [String] -> [String]
grep word str = [updateString line i| (line, i) <- zip str [1..], checkString line word]

