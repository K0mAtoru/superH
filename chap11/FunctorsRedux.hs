{-
fmap :: (b -> c) -> Either a b -> Either a c

instance Functor IO where
    fmap f action = do
        result <- action
        return (f result)

instance Functor ((->) r) where
    fmap f g = (\x -> f (g x))
instance Functor ((->) r) where
    fmap = (.)
-}

{-
main = do line <- getLine
          let line' = reverse line
          putStrLn $ "You said " ++ line' ++ " backwards!"
          putStrLn $ "Yes, you said " ++ line' ++ " backwards!"

main = do line <- fmap reverse getLine
          putStrLn $ "You said " ++ line ++ " backwards!"
          putStrLn $ "Yes, you said " ++ line ++ " backwards!"
-}


main = do
    print $ fmap (*3) (+100) 1
    let f = fmap (*3) (+100)
    print $ f 1
    print $ (*3) `fmap` (+100) $ 1
    print $ fmap (show. (*3)) (+100) 1
    let shout = fmap (++ "!")
    print $ shout ["ha","ka","ta","no"]
    print $ fmap (replicate 3) [1,2,3,4]
    print $ fmap (replicate 3) (Just 4)
