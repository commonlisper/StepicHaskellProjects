module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ charToInt '0'
  print $ charToInt '1'
  print $ charToInt '2'
  print $ charToInt '3'
  print $ charToInt '4'
  print $ charToInt '5'
  print $ charToInt '6'
  print $ charToInt '7'
  print $ charToInt '8'
  print $ charToInt '9'
  print $ "------------------------------"
--------------------------------------------------------------------------
charToInt :: Char -> Int
charToInt '0' = 0
charToInt '1' = 1
charToInt '2' = 2
charToInt '3' = 3
charToInt '4' = 4
charToInt '5' = 5
charToInt '6' = 6
charToInt '7' = 7
charToInt '8' = 8
charToInt '9' = 9
--------------------------------------------------------------------------
