module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ stringToColor "Red"
  print $ stringToColor "Green"
  print $ stringToColor "Blue"
  print $ "------------------------------"
--------------------------------------------------------------------------
data Color = Red | Green | Blue deriving Show

stringToColor :: String -> Color
stringToColor "Red"   = Red
stringToColor "Green" = Green
stringToColor "Blue"  = Blue
--------------------------------------------------------------------------
