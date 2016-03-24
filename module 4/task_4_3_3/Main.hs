module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ abbrFirstName (Person "Dmytro" "Pavlenko" 29)
  print $ "------------------------------"
--------------------------------------------------------------------------
data Person = Person { firstName :: String, lastName :: String, age :: Int }
  deriving Show
--------------------------------------------------------------------------
abbrFirstName :: Person -> Person
abbrFirstName p | length (firstName p) < 2 = p
                | otherwise = p { firstName = [head (firstName p),'.'] }
--------------------------------------------------------------------------
