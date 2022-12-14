import System.IO
import System.Environment
import Control.Monad
import Text.Read

-- main function
main = do print "Enter the expression in postfix format:"
          exp <- getLine
          putStrLn $ "The Final Result: " ++ (show $ calculator (words exp) (Just []))
          main

-- Stack
type Stack = [Int]

-- Token
data Token = Plus | Minus | Divide | Multiply | Value Int  deriving (Eq, Ord, Show, Read)

-- tokenizer
tokenizer :: String -> Maybe Token
tokenizer x | x == "-"  = Just Minus
            | x == "+"  = Just Plus
            | x == "*"  = Just Multiply
            | x == "/"  = Just Divide
            | otherwise = do n <- (readMaybe x :: Maybe Int)
                             return (Value n)

-- evaluate expression function
evaluate :: Token -> Stack -> Maybe Stack
evaluate (Value x) stack = return $ x:stack
evaluate t mss = do x <- safeHead mss
                    y <- safeTail mss >>= safeHead
                    ms <- safeTail mss >>= safeTail
                    case t of 
                          Plus     -> return $ (y + x):ms 
                          Minus    -> return $ (y - x):ms
                          Multiply -> return $ (y * x):ms
                          Divide   -> do z <- safeDiv y x
                                         return $ z:ms 

-- safeHead 
safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead xs = Just (head xs)

-- safeTail 
safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail xs = Just (tail xs)

-- safeDiv 
safeDiv :: Int -> Int -> Maybe Int
safeDiv _ 0 = Nothing
safeDiv x y = return $ x `div` y

-- calculator function
calculator :: [String] -> Maybe Stack -> Maybe Int
calculator [] ms = do s <- ms
                      safeHead s
calculator (x:xs) ms = do s <- ms
                          t <- tokenizer x
                          calculator xs (evaluate t s)
