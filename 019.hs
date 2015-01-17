rotate :: [a] -> Int -> [a]
rotate list n
  | n == 0 = list
  | n > 0 = drop n list ++ take 3 list
  | n < 0 = drop ((length list) + n) list ++ take ((length list) + n) list