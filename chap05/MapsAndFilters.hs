map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map f xs

main :: IO ()
main = do
    print $ map' (+3) [1,5,3,1,6]
    print $ map' (++ "!") ["BIFF", "BANG", "POW"]
    print $ map' (replicate 3) [3..6]
    print $ map' (map (^2)) [[1,2],[3,4,5,6],[7,8]]
    print $ map' fst [(1,2),(3,5),(6,3),(2,6),(2,5)]
