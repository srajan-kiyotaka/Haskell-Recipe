import System.IO
import System.Environment
import Control.Monad
import Text.Read

-- main function
main = do args <- getArgs
          let filename = head args
          fhandel <- openFile filename ReadMode
          contents <- hGetContents fhandel
          putStrLn $ concat $ removespace $ lines contents
          hClose fhandel

-- removespace 
removespace :: [String] -> [String]
removespace [] = []
removespace (x:xs) = (concat $ words x):(removespace xs)








