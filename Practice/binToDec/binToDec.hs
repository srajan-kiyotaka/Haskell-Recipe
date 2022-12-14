import System.IO
import System.Environment

----------------------------------
--         Question 1           --
--                              -- 
--   Name: Srajan Chourasia     --
--   Roll No.: 2003135          --
--                              --  
----------------------------------


-- main function
main = do 
       print $ "Enter a Binary Number: "
       s <- getLine
    --    print s
       putStr "Decimal Number: "
       print $ binaryNumberToDecimal s
       main


-- Convert function
convert :: Char -> Maybe Int
convert c | c == '1'  = Just 1
          | c == '0'  = Just 0
          | otherwise = Nothing

-- power function
pow :: Int -> Int -> Maybe Int
pow x y = return (x ^ y)


-- mul
mul :: Maybe Int -> Maybe Int -> Maybe Int
-- mul Nothing _ = Nothing
-- mul _ Nothing = Nothing
-- mul (Just x) (Just y) = Just (x * y)
mul mx my = do x <- mx
               y <- my
               return (x * y)

-- add
add :: Maybe Int -> Maybe Int -> Maybe Int
-- add Nothing _ = Nothing
-- add _ Nothing = Nothing
-- add (Just x) (Just y) = Just (x + y)
add mx my = do x <- mx
               y <- my
               return (x + y)


-- binary number to decimal number
binaryNumberToDecimal :: String -> Maybe Int
binaryNumberToDecimal [] = Just 0
binaryNumberToDecimal (x:xs) = add (mul (convert x) $ pow 2 (length xs)) (binaryNumberToDecimal xs)
