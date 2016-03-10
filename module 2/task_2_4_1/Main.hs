module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print "Standart Classes Types"
  print $ "------------------------------"
  print $ stomp (5 :: Int)
  print $ doesEnrageGork (5 :: Int)
  print $ doesEnrageGork (-5 :: Int)
  print $ doesEnrageGork (0 :: Int)
  print $ "------------------------------"
  print $ stab (5 :: Int)
  print $ doesEnrageMork (5 :: Int)
  print $ doesEnrageMork (-5 :: Int)
  print $ doesEnrageMork (0 :: Int)
  print $ "------------------------------"
  print $ stompOrStab (0 :: Int)
  print $ stompOrStab (6 :: Int)
  print $ stompOrStab (20 :: Int)
  print $ "------------------------------"
--------------------------------------------------------------------------
class KnownToGork a where
  stomp :: a -> a
  doesEnrageGork :: a -> Bool

class KnownToMork a where
  stab :: a -> a
  doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
  stompOrStab :: a -> a
  stompOrStab x | doesEnrageMork x && doesEnrageGork x = stomp (stab x)
                | doesEnrageMork x = stomp x
                | doesEnrageGork x = stab x
                | otherwise = x

instance KnownToGork Int where
  stomp x = x + 1
  doesEnrageGork x | x > 5    = True
                   | otherwise = False

instance KnownToMork Int where
  stab x = x + 2
  doesEnrageMork x | x > 10     = True
                   | otherwise = False

instance KnownToGorkAndMork Int where
