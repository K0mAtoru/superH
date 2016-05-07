import System.Random

{-
random :: (RandomGen g, Rangom a) => g -> (a, g)

mkStdGen :: Int -> StdGen

randoms :: (RandomGen g, Random a) => g -> [a]
randoms gen = let (value, nweGen) = random gem in value:randoms newGen
-}

threeCoins :: StdGen -> (Bool, Bool, Bool)
threeCoins gen = 
    let (firstCoin, newGen) = random gen
        (secondCoin, newGen') = random newGen
        (thirdCoin, newGen'') = random newGen'
    in (firstCoin, secondCoin, thirdCoin)

{-
finiteRandoms :: (RandomGen g, Random a, Num n) => n -> g -> ([a], g)  
finiteRandoms 0 gen = ([], gen)  
finiteRandoms n gen =   
    let (value, newGen) = random gen  
        (restOfList, finalGen) = finiteRandoms (n-1) newGen  
    in  (value:restOfList, finalGen)  
-}

main = do
    -- print $ random (mkStdGen 100)
    print(random (mkStdGen 100) :: (Int, StdGen))
    print(random (mkStdGen 100) :: (Int, StdGen))
    print(random (mkStdGen 949494) :: (Int, StdGen))
    print(random (mkStdGen 949484) :: (Int, StdGen))
    print(random (mkStdGen 949488) :: (Float, StdGen))
    print(random (mkStdGen 949488) :: (Bool, StdGen))
    print(random (mkStdGen 949488) :: (Integer, StdGen))
    print $ threeCoins (mkStdGen 21)
    print $ threeCoins (mkStdGen 22)
    print $ take 5 (randoms (mkStdGen 11) :: [Int])
    print $ take 10 (randomRs ('a','z') (mkStdGen 3) :: [Char])
