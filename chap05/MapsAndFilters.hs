map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x       = x : filter' p xs
    | otherwise = filter' p xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerOrEqual = filter' (<= x) xs
        larger = filter' (> x) xs
    in quicksort smallerOrEqual ++ [x] ++ quicksort larger

largestDivisible :: Integer
largestDivisible = head (filter p [100000,99999..])
    where
        p x = x `mod` 3829 == 0

chain :: Integer -> [Integer]
chain 1 = [1]
chain n
    | even n = n : chain (n `div` 2)
    | odd  n = n : chain (n * 3 + 1)

numLongChains :: Int
numLongChains  = length (filter (\xs -> length xs > 15) (map chain [1..100]))

main :: IO ()
main = do
    print $ map' (+3) [1,5,3,1,6]
    print $ map' (++ "!") ["BIFF", "BANG", "POW"]
    print $ map' (replicate 3) [3..6]
    print $ map' (map (^2)) [[1,2],[3,4,5,6],[7,8]]
    print $ map' fst [(1,2),(3,5),(6,3),(2,6),(2,5)]
    print $ filter' (>3) [1,5,3,2,1,6,4,3,2,1]
    print $ filter' (==3) [1,2,3,4,5]
    print $ filter' even [1..10]
    let notNull x = not (null x)
        in print $ filter' notNull [[1,2,3],[],[3,4,5],[2,2],[],[],[]]
    print $ filter' (`elem` ['a'..'z']) "u LaUgH aT mE BeCaUsE I aM fiFfeRent"
    print $ filter' (<15) (filter even [1..20])
    print $ [x | x <- [1..20], x < 15, even x]
    print $ quicksort [3,5,3,1,3,4,2,6,7,43,2,9]
    print $ largestDivisible
    print $ takeWhile (/=' ') "elephants know how to party"
    print $ sum (takeWhile (<10000) (filter odd (map (^2) [1..])))
    print $ sum (takeWhile (<10000) [m | m <- [n^2 | n <- [1..]], odd m] )
    print $ chain 30
    print $ numLongChains
    let listOfFuns = map (*) [0..]
        in print $ (listOfFuns !! 4) 5 
