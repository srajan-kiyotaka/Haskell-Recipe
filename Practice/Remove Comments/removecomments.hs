import System.IO
import System.Environment

-- main function
main = do arg <- getArgs
          let filename = head arg
          fhandle <- openFile filename ReadMode
          content <- hGetContents fhandle
          putStrLn $ unlines $ removecomments $ lines content

-- removecomments
removecomments :: [String] -> [String]
removecomments [] = []
removecomments (xs:xss) | null xs           = xs:(removecomments xss)
                        | take 2 xs == "//" = removecomments xss
                        | otherwise         = xs:(removecomments xss)