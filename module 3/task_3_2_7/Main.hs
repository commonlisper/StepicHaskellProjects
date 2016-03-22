module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ max3 [7,2,9] [3,6,8] [1,8,10]
  print $ "------------------------------"
--------------------------------------------------------------------------
max3 :: Ord a => [a] -> [a] -> [a] -> [a]
-- max3 l1 l2 l3 = [maximum l1, maximum l2, maximum l3]
max3 = zipWith3 findMax
--------------------------------------------------------------------------
findMax a b c = max (max a b) c
--------------------------------------------------------------------------