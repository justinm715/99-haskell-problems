import Data.List

pack :: Eq a => [a] -> [[a]]
pack xs = group xs