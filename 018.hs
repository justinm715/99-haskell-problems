slice :: [a] -> Int -> Int -> [a]
slice list s1 s2 = 
  let list_with_index = zip list [1..]
      in_range n = n == s1 || n == s2 || n > s1 && n < s2
      helper item results = if in_range (snd item) then fst item:results else results
  in  foldr helper [] list_with_index