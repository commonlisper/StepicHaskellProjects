module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ distance (Coord 1.0 1.0) (Coord 5.0 5.0)
  print $ manhDistance (Coord 1 1) (Coord 5 5)
  print $ "------------------------------"
--------------------------------------------------------------------------
data Coord a = Coord a a
--------------------------------------------------------------------------
distance :: Coord Double -> Coord Double -> Double
distance (Coord x1 y1) (Coord x2 y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)
--------------------------------------------------------------------------
manhDistance :: Coord Int -> Coord Int -> Int
manhDistance (Coord p1 p2) (Coord q1 q2) = abs (p1 - q1) + abs (p2 - q2)
--------------------------------------------------------------------------
