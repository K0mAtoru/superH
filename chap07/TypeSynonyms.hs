import qualified Data.Map as Map

type PhoneNumber = String
type Name = String
type PhoneBook = [(Name,PhoneNumber)]

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook = (name,pnumber) `elem` pbook

phoneBook =      
    [("betty","555-2938")     
    ,("bonnie","452-2928")     
    ,("patsy","493-2928")     
    ,("lucille","205-2928")     
    ,("wendy","939-8282")     
    ,("penny","853-2492")     
    ]  

type AssocList k v = [(k, v)]
-- type IntMap v = Map Int v
type IntMap = Map.Map Int

imap = [(1,2),(3,5),(8,9)] :: AssocList Int Int
imap' :: IntMap Int
imap' = Map.fromList $ [(1,2),(3,5),(8,9)] 

data LockerState = Taken | Free deriving (Show, Eq)
type Code = String
type LockerMap = Map.Map Int (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map =
    case Map.lookup lockerNumber map of
         Nothing -> Left $ "Locker number " ++ show lockerNumber ++ " doesn't exit!"
         Just (state, code) -> if state /= Taken
                                  then Right code 
                                  else Left $ "Locker " ++ show lockerNumber ++ " is already taken!"

lockers :: LockerMap  
lockers = Map.fromList   
    [(100,(Taken,"ZD39I"))  
    ,(101,(Free,"JAH3I"))  
    ,(103,(Free,"IQSA9"))  
    ,(105,(Free,"QOTSA"))  
    ,(109,(Taken,"893JJ"))  
    ,(110,(Taken,"99292"))  
    ]  

main :: IO ()
main = do
    print $ phoneBook
    print $ inPhoneBook "wendy" "939-8282" phoneBook
    print $ imap
    print $ imap'
    print $ lockerLookup 101 lockers
    print $ lockerLookup 100 lockers
    print $ lockerLookup 200 lockers
