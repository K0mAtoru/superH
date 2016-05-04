import Data.Char
import Control.Monad

tellFortune :: String -> String
tellFortune _ = "locky"

reverseWords :: String -> String  
reverseWords = unwords . map reverse . words 

reversewords = do   
    line <- getLine  
    if null line  
        then return ()  
        else do  
            putStrLn $ reverseWords line  
            reversewords

{-
putStr :: String -> IO ()
putStr [] = return ()
putStr (x:xs) = do
    putChar x
    putStr xs
-}

{-
loop = forever $ do
    putStr "Give me some input: "
    l <- getLine
    putStrLn $ map toUpper l
-}

main = do
    putStrLn "Hello, what's your name?"  
    name <- getLine  
    name = Haskell
    putStrLn ("Hey " ++ name ++ ", you rock!") 
    putStrLn "Hello, what's your name?"  
    name <- getLine  
    putStrLn $ "Read this carefully, because this is your future: " ++ tellFortune name  
    foo <- putStrLn "Hello, what's your name?"  
    name <- getLine  
    putStrLn ("Hey " ++ name ++ ", you rock!")  
    putStrLn "What's your first name?"  
    firstName <- getLine  
    putStrLn "What's your last name?"  
    lastName <- getLine  
    let bigFirstName = map toUpper firstName  
        bigLastName = map toUpper lastName  
    putStrLn $ "hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?"  
    return ()  
    return "HAHAHA"  
    line <- getLine  
    return "BLAH BLAH BLAH"  
    return 4  
    putStrLn line 
    a <- return "hell"  
    b <- return "yeah!"  
    putStrLn $ a ++ " " ++ b 
    {-
    let a = "hell"  
        b = "yeah"  
    putStrLn $ a ++ " " ++ b
    -}
    putStr "Hey, "
    putStr "I'm "
    putStr "Andy!"
    putChar 't'
    putChar 'e'
    putChar 'h'
    print True
    print 2
    print "haha"
    print 3.2
    print [3,4,3]
    input <- getLine
    if (input == "SWORDFISH")
       then putStrLn input
       else return ()
    {-
    a <- getLine
    b <- getLine
    c <- getLine
    print [a,b,c]
    -}
    rs <- sequence [getLine, getLine, getLine]
    print rs
    sequence $ map print [1,2,3,4,5]
    mapM_ print [1,2,3]
    colors <- forM [1,2,3,4] $ \a -> do
        putStrLn $ "Which color do you associate with the number " ++ show a ++ "?"
        color <- getLine
        return color
    putStrLn "The colors that you associate with 1, 2, 3 and 4 are: "
    mapM putStrLn colors
