class YesNo a where
    yesno :: a -> Bool

instance YesNo Int where
    yesno 0 = False
    yesno _ = True

instance YesNo Char where
    yesno ' ' = False
    yesno _  = True

instance YesNo [a] where
    yesno [] = False
    yesno _  = True

instance YesNo Bool where
    yesno = id

instance YesNo (Maybe a) where
    yesno (Just _) = True
    yesno Nothing = False

instance YesNo (Tree a) where
    yesno EmptyTree = False
    yesno _ = True

instance YesNo TrafficLight where
    yesno Red = False
    yesno _ = True

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)
data TrafficLight = Red | Yellow | Green

yesnoIf :: (YesNo y) => y -> a -> a -> a
yesnoIf yesnoVal yesResult noResult =
    if yesno yesnoVal
       then yesResult
       else noResult

main :: IO ()
main = do
    print $ yesno $ length []
    print $ yesno "haha"
    print $ yesno ""
    print $ yesno 'a'
    print $ yesno $ Just 0
    print $ yesno True
    print $ yesno EmptyTree
    print $ yesno []
    print $ yesno [0,0,0]
    print $ yesnoIf [] "YEAH!" "NO!"
    print $ yesnoIf [2,3,4] "YEAH!" "NO!"
    print $ yesnoIf True "YEAH!" "NO!"
    print $ yesnoIf (Just 500) "YEAH!" "NO!"
    print $ yesnoIf Nothing "YEAH!" "NO!"
