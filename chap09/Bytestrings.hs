import qualified Data.ByteString.Lazy as B
import qualified Data.ByteString as S

main = do
    print $ B.pack [99,97,110]
    print $ B.pack [98..120]
    let by = B.pack [98,111,114,116]
    print by
    print $ B.unpack by
    print $ B.fromChunks [S.pack [40,41,42], S.pack [43,44,45], S.pack [46,47,48]]
    print $ B.cons 85 $ B.pack [80,81,82,84]
