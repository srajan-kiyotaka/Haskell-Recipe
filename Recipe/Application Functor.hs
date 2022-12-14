import System.IO
import System.Environment
import Control.Monad
import Text.Read
import Data.Char
import Data.List

{- Application Functor
class (Functor f) => Application f where
    pure :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b

instance Application [] where
    pure x = [x]
    (<*>) fs xs = [f x| f <- fs, x <- xs]

instance Application Maybe where
    pure = return
    Nothing <*> _ = Nothing
    _ <*> Nothing = Nothing
    (Just f) <*> (Just x) = Just (f x)

instance Application IO where
    pure = return
    (<*>) a b = do f <- a
                   x <- b
                   return $ f x 
-}

class (Functor f) => Application f where
    pure :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b

instance Application [] where
    pure x = [x]
    (<*>) fs xs = [f x| f <- fs, x <- xs]

instance Application Maybe where
    pure = return
    Nothing <*> _ = Nothing
    _ <*> Nothing = Nothing
    (Just f) <*> (Just x) = Just (f x)

instance Application IO where
    pure = return
    (<*>) a b = do f <- a
                   x <- b
                   return $ f x 