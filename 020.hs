removeAt :: Int -> [a] -> [a]
removeAt _ [] = []
removeAt 1 (x1:x2:xs) = x2:xs
removeAt k (x:xs) = x:removeAt (k-1) xs