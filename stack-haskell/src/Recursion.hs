module Recursion (recursionMain)
where
--------------------------------------------------------------------------
recursionMain :: IO()
recursionMain = do
  print "Recursion"
  print $ "------------------------------"
  print $ factorialWithRecursion 5
  print $ "------------------------------"
  print $ factorialWithPatternMatching 5
  -- print $ factorialWithPatternMatching (-4)
  print $ "------------------------------"
  print $ doubleFact 1
  print $ doubleFact 2
  print $ doubleFact 5
  print $ doubleFact 7
  print $ doubleFact 4
  -- print $ doubleFact (-47)
  print $ "------------------------------"
  print $ factorialWithGuards 2
  print $ factorialWithGuards 5
  print $ "------------------------------"
  print $ fibonacci 2
  print $ fibonacci 3
  print $ fibonacci 4
  print $ fibonacci 5
  print $ fibonacci (-10)
  print $ "------------------------------"
  print $ fibonacci2 (-10)
--------------------------------------------------------------------------
factorialWithRecursion n =
  if n == 0 then 1 else factorialWithRecursion (n - 1) * n
--------------------------------------------------------------------------
factorialWithPatternMatching 0 = 1
factorialWithPatternMatching n =
  if n < 0 then error "Arg must be >= 0"
    else factorialWithPatternMatching (n - 1) * n
--------------------------------------------------------------------------
doubleFact 1 = 1
doubleFact 2 = 2
doubleFact n =
  if n < 0 then error "Arg must be >= 0"
    else doubleFact (n - 2) * n
--------------------------------------------------------------------------
factorialWithGuards :: Integer -> Integer
factorialWithGuards n
  | n == 0    = 1
  | n > 0     = factorialWithGuards (n - 1) * n
  | otherwise = error "Arg must be >= 0"
--------------------------------------------------------------------------
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n =
  if n > 0 then fibonacci (n - 1) + fibonacci (n - 2)
    else (-1) ^ (abs n + 1) * (fibonacci $ abs n)
--------------------------------------------------------------------------
fibonacci2 n =
    fibonacci2Iter 0 1 n
--------------------------------------------------------------------------
fibonacci2Iter a b n
  | n == 0 = a
  | n > 0 = fibonacci2Iter (a + b) a (n - 1)
  | otherwise = (-1) ^ (abs n + 1) * (fibonacci2Iter (a + b) a (abs n - 1))
--------------------------------------------------------------------------
