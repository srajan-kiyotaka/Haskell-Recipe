import System.IO
import System.Environment

-- main function
main = do print "Enter a NUMBER:"
          n <- getLine
          let x = read n :: Int
          let list = take x fib
          print $ "The " ++ n ++ " Fibonacci number are: " ++ (show $ take x fib) 
          -- to print each element in a single line
        --   putStr $ unlines $ map show list
          -- using sequence
        --   sequence $ map (putStrLn . show) list
          -- using mapM and mapM_
          mapM (putStrLn . show) list

-- Fibonacci function
fib = 0:1:(zipWith (+) fib (tail fib))