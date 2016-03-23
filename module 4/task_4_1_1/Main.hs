module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ show Red
  print $ show Green
  print $ show Blue
  print $ "------------------------------"
--------------------------------------------------------------------------
data Color = Red | Green | Blue
--------------------------------------------------------------------------
instance Show Color where
  show Red = "Red"
  show Green = "Green"
  show Blue = "Blue"
--------------------------------------------------------------------------
