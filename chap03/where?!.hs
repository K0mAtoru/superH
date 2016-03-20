bmiTell :: Double -> Double -> String
bmiTell weight height
  | bmi       <= 18.5 = "You're underweight you emo, you!"
  | bmi       <= 25.0 = "You're supposedly normal. Pfft, I bet you're ugly! "
  | bmi       <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise  = "You're whale, congratulations!"
  where bmi = weight / height ^ 2

bmiTell' :: Double -> Double -> String
bmiTell' weight height
  | bmi <= skinny = "You're underweight you emo, you!"
  | bmi <= normal = "You're supposedly normal. Pfft, I bet you're ugly! "
  | bmi <= fat    = "You're fat! Lose some weight, fatty!"
  | otherwise     = "You're whale, congratulations!"
  where bmi    = weight / height ^ 2
        skinny = 18.5
        normal = 25.0
        fat    = 30.0

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

main = do
  print $ bmiTell  58 165
  print $ bmiTell' 58 165
  print $ initials "Komatsu" "Toru"
  print $ calcBmis [(58, 165)]
