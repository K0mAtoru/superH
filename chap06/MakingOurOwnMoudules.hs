import Geometry
import qualified Geometry.Sphere as Sphere

main :: IO ()
main = do
    print $ sphereVolume 2.0
    print $ Sphere.volume 2.0
