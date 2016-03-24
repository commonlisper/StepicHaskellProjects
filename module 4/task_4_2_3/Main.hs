module Main where
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ doSomeWork ValidData
  print $ doSomeWork' ValidData
  print $ doSomeWork InvalidData
  print $ doSomeWork' InvalidData
  print $ "------------------------------"
--------------------------------------------------------------------------
data Result = Fail | Success deriving Show
data SomeData = ValidData | InvalidData deriving Show
--------------------------------------------------------------------------
doSomeWork :: SomeData -> (Result, Int)
doSomeWork ValidData = (Success, 0)
doSomeWork InvalidData = (Fail, 5)
--------------------------------------------------------------------------
data Result' = Success' | Fail' Int
--------------------------------------------------------------------------
instance Show Result' where
    show Success'       = "Success"
    show (Fail' errNum) = "Fail: " ++ show errNum
--------------------------------------------------------------------------
doSomeWork' :: SomeData -> Result'
doSomeWork' x = case doSomeWork x of
                  (Success, _)   -> Success'
                  (Fail, errNum) -> Fail' errNum
--------------------------------------------------------------------------
