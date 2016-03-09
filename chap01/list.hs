main = do
  let lostNumbers = [4,8,15,16,23,42]
  print $ lostNumbers
  print $ [1,2,3,4] ++ [9,10,11,12]
  print $ "hello" ++ " " ++ "world"
  print $ ['w','o'] ++ ['o','t']
  print $ 'A':" SMALL CAT"
  print $ 5:[1,2,3,4,5]
  print $ [1,2,3,4,5] ++ [5]
  -- error : print ([1,2,3,4,5] ++ 5)
  print $ 1:2:3:[]
  print $ "Steve Buscemi" !! 6
  print $ [9.4,33.2,96.2,11.2,23.25] !! 1
  -- error : print $ [9.4,33.2,96.2,11.2,23.25] !! 6
  let b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
  print $ b
  print $ b ++ [[1,1,1,1]]
  print $ [6,6,6]:b
  print $ b !! 2
  print $ [3,2,1] > [2,1,0]
  print $ [3,2,1] > [2,10,100]
  print $ [3,4,2] > [3,4,3]
  print $ [3,4,2] > [2,4]
  print $ [3,4,2] == [3,4,2]
  print $ head [5,4,3,2,1]
  print $ tail [5,4,3,2,1]
  print $ last [5,4,3,2,1]
  print $ init [5,4,3,2,1]
  print $ length [5,4,3,2,1]
  print $ null [1,2,3]
  print $ null []
  print $ reverse [5,4,3,2,1]
  print $ take 3 [5,4,3,2,1]
  print $ take 1 [3,9,3]
  print $ take 5 [1,2]
  print $ take 0 [6,6,6]
  print $ drop 3 [8,4,2,1,5,6]
  print $ drop 0 [1,2,3,4,5]
  print $ drop 100 [1,2,3,4]
  print $ maximum [1,9,2,3,4]
  print $ minimum [8,4,2,1,5,6]
  print $ sum [5,2,1,6,3,2,5,7]
  print $ product [6,2,1,2]
  print $ product [1,2,5,6,7,9,2,0]
  print $ 4 `elem` [3,4,5,6]
  print $ 10 `elem` [3,4,5,6]
