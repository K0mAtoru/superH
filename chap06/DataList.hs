import Data.List

wordNums :: String -> [(String,Int)]
wordNums  = map (\ws -> (head ws, length ws)) . group . sort . words

isIn :: (Eq a) => [a] -> [a] -> Bool
needle `isIn` haystack = any (needle `isPrefixOf`) (tails haystack)

main :: IO ()
main = do
    print $ words "hey these are the words in this sentence"
    print $ group [1,1,1,1,2,2,2,2,3,3,2,2,2,5,6,7]
    print $ group ["boom","bip","bip","boom","boom"]
    print $ wordNums "wa wa wee wa"
    print $ "art" `isIn` "party"
    print $ isIn "art" "party"
    print $ [1,2] `isIn` [1,3,5]
