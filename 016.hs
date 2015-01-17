dropEvery :: [a] -> Int -> [a]
dropEvery list n = helper list n n
  where helper [] _ _ = []
        helper (x:xs) count 1 = helper xs count count
        helper (x:xs) count c = x:(helper xs count (c-1))
