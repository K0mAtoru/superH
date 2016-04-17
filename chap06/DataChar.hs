import Data.Char

encode :: Int -> String -> String
encode offset msg = map (\c -> chr $ ord c + offset) msg

decode :: Int -> String -> String
decode shift msg = encode (negate shift) msg

main :: IO ()
main = do
    print $ ord 'a'
    print $ chr 97
    print $ map ord "abcdefgh"
    print $ encode 3 "hey mark"
    print $ encode 1 "to party hard"
    print $ decode 3 (encode 3 "hey mark")
    print $ decode 1 (encode 1 "to party hard")
