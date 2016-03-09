
main = do
    print $ [1..20]
    print $ ['a'..'z']
    print $ ['K'..'Z']
    print $ [2,4..20]
    print $ [3,6..20]
    print $ [13,26..24*13]
    print $ take 24 [13,26..] -- good
    print $ take 10 (cycle [1,2,3])
    print $ take 12 (cycle "LOL ")
    print $ take 10 (repeat 5)
    print $ replicate 3 10
    print $ [0.1, 0.3 .. 1]
