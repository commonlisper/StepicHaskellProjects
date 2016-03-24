module Main where
--------------------------------------------------------------------------
import Data.Time.Clock
import Data.Time.Format
import System.Locale
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Data Types"
  print $ "------------------------------"
  print $ logLevelToString Error
  print $ logLevelToString Warning
  print $ logLevelToString Info
  -- print $ logEntryToString (LogEntry getCurrentTime Error "Help me, Please!")
  print $ "------------------------------"
--------------------------------------------------------------------------
timeToString :: UTCTime -> String
timeToString = formatTime Data.Time.Format.defaultTimeLocale "%a %d %T"
--------------------------------------------------------------------------
data LogLevel = Error | Warning | Info deriving Show
--------------------------------------------------------------------------
data LogEntry = LogEntry { timestamp :: UTCTime, logLevel :: LogLevel, message :: String }
--------------------------------------------------------------------------
logLevelToString :: LogLevel -> String
logLevelToString = show
--------------------------------------------------------------------------
logEntryToString :: LogEntry -> String
logEntryToString logEntry = timeToString (logEntry & timestamp) ++
                            ": " ++ logLevelToString (logEntry & logLevel) ++
                            ": " ++ (logEntry & message)
--------------------------------------------------------------------------
infixl 1 &
(&) :: a -> (a -> b) -> b
x & f = f x
--------------------------------------------------------------------------
