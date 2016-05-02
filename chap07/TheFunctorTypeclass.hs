class Functor' f where
    fmap' :: (a -> b) -> f a -> f b

instance Functor' [] where
    fmap' = map

instance Functor' Maybe where
    fmap' f (Just x) = Just (f x)
    fmap' f Nothing = Nothing

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
    | x == a = Node x left right
    | x < a  = Node a (treeInsert x left) right
    | x > a  = Node a left (treeInsert x right)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

instance Functor' Tree where
    fmap' f EmptyTree = EmptyTree
    fmap' f (Node x left right) = Node (f x) (fmap' f left) (fmap' f right)

instance Functor' (Either a) where
    fmap' f (Right x) = Right (f x)
    fmap' f (Left x) = Left x
    
main :: IO ()
main = do
    print $ fmap' (*2) [1..3]
    print $ map (*2) [1..3]
    print $ fmap' (++ " HEY GUYS IM INSIDE THE JUST") (Just "Something serious.")
    print $ fmap' (++ " HEY GUYS IM INSIDE THE JUST") Nothing
    print $ fmap' (*2) (Just 200)
    print $ fmap' (*2) Nothing
    print $ fmap' (*2) EmptyTree
    print $ fmap' (*4) (foldr treeInsert EmptyTree [5,7,4])
