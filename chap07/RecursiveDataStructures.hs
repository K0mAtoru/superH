
-- data List a = Empty | Cons a (List a) deriving (Show, Read, Eq, Ord)
-- data List a = Empty | Cons ( listhead :: a, listTail :: List a) deriving (Show, Read, Eq, Ord)

infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

infixr 5 ^++
(^++) :: List a -> List a -> List a
Empty ^++ ys

main :: IO ()
main = do
    print $ 5 : []
    -- 再帰構造なのでEmptyが絶対いる
    -- Error print $ 5 : 4
    -- print $ 5 `Cons` Empty
    print $ 4 : (5 : [])
    -- print $ 4 `Cons` (5 `Cons` Empty)
    print $ 5 :-: Empty
    print $ 3 :-: 4 :-: 5 :-: Empty
    let a = 3 :-: 4 :-: 5 :-: Empty
    print $ 100 :-: a
    let b = 6 :-: 7 :-: Empty
    print $ a ^++ b
