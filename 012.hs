import Data.List

data Tally a = Single a | Multiple Int a deriving (Show)

decodeModified :: [Tally a] -> [a]
decodeModified xs = concatMap decoder xs

decoder :: Tally a -> [a]
decoder (Single a) = [a]
decoder (Multiple n a) = replicate n a