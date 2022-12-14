import System.IO
import System.Environment

-- main function
main = do print "Enter a sentence:"
          sen <- getLine
          if null sen
             then return ()
             else do 
                  print $ reverseSen sen
          main

-- reverseSen
reverseSen :: String -> String
reverseSen sen = unwords $ map reverse $ words sen