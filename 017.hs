split' :: [a] -> Int -> [[a]]
split' list idx = [take idx list, triml list idx]
  where triml (y:ys) 1 = ys
        triml (y:ys) n = triml ys (n-1)