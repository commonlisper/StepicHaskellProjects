module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ distance (Point 0.0 0.0) (Point 2.0 3.0)
  print $ distance (Point 0.0 0.0) (Point 0.0 0.0)
  print $ distance (Point 5.0 5.0) (Point 1.0 1.0)
  print $ "------------------------------"
--------------------------------------------------------------------------
data Point = Point Double Double
  deriving Show
--------------------------------------------------------------------------
origin :: Point
origin = Point 0.0 0.0
--------------------------------------------------------------------------
distanceToOrigin :: Point -> Double
distanceToOrigin (Point x y) = sqrt (x ^ 2 + y ^ 2)
--------------------------------------------------------------------------
distance :: Point -> Point -> Double
distance (Point x1 y1) (Point x2 y2) = sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2)
--------------------------------------------------------------------------
