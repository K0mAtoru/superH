bmiTell :: Double -> String
bmiTell bmi
  | bmi       <= 18.5 = "You're underweight you emo, you!"
  | bmi       <= 25.0 = "You're supposedly normal. Pfft, I bet you're ugly! "
  | bmi       <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise  = "You're whale, congratulations!"

bmiTell' :: Double -> Double -> String
bmiTell' weight height 
  | weight / height ^ 2 <= 18.5 = "You're underweight you emo, you!"
  | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pfft, I bet you're ugly! "
  | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise                   = "You're whale, congratulations!"

max' :: (Ord a) => a -> a -> a
max' a b
  | a <= b     = b
  | otherwise  = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a == b    = EQ
  | a <= b    = LT
  | otherwise = GT

main = do
  print $ bmiTell 25
  print $ bmiTell' 58 1.65
  print $ max' 10 20
  print $ 3 `myCompare` 2
