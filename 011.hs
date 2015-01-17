import Data.List

data Tally a = Single a | Multiple Int a deriving (Show)
encodeModified :: (Eq a) => [a] -> [Tally a]
encodeModified xs = map tally $ group xs

tally :: [a] -> Tally a
tally xs
  | l == 1 = Single (head xs)
  | otherwise = Multiple l (head xs)
  where l = length xs
