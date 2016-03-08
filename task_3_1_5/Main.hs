module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ isPalindrome [1]
  print $ isPalindrome [1,2]
  print $ isPalindrome "abba"
  print $ "------------------------------"
--------------------------------------------------------------------------
isPalindrome :: Eq a => [a] -> Bool
isPalindrome list = list == reverse list
--------------------------------------------------------------------------
