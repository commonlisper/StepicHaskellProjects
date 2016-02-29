module ParametricPolymorphism1 (parametricPolymorphism1Main)
where

import Data.Function

--------------------------------------------------------------------------
parametricPolymorphism1Main :: IO()
parametricPolymorphism1Main = do
  print "Parametric Polymorphism 1"
  print $ "------------------------------"
  print $ (\x y z -> x+y+z) `on3` (^2)
  print $ "------------------------------"
--------------------------------------------------------------------------
getSecondFrom a b c = b
--------------------------------------------------------------------------
apply2 f x = f (f x)
--------------------------------------------------------------------------
multSecond = g `on` h

g = (*)

h :: (t, t1) -> t1
h p = snd p
--------------------------------------------------------------------------
on3 :: (b -> b -> b -> c) -> (a -> b) -> a -> a -> a -> c
on3 op f x y z = 
--------------------------------------------------------------------------
