module BasicTypes (basicTypesMain)
where
--------------------------------------------------------------------------
import Data.Char
--------------------------------------------------------------------------
basicTypesMain :: IO()
basicTypesMain = do
  print $ "------------------------------"
  print $ standardDiscount 1020
  print $ standardDiscount 500.00
  print $ "------------------------------"
  print $ isDigit '5'
  print $ isDigit 'a'
  print $ "------------------------------"
  print $ twoDigits2Int '4' '2'
  print $ twoDigits2Int 'a' '2'
  print $ twoDigits2Int 'a' 'h'
  print $ "------------------------------"
  print $ dist (0, 0) (5, 5)
--------------------------------------------------------------------------
discount :: Double -> Double -> Double -> Double
discount limit proc sum =
  if sum >= limit
    then sum * (100 - proc) / 100
    else sum
--------------------------------------------------------------------------
standardDiscount :: Double -> Double
standardDiscount = discount 1000 5
--------------------------------------------------------------------------
twoDigits2Int :: Char -> Char -> Int
twoDigits2Int a b =
  if isDigit a && isDigit b then digitToInt a * 10 + digitToInt b
    else 100
--------------------------------------------------------------------------
dist :: (Double, Double) -> (Double, Double) -> Double
dist x y =
  sqrt $ (fst y  - fst x) ^ 2 + (snd y - snd x) ^ 2
--------------------------------------------------------------------------
