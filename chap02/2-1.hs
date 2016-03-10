test1 = do
  print $ addThree 1 2 3
  where
    addThree :: Int -> Int -> Int -> Int
    addThree x y z = x + y + z

test2 = do
  print $ removeNonUppercase "Hello, World!"
  where
    removeNonUppercase :: [Char] -> [Char]
    removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

main = do
  test1
  test2

