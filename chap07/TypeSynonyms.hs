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


main :: IO ()
main = do
    print $ phoneBook
    print $ inPhoneBook "wendy" "939-8282" phoneBook
    print $ imap
    print $ imap'
