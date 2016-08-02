import Data.List (group)
import Control.Arrow ((&&&))
f = show . length &&& (:[]) . head :: String -> (String, String)
g = (uncurry (++)) . f
let e = (concatMap g . group)
let e1 =  foldr (.) id (replicate 40 e)
length $ e1 "1321131112"

