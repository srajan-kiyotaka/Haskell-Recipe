import System.IO
import System.Environment

-- main function
main = do print "Enter the Number: "
          x <- getLine
          print $ checkPrime (read x :: Int)

-- factors
factors :: Int -> [Int]
factors x = [i | i <- [1..x], x `mod` i == 0]

-- check prime
checkPrime :: Int -> String
checkPrime x = if length(factors x) == 2 
                  then "Yes, this is Prime number!"
                  else "No, this is not Prime number!"

