module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ cmp Error Warning
  print $ cmp Error Info
  print $ cmp Warning Error
  print $ cmp Warning Info
  print $ cmp Info Warning
  print $ cmp Info Error
  print $ "------------------------------"
--------------------------------------------------------------------------
data LogLevel = Error | Warning | Info
--------------------------------------------------------------------------
cmp :: LogLevel -> LogLevel -> Ordering
cmp Error _ = GT
cmp Warning Error = LT
cmp Warning _ = GT
cmp Info _ = LT
--------------------------------------------------------------------------
-- cmp a b = compare (i a) (i b) where
--   i Error = 2
--   i Warning = 1
--   i Info = 0
--------------------------------------------------------------------------
