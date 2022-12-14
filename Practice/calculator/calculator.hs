import System.IO
import System.Environment
import Control.Monad
import Text.Read

-- main function
main = do print "Enter the expression in postfix format:"
          exp <- getLine
          putStrLn $ "The Final Result: " ++ (show $ calculator [] $ words exp)
          main

-- Stack
type Stack = [Int]


-- calculator function
calculator :: Stack -> [String] -> Int
calculator stack [] = head stack
calculator stack (x:xs) | x == "*"  = calculator (((head $ tail stack) * (head stack)):(drop 2 stack)) xs
                        | x == "-"  = calculator (((head $ tail stack) - (head stack)):(drop 2 stack)) xs
                        | x == "/"  = calculator (((head $ tail stack) `div` (head stack)):(drop 2 stack)) xs
                        | x == "+"  = calculator (((head $ tail stack) + (head stack)):(drop 2 stack)) xs
                        | otherwise = calculator ((read x :: Int):stack) xs

{-
calculator stack (x:xs) | x == "*"  = calculator ((first * second):(drop 2 stack)) xs
                        | x == "-"  = calculator ((first - second):(drop 2 stack)) xs
                        | x == "/"  = calculator ((first `div` second):(drop 2 stack)) xs
                        | x == "+"  = calculator ((first + second):(drop 2 stack)) xs
                        | otherwise = calculator ((read x :: Int):stack) xs
                        where
                            first = head $ tail stack
                            second = head stack
-}