boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
length' xs = sum [1 | _ <- xs]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

main = do
  print [ x*2 | x <- [1..10]]
  print [ x*2 | x <- [1..10], x*2 >= 12]
  print [ x   | x <- [50..100], x `mod` 7 == 3]
  print (boomBangs [7..13])
  print [ x  | x <- [10..20], x /= 13, x /= 15, x /= 19]
  print [x+y | x <- [1,2,3], y <- [10,100,1000]]
  print [x*y | x <- [2,5,10], y <- [8,10,11]]
  print [x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]
  let nouns = ["hobo","frog","pope"]
  let adjectives = ["lazy","grouchy","scheming"]
  print [adjectives ++ " " ++ noun
        | adjectives <- adjectives, noun <- nouns]
  print (length' [10..20])
  print (removeNonUppercase "Hahaha! Ahahaha!")
