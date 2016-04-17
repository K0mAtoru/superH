import qualified Data.Map as Map

phoneBook :: Map.Map String String
phoneBook = Map.fromList $
    [("betty",   "552-2938")
    ,("bonnie",  "452-2928")
    ,("patsy",   "493-2928")
    ,("lucille", "205-2928")
    ,("wendy",   "939-8282")
    ,("penny",   "853-2492")
    ]

phoneBook' =   
    [("betty","555-2938")  
    ,("betty","342-2492")  
    ,("bonnie","452-2928")  
    ,("patsy","493-2928")  
    ,("patsy","943-2929")  
    ,("patsy","827-9162")  
    ,("lucille","205-2928")  
    ,("wendy","939-8282")  
    ,("penny","853-2492")  
    ,("penny","555-2111")  
    ]  

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k,v):xs)
    | key == k = Just v
    | otherwise = findKey key xs

findKey' :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey' key xs = Prelude.foldr
                    (\ (k,v) acc -> if key == k then Just v else acc)
                    Nothing xs

phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
phoneBookToMap xs = Map.fromListWith add xs
        where add number1 number2 = number1 ++ ", " ++ number2

phoneBookToMap' :: (Ord k) => [(k, a)] -> Map.Map k [a]
phoneBookToMap' xs = Map.fromListWith (++) $ map (\(k, v) -> (k, [v])) xs

main :: IO ()
main = do
    print $ phoneBook
--  print $ findKey "penny" phoneBook
--  print $ findKey' "penny" phoneBook
--  print $ findKey "wilma" phoneBook
--  print $ findKey' "wilma" phoneBook
    print $ Map.fromList [(3,"shoes"),(4,"trees"),(9,"bees")]
    print $ Map.lookup "betty" phoneBook
    print $ Map.lookup "wendy" phoneBook
    print $ Map.lookup "grace" phoneBook
    print $ Map.size phoneBook
    print $ Map.lookup "patsy" $ phoneBookToMap phoneBook'
    print $ Map.lookup "patsy" $ phoneBookToMap' phoneBook'
    print $ Map.fromListWith max [(2,3),(2,5),(2,100),(3,29),(3,22),(3,11),(4,22),(4,15)] 
    print $ Map.fromListWith (+) [(2,3),(2,5),(2,100),(3,29),(3,22),(3,11),(4,22),(4,15)] 
    print $ Map.insertWith (+) 6 100 $ Map.fromList [(3,4),(5,103),(6,339)]
