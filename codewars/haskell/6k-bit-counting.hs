-- https://www.codewars.com/kata/bit-counting
-- Count the number of 1s in the binary representation of a number.
-- 1234 in binary is 10011010010 so the function should return 5.
module BitCounting
  ( countBits
  ) where

countBits :: Int -> Int
countBits n = sum $ map getRemainder getNumerators
  where
    getRemainder x = x - 2 * div x 2
    getNumerators = takeWhile (> 0) $ map (div n . (^) 2) (enumFrom 0)

-- Tests
allWorks :: Bool
allWorks = works0 && works1

works0 :: Bool
works0 = countBits 1234 == 5

works1 :: Bool
works1 = countBits 1235 == 6
