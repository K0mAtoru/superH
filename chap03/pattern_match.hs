lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of lucky, pal!"

sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

-- addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
-- addVectors a b = (fst a + fst b, snd a, snd 6)
addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

sumTouple =  do
  [a+b | (a, b) <- xs]
  where
    xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]

head' :: [a] -> a
head' [] = error "Can't call head on an empty lits, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is long. The first two elements are :" ++ show x ++ " and " ++ show y

badAdd :: (Num a) => [a] -> a
badAdd (x:y:z:[]) = x + y + z

firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

main = do
  -- lucky
  print $ lucky 7
  print $ lucky 1
  -- sayMe
  print $ sayMe 4
  print $ sayMe 7
  -- factorial
  print $ factorial 5
  -- charName
  print $ charName 'a'
  print $ charName 'b'
  -- error print $ charName 'h'
  -- addVectors
  print $ addVectors (2.0, 4.2) (3.2, 5.3)
  print $ sumTouple
  -- head'
  print $ head' [4,5,6]
  -- tell
  print $ tell [1]
  print $ tell [True, False]
  print $ tell [1,2,3,4]
  -- badAdd
  -- error print $ badAdd [100,20]
  print $ firstLetter "Dracula"
