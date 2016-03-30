import Data.List
import qualified Data.Map as M

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

main :: IO ()
main = do
    print $ numUniques [1,3,4,5,6,6]
