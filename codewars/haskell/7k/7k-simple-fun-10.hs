{- SIMPLE FUN #10: RANGE BIT COUNTING
    https://www.codewars.com/kata/simple-fun-number-10-range-bit-counting
    Given integers a and b, count the number of 1s in the binary representations of [a..b].

    Apparently there's a function called popCount in Data.Bits that
    does exactly this... who knows why.
-}
module RangeBitCounting (rangeBitCount) where

rangeBitCount :: Int -> Int -> Int
rangeBitCount = (countOnes .) . enumFromTo
  where
    countOnes = length . filter ((==) 1) . concatMap decToBin

decToBin :: Int -> [Int]
decToBin n = map getRemainder getNumerators
  where
    getRemainder x = x -2 * div x 2
    getNumerators = takeWhile (> 0) $ map (div n . (^) 2) [0 ..]
