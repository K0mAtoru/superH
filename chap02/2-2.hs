factorial :: Integer -> Integer
factorial n = product [1..n]

circumfrence :: Float -> Float
circumfrence r = 2 * pi * r

circumfrence' :: Double -> Double
circumfrence' r = 2 * pi * r

main :: IO()
main = do
  print $ factorial 50
  print $ circumfrence 4.0
  print $ circumfrence' 4.0
