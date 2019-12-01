{- SIMPLE FUN #144: DISTINCT DIGIT YEAR
    https://www.codewars.com/kata/simple-fun-number-144-distinct-digit-year/
    Given a number as input, find the smallest number that's larger
    than that number and only contains unique digits. -}
module DistinctDigitYear where
import Data.List

distinctDigitYear :: Int -> Int
distinctDigitYear = read . head . filter allUnique . map show . enumFrom . (+ 1)
  where allUnique x = x == nub x
