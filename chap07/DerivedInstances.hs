data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     } deriving (Eq, Show, Read)

-- data Bool = False | True deriving (Ord)
data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday   
           deriving (Eq, Ord, Show, Read, Bounded, Enum)

main :: IO ()
main = do
    let mikeD  = Person {firstName = "Michael", lastName = "Diamond",  age = 43}
    let adRock = Person {firstName = "Adam",    lastName = "Horovitz", age = 41}
    let mca    = Person {firstName = "Adam",    lastName = "Yauch",    age = 43}
    print $ mca   == adRock
    print $ mikeD == adRock
    print $ mikeD == mikeD
    let beastieBoys = [mca, adRock, mikeD]
    print $ mikeD `elem` beastieBoys
    print $ mikeD
    print $ "mikeD is: " ++ show mikeD
    print $ read "Person {firstName =\"Michael\", lastName =\"Diamond\", age = 43}" == mikeD
    print $ True `compare` False
    print $ True > False
    print $ Nothing < Just 100
    print $ Nothing > Just (-499999)
    print $ Just 100 > Just 50
    print $ show Wednesday
    print $ Saturday == Wednesday
    print $ Wednesday == Wednesday
    let minday = minBound :: Day
    let maxday = maxBound :: Day
    print $ minday
    print $ maxday
    print $ succ Monday
    print $ pred Saturday
    print $ [Thursday .. Sunday]
    let week = [minBound .. maxBound] :: [Day]
    print $ week
