module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ addTwoElements 2 12 [85,0,6]
  print $ addTwoElements (-1) 12 [85,0,6]
  print $ "------------------------------"
--------------------------------------------------------------------------
addTwoElements :: a -> a -> [a] -> [a]
addTwoElements a b list = a : b : list
--------------------------------------------------------------------------
