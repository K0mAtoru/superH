import System.IO
import Data.Char

{-
openFile :: FilePath -> IOMode -> IO Handle
type FilePath = String
data IOMode = ReadMode | WriteMode | AppendMode | ReadWriteMode

bracket :: IO a -> (a -> IO b) -> (a -> IO c) -> IO c

withFile :: FilePath -> IOMode -> (Handle -> IO a) -> IO a
withFile name mode f = bracket (openFile name mode)
    (\handle -> hClose handle)
    (\handle -> f handle)
-}

main = do
    {-
    handle <- openFile "baabaa.txt" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle

    withFile "baabaa.txt" ReadMode $ \handle -> do
        contents <- hGetContents handle
        putStr contents
    -}

    contents <- readFile "baabaa.txt"
    putStr contents
