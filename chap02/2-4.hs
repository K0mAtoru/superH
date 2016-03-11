main :: IO()
main = do
  -- Eq type class
  print $ 5 == 5
  print $ 5 /= 5
  print $ 'a' == 'a'
  print $ "Ho Ho" == "Ho Ho"
  print $ 3.432 == 3.432
  -- Ord type class
  print $ "Abrakababra" < "Zebra"
  print $ "Abrakababra" `compare` "Zebra"
  print $ 5 >= 2
  print $ 5 `compare` 3
  print $ 'b' > 'a'
  -- Show type class
  print $ show 3
  print $ show 5.334
  print $ show True
  -- Read type class
  print $ read "True" || False
  print $ read "8.2" + 3.8
  print $ read "5" - 2
  print $ read "[1,2,3,4,5]" ++ [3]
  print $ [read "True", False, True, False]
  -- Enum type class
  print $ ['a'..'e']
  print $ [LT .. GT]
  print $ [3..5]
  print $ succ 'B'
