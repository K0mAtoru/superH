maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)


replicate' :: Int -> a -> [a]
replicate' n x
    | n <= 0    = []
    | otherwise = x : replicate' (n-1) x

take' :: Int -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

repeat' :: a -> [a]
repeat' x = x : repeat' x

zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise = a `elem'` xs

main :: IO()
main = do
    print $ maximum' [2, 5, 1]
    print $ replicate' 3 8
    print $ take' 3 [1,2,3,4,5]
    print $ reverse' [1,2,3,4,5]
    print $ zip' [1,2,3,4] ['a','b','c','d','e']
    print $ elem' 3 [1,2,3,4,5,6]
    print $ elem' 9 [1,2,3,4,5,6]
