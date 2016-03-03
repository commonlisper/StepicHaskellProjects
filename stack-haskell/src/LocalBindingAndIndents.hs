module LocalBindingAndIndents (localBindingAndIndentsMain)
where
--------------------------------------------------------------------------
localBindingAndIndentsMain :: IO()
localBindingAndIndentsMain = do
  print "Local Binding And Indents"
  print $ "------------------------------"
  print $ roots 1 1 (-2)
  print $ roots' 1 1 (-2)
  print $ "------------------------------"
  print $ fibonacci2 (-10)
  print $ "------------------------------"
  print $ seqA 0
  print $ seqA 1
  print $ seqA 2
  print $ seqA 3
  print $ seqA 4
  print $ seqA 5
  print $ seqA 6
  print $ seqA 7
  print $ seqA 8
  print $ seqA 9
  print $ seqA 301
  print $ seqA 301 == 1276538859311178639666612897162414
  print $ "------------------------------"
  print $ sum'n'count (-39)
  print $ sum'n'count 30
  print $ sum'n'count 123456
  print $ sum'n'count 12121212121212121212
  print $ sum'n'count 0
  print $ sum'n'count 1
  print $ "------------------------------"
--------------------------------------------------------------------------
roots :: Double -> Double -> Double -> (Double, Double)
roots a b c =
  ((-b + sqrt(b ^ 2 - 4 * a * c)) / (2 * a)
  ,
   (-b - sqrt(b ^ 2 - 4 * a * c)) / (2 * a))
--------------------------------------------------------------------------
roots' :: Double -> Double -> Double -> (Double, Double)
roots' a b c =
  let d = b ^ 2 - 4 * a * c in
  ((-b + sqrt d) / (2 * a), (-b - sqrt d) / (2 * a))
--------------------------------------------------------------------------
fibonacci2 n =
  let
  fibonacci2Iter a b n
    | n == 0 = a
    | n > 0 = fibonacci2Iter (a + b) a (n - 1)
    | otherwise = (-1) ^ (abs n + 1) * (fibonacci2Iter (a + b) a (abs n - 1))
  in fibonacci2Iter 0 1 n
--------------------------------------------------------------------------
seqA 0 = 1
seqA 1 = 2
seqA 2 = 3
seqA n =
  let
    seqIter a0 a1 a2 counter
      | counter > n = a2
      | otherwise = seqIter a1 a2 (a2 + a1 - 2 * a0) (counter + 1)
    in seqIter 1 2 3 3
--------------------------------------------------------------------------
sum'n'count :: Integer -> (Integer, Integer)
sum'n'count 0 = (0, 1)
sum'n'count x =
  iter (0, 0) (abs x)
    where
      iter (acc, num) x
        | x == 0    = (acc, num)
        | otherwise = iter (acc + (x `rem` 10), num + 1) (x `quot` 10)
--------------------------------------------------------------------------
integration f a b = let
    chunks = 1000
    h = (b - a) / chunks
    sum acc x 0 = acc
    sum acc x n = sum (acc + f x) (x + h) (n - 1)
  in h * (f a + f b + 2 * (sum 0 (a + h) (chunks - 1))) / 2
--------------------------------------------------------------------------
