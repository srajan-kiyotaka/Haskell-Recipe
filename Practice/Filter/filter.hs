import System.IO
import System.Environment

main = do 
       xargs <- getArgs
       let ifile = head xargs
           ofile = head . tail $ xargs
       ihandle <- openFile ifile ReadMode
       ohandle <- openFile ofile WriteMode
       contents <- hGetContents ihandle
       hPutStr ohandle $ unlines . filter (and . map(flip elem $ ['a'..'z'])) . lines $ contents
       hClose ohandle
       hClose ihandle
