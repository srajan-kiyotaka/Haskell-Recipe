import System.IO
import System.Environment

-- Store the original word and the guessed word.
type Store = (String, String)

-- Initialize the guessed word using the original word.
initialize :: String -> String
initialize xs = replicate (length xs) '_'

-- update the guessed word
update :: String -> String -> Char -> String
update [] _  _ = [] 
update (x:xs) (y:ys) c | x == c    = c : update xs ys c
                       | otherwise = y : update xs ys c

-- test words
word' :: String
word' = "srajan"

first' :: Store
first' = (word', initialize word')

-- Update Print
printUpdate :: String -> IO ()
printUpdate s = do putStrLn $ "Current guess word: " ++ s

-- play function
play :: Store -> IO String
play l = do printUpdate $ snd l
            putStrLn "Guess the Character: "
            c <- getChar
            let n = (fst l, update (fst l) (snd l) c)
            if checker n then return "You Won!" else play n
                          


-- Checker
checker :: Store -> Bool
checker (origin, guess) = origin == guess


-- Main

main = do putStrLn "Let's Start the Game!"
          putStrLn "Guess the Word!"
          play first'
          putStrLn "\nCongo You Won the Game!"
