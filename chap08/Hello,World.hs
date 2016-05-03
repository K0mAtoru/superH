import Data.Char

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

main = do
    putStrLn "Hello, what's your name?"  
    name <- getLine  
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
