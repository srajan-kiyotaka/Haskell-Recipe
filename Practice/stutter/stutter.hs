import System.IO
import System.Environment

-- main function
main = do print "Enter a String:"
          str <- getLine
          print "Enter a Number:"
          n <- getLine
          let k = read n :: Int
          putStrLn $ "Stuttered Word: " ++ (show $ stutter str k)

-- stutter function
stutter :: String -> Int -> String
stutter [] _ = []
stutter (x:xs) n = replicate n x ++ stutter xs n