module ClassesTypes
    ( classesTypesMain
    ) where
--------------------------------------------------------------------------
classesTypesMain :: IO()
classesTypesMain = do
  print "Classes Types"
  print $ "------------------------------"
  print $ toString True
  print $ toString False
  print $ toString ()
  print $ "------------------------------"
  print $ (1,2) == (1,2)
  print $ "------------------------------"
  print $ toString (False,())
  print $ toString (True,False)
  print $ "------------------------------"
--------------------------------------------------------------------------
-- class Eq' a where
--   (==) :: a -> a -> Bool
--   (/=) :: a -> a -> Bool
--   x /= y = not (x == y) -- реализация по-умолчанию
--   x == y = not (x /= y) -- циклическая реализация по-умолчанию
-- --------------------------------------------------------------------------
-- instance Eq' Bool where
--   True  == True   = True
--   False == False  = True
--   _     == _      = False
--   -- x     /= y      = not (x == y)
--------------------------------------------------------------------------
class Printable a where
  toString :: a -> String
--------------------------------------------------------------------------
instance Printable Bool where
  toString True = "true"
  toString False = "false"
--------------------------------------------------------------------------
instance Printable () where
  toString x = "unit type"
--------------------------------------------------------------------------
-- instance (Eq a, Eq b) => Eq (a, b) where
--   p1 == p2 = fst p1 == fst p2 && snd p1 == snd p2
--------------------------------------------------------------------------
instance (Printable a, Printable b) => Printable (a, b) where
  toString (a, b) = "(" ++ toString a ++ "," ++ toString b ++ ")"
--------------------------------------------------------------------------
