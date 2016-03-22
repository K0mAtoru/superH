applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f y x = f x y

main :: IO ()
main = do
    print $ applyTwice (+3) 10 -- (+3)((+3) 10) == 10 + 3 + 3
    print $ applyTwice (++ " HAHA") "HEY" -- (++ " HAHA"((++ "HAHA" "HEY")))
    print $ zipWith' (+) [4,2,5,6] [2,6,2,3]
    print $ zipWith' max [4,2,5,6] [2,6,2,3]
    print $ zip [1,2,3,4,5] "hello"
    print $ flip' zip [1,2,3,4,5] "hello"
    print $ zipWith div [2,2..] [10,8,6,4,2]
    print $ zipWith (flip' div) [2,2..] [10,8,6,4,2]
