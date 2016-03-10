module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ nTimes 42 3
  print $ nTimes 'w' 5
  print $ nTimes 1.1 10
  print $ "------------------------------"
--------------------------------------------------------------------------
nTimes :: a -> Int -> [a]
nTimes a n = let
  iter el 0 list = list
  iter el count list = iter el (count - 1) (el : list)
  in iter a n []
--------------------------------------------------------------------------
