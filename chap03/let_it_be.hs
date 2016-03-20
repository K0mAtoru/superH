cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in  sideArea + 2 * topArea

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

calcBmis' :: [(Double, Double)] -> [Double]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi > 25.0]

main :: IO ()
main = do
    print $ cylinder 2 2
    print $ [let square x = x * x in (square 5, square 3, square 2)]
    print $ (let (a, b, c) = (1, 2, 3) in a+b+c) * 100
    print $ calcBmis [(58.0, 165.0)]
