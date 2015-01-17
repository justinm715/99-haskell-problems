compress :: (Eq a) => [a] -> [a]
compress xs = foldr (\x a -> if x == head a then a else x:a ) [last xs] xs