data Car a b c = Car { company :: a
                     , model :: b
                     , year :: c
                     } deriving (Show)

tellCar :: (Show a) => Car String String a -> String
tellCar (Car {company = c, model = m, year = y}) = "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

dotProd :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `dotProd` (Vector l m n) = i*l + j*m + k*n

vmult :: (Num a) => Vector a -> a -> Vector a
(Vector i j k) `vmult` m = Vector (i*m) (j*m) (k*m)

main :: IO ()
main = do
    print $ tellCar (Car "Ford" "Mustang" 1967)
    print $ tellCar (Car "Ford" "Mustang" "ninteen sixty seven")
    print $ Vector 3 5 8 `vplus` Vector 9 2 8
    print $ Vector 3 5 8 `vplus` Vector 9 2 8 `vplus` Vector 0 2 4
    print $ Vector 3 5 8 `vmult` 10
    print $ Vector 3 5 8 `dotProd` Vector 9.0 2.0 8.0
    print $ Vector 3 5 8 `vmult` 10
