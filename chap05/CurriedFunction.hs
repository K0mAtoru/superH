multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z

compareWithHundred :: Int -> Ordering
compareWithHundred x = compare 100 x

compareWithHundred' :: Int -> Ordering
compareWithHundred' = compare 100

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

main :: IO ()
main = do
    let multTwoWithNine = multThree 9
    print $ multTwoWithNine 2 3
    print $ compareWithHundred 99
    print $ compareWithHundred' 99
    print $ divideByTen 200
    print $ (/10) 200
