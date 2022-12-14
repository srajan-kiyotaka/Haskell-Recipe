{- File Handle
- openFile :: FilePath -> IO Mode -> IO FileHandle
- type FilePath = String
- data IO Mode = ReadMode | WriteMode | AppendMode | ReadWriteMode
- readFile :: FilePath -> IO String
- withFile :: FilePath -> IOMode -> (Handle -> IO a) -> IO a
- hGetContents :: FileHandle -> String
- hGetChar :: FilePath -> IO
- hGetLine 
- hPutStr
- hPutStrLn 
- hPutChar
- hClose
-- Command Line Arguments
- args <- getArgs  
- getArgs :: IO [String]
-- getProgName is an I/O action that contains the program name.
- getProgName :: IO String
-}

