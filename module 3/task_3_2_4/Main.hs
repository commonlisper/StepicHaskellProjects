module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ squares'n'cubes [3,4,5]
  print $ squares'n'cubes' [3,4,5]
  print $ "------------------------------"
--------------------------------------------------------------------------
squares'n'cubes :: Num a => [a] -> [a]
squares'n'cubes [] = []
squares'n'cubes (x:xs) = (\y -> [y^2,y^3]) x ++ squares'n'cubes xs
--------------------------------------------------------------------------
squares'n'cubes' :: Num a => [a] -> [a]
squares'n'cubes' [] = []
squares'n'cubes' list = concatMap (\x -> [x^2,x^3]) list
--------------------------------------------------------------------------
