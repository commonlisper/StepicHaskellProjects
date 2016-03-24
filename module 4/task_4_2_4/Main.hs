module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ isSquare (Rectangle 2 2)
  print $ isSquare (Rectangle 2 3)
  print $ isSquare (Circle 2)
  print $ "------------------------------"
--------------------------------------------------------------------------
data Shape = Circle Double | Rectangle Double Double
--------------------------------------------------------------------------
square :: Double -> Shape
square a = Rectangle a a
--------------------------------------------------------------------------
isSquare :: Shape -> Bool
isSquare (Circle _)      = False
isSquare (Rectangle a b) = a == b
--------------------------------------------------------------------------
