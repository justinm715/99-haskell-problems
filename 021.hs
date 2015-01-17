insertAt :: a -> [a] -> Int -> [a]
insertAt el list pos =
  let splits = splitAt (pos-1) list
  in  fst splits ++ [el] ++ snd splits