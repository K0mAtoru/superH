sum' :: (Num a) => [a] -> a
sum' xs  = foldl (\acc x -> acc + x) 0 xs

sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs

map'' :: (a -> b) -> [a] -> [b]
map'' f xs = foldl (\acc x -> acc ++ [f x]) [] xs

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldr (\x acc -> if x == y then True else acc) False ys

maximum' :: (Ord a) => [a] -> a
maximum' = foldl1 max

reverse' :: [a] -> [a]
reverse'  = foldl (\acc x -> x : acc) []

reverse'' :: [a] -> [a]
reverse''  = foldl (flip (:)) []

product' :: (Num a) => [a] -> a
product'  = foldl (*) 1

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x acc -> if p x then x : acc else acc) []

last' :: [a] -> a
last'  = foldl1 (\_ x -> x)

and' :: [Bool] -> Bool
and' = foldr (&&) True

sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1

main :: IO ()
main = do
    print $ sum' [3,5,2,1]
    print $ sum'' [3,5,2,1]
    print $ map' (+3) [3,5,2,1]
    print $ map'' (+3) [3,5,2,1]
    print $ 2 `elem'`[3,5,2,1]
    print $ maximum' [3,5,2,1]
    print $ reverse' [3,5,2,1]
    print $ reverse'' [3,5,2,1]
    print $ product' [3,5,2,1]
    print $ filter' (>3) [3,5,2,1]
    print $ last' [3,5,2,1]
    print $ and' [True,False,True]
    print $ and' (repeat False)
    print $ scanl (+) 0 [3,5,2,1]
    print $ scanr (+) 0 [3,5,2,1]
    print $ scanl1 (\acc x -> if x > acc then x else acc) [3,4,5,3,7,9,2,1]
    print $ scanl (flip (:)) [] [3,2,1]
    print $ sqrtSums
    print $ sum (map sqrt [1..131])
    print $ sum (map sqrt [1..130])
