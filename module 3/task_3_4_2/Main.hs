module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ lengthList []
  print $ lengthList [7,6,5]
  print $ lengthList [7,6,5,4,8]
  print $ "------------------------------"
--------------------------------------------------------------------------
lengthList :: [a] -> Int
lengthList = foldr f 0 where
  f x s  = 1 + s
--------------------------------------------------------------------------