module Main where
--------------------------------------------------------------------------
import Prelude hiding (sum, product, maximum, minimum)
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ sum [1]
  print $ sum [0]
  print $ sum [1,2,3,4,5]
  print $ "------------------------------"
  print $ product [5]
  print $ product [1]
  print $ product [3,4,2,1]
  print $ "------------------------------"
  -- print $ maximum [4]
  -- print $ maximum [1,5]
  print $ "------------------------------"
--------------------------------------------------------------------------
sum :: (Num a) => [a] -> a
sum []     = error "Empty list"
sum [x]    = x
sum (x:xs) = x + sum xs
--------------------------------------------------------------------------
product :: (Num a) => [a] -> a
product []     = error "Empty list"
product [x]    = x
product (x:xs) = x * product xs
--------------------------------------------------------------------------
-- maximum :: (Ord a) => [a] -> a
-- maximum []      = error "Empty list"
-- maximum [x]     = x
-- maximum [x,y]   | x > y     = x
--                 | otherwise = y
-- maximum (x:xs)  = ((x >) maximum xs)
--------------------------------------------------------------------------
-- minimum :: (Ord a) => [a] -> a
--------------------------------------------------------------------------
