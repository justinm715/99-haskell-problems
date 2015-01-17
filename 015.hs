repli :: [a] -> Int -> [a]
repli xs n = concatMap (\x -> take n $ cycle [x]) xs