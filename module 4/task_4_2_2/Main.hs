module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ area (Circle 0)
  print $ area (Circle 5)
  print $ area (Rectangle 5 5)
  print $ area (Rectangle 0 5)
  print $ area (Rectangle 10 10)
  print $ "------------------------------"
--------------------------------------------------------------------------
data Shape = Circle Double | Rectangle Double Double
--------------------------------------------------------------------------
area :: Shape -> Double
area (Circle r) = pi * (r ^2)
area (Rectangle a b) = a * b
--------------------------------------------------------------------------
