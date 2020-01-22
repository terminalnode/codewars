{-# LANGUAGE NumericUnderscores #-}

-- https://www.codewars.com/kata/52742f58faf5485cae000b9a/
-- Given a number of seconds, return how many years, days,
-- hours, minutes and seconds that is as a string. If the
-- number of seconds is zero, return "now".

module FormatDuration where
import Data.List

formatDuration :: Integer -> String
formatDuration 0 = "now"
formatDuration n = addAnd . addCommas $ zipTimes n
  where
    addCommas :: [String] -> [String]
    addCommas [x] = [x]
    addCommas [x, y] = [x, y]
    addCommas xs = [(intercalate ", " (init xs)), last xs]

    addAnd :: [String] -> String
    addAnd xs = intercalate " and " xs

zipTimes :: Integer -> [String]
zipTimes = map pluralize . filter ((/= 0) . snd) . zip timeNames . timeUnits secondsIn []
  where
    pluralize :: (Show a, Integral a) => (String, a) -> String
    pluralize (s, i)
      | i > 1 = show i ++ " " ++ s ++ "s"
      | otherwise = show i ++ " " ++ s

timeUnits :: (Integral a) => [a] -> [a] -> a -> [a]
timeUnits [] xs _ = reverse xs
timeUnits (l:list) xs n = timeUnits list (div n l:xs) (mod n l)

timeNames :: [String]
timeNames = [ "year", "day", "hour", "minute", "second" ]

secondsIn :: [Integer]
secondsIn = [ 31_536_000, 86_400, 3_600, 60, 1 ]
