module Main where
--------------------------------------------------------------------------
import Data.Char
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ delAllUpper "Abc IS not ABC"
  print $ delAllUpper "Abc IS not ABC fdfg ere Gt RTY"
  print $ "------------------------------"
--------------------------------------------------------------------------
delAllUpper :: String -> String
delAllUpper = unwords . filter (not . all isUpper) . words
--------------------------------------------------------------------------
