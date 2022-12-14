import System.IO
import System.Environment
import Control.Monad
import Text.Read

-- main function
main = do print "Enter the String:"
          string <- getLine 
          putStrLn $ "Result is: " ++ (show $ incDec string)
          main

-- incDec
incDec :: String -> Maybe Int
incDec str = safePrefix str (0,0)

-- Token
data Token = I | D deriving(Eq, Show, Read) 

-- tokenizer function
tokenizer :: Char -> Maybe Token
tokenizer c = case c of
                   'i' -> return I
                   'd' -> return D
                   _   -> Nothing

-- safePrefix function
safePrefix :: String -> (Int, Int) -> Maybe Int
safePrefix [] (i,d) = return (i - d)
safePrefix (x:xs) (i, d) = do t <- tokenizer x
                              case t of
                                   I -> safePrefix xs (i+1,d)
                                   D -> if i >= (d+1) 
                                           then safePrefix xs (i,d+1)
                                           else Nothing

{-
import System.IO
import System.Environment
import Control.Monad
import Text.Read

-- main function
main = do print "Enter the String:"
          string <- getLine 
          putStrLn $ "Result is: " ++ (show $ incDec string)
          main

-- incDec
incDec :: String -> Maybe Int
incDec str = safePrefix (map tokenizer string) (0,0)

-- Token
data Token = I | D deriving(Eq, Show, Read) 

-- tokenizer function
tokenizer :: Char -> Maybe Token
tokenizer c = case c of
                   'i' -> return I
                   'd' -> return D
                   _   -> Nothing

map tokenizer string :: [Maybe Token]
safePrefix :: [Maybe Token] -> (Int, Int) -> Maybe Int
safePrefix [] (i,d) = return (i - d)
safePrefix (mt:mts) (i, d) = do t <- mt
                              case t of
                                   I -> safePrefix mts (i+1,d)
                                   D -> if i >= (d+1) 
                                           then safePrefix mts (i,d+1)
                                           else Nothing
-}