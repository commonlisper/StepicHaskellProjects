module Functions (functionsMain)
where
--------------------------------------------------------------------------
functionsMain :: IO()
functionsMain = do
  -- print (sumOfSquares 2 5)
  -- print (lenVec3 2 3 6)
  -- print twentyTwo
  -- print (sign (100))
  -- print (sign (-100))
  -- print (sign 0)
  print (standardDiscount 2000)
  print (standardDiscount 900)
--------------------------------------------------------------------------
square a = a * a
sumOfSquares a b = square a  + square b
--------------------------------------------------------------------------
lenVec3 x y z = sqrt ( x ^ 2 + y ^ 2 + z ^ 2)
--------------------------------------------------------------------------
twentyTwo = 20 + 2
--------------------------------------------------------------------------
sign x =
  if x > 0 then 1
    else if x < 0 then (-1)
      else 0
--------------------------------------------------------------------------
max5' = max 5
--------------------------------------------------------------------------
discount limit proc sum =
  if sum >= limit then sum * (100 - proc) / 100
    else sum
--------------------------------------------------------------------------
standardDiscount = discount 1000 2
