import Data.List

data Tally a = Single a | Multiple Int a deriving (Show)

encodeDirect :: (Eq a) => [a] -> [Tally a]
encodeDirect xs = reverse . foldr encoder [Single (last rxs)] $ init rxs
  where
    rxs = reverse xs
    encoder x (j:js) = case j of Single a -> if a == x then (Multiple 2 a):js else Single x:j:js
                                 Multiple n a -> if a == x then (Multiple (n+1) a):js else Single x:j:js


--tally :: [a] -> Tally a
--tally xs
--  | l == 1 = Single (head xs)
--  | otherwise = Multiple l (head xs)
--  where l = length xs
