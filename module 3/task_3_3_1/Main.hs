module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ take 10 $ fibStream
  print $ take 10 $ fibStream'
  print $ "------------------------------"
--------------------------------------------------------------------------
fibStream :: [Integer]
fibStream = [0,1] ++ zipWith (+) fibStream (tail fibStream)
--------------------------------------------------------------------------
fibStream' :: [Integer]
fibStream' = 0:1: map (\i -> fibStream' !! (i - 1) + fibStream' !! (i - 2)) [2..]
--------------------------------------------------------------------------
