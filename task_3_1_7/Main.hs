module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  -- print $ groupElems []
  print $ groupElems [1,2]
  print $ groupElems [1,2,2,2,4]
  print $ groupElems [1,2,3,2,4]
  print $ "------------------------------"
--------------------------------------------------------------------------
groupElems :: Eq a => [a] -> [[a]]
-- groupElems []     = []
-- groupElems (x:xs) = case xs of
--   y:ys | y == x -> x:y:groupElems xs
--   y:ys          -> helper x y ++ groupElems xs
--   []            -> [x]
-- --------------------------------------------------------------------------
-- helper :: [a] -> [a] -> [[a]]
-- helper (x:_) (y:ys) | x == y = [x,y] ++ helper
-- helper xs ys = xs : groupWith ys
-- helper xs [] = [xs]
--------------------------------------------------------------------------
groupElems = iter []
  where iter a [] = reverse a
        iter [] (x:xs) = iter [[x]] xs
        iter ((y:ys):yss) (x:xs)
          | x == y    = iter ((x:y:ys):yss) xs
          | otherwise = iter ([x]:(y:ys):yss) xs
--------------------------------------------------------------------------
