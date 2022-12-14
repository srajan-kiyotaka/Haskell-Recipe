import System.IO
import System.Environment
import Control.Monad
import Text.Read

-- main function
main = do print "Enter a Binary String:"
          str <- getLine 
          putStrLn $ "The Decimal Value is: " ++ (show $ safeBinToDec str)
          main

-- safeConvert
safeConvert :: Char -> Maybe Int
safeConvert c = case c of
                     '0' -> Just 0
                     '1' -> Just 1
                     x   -> Nothing

-- safe2Exp
safe2Exp :: Int -> Maybe Int
safe2Exp e = return $ 2 ^ e

-- safeMul
safeMul :: Maybe Int -> Maybe Int -> Maybe Int
safeMul mx my = do x <- mx
                   y <- my
                   return $ x * y

-- safeAdd
safeAdd :: Maybe Int -> Maybe Int -> Maybe Int
safeAdd mx my = do x <- mx
                   y <- my
                   return $ x + y

-- safeBinToDec
safeBinToDec :: String -> Maybe Int
safeBinToDec [] = return 0
safeBinToDec (x:xs) = safeAdd (safeMul (safeConvert x) (safe2Exp $ length xs)) (safeBinToDec xs)
           
{-
-- main function
main = do print "Enter a Binary String:"
          str <- getLine 
          putStrLn $ "The Decimal Value is: " ++ (show $ binToDec str)
          main

-- convert
convert :: Char -> Int
convert c | c == '0' || c == '1' = read [c] :: Int
          | otherwise            = error "Not a Binary Number!"

-- binToDec
binToDec :: String -> Int
binToDec [] = 0
binToDec (x:xs) = (n * (2 ^ (length xs))) + binToDec xs
                  where n = convert x
-}