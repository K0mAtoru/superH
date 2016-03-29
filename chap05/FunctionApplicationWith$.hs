main :: IO ()
main = do
    print $ sqrt $ 3 + 4 + 9
    print $ sum (filter (> 10) (map (*2) [2..10]))
    print $ sum $ filter (> 10) (map (*2) [2..10])
    print $ sum $ filter (> 10) $ map (*2) [2..10]
    print $ map ($ 3) [(4+), (10*), (^2), sqrt]
