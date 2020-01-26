-- https://www.codewars.com/kata/backwards-read-primes
-- Given two integers, find all prime numbers such that they are
-- primes both read normally and backwards. 13 is an example of
-- a backwards prime because BOTH 13 and 31 are prime numbers.
--
module Codewars.Kata.BackWardsPrime where

backwardsPrime :: Integer -> Integer -> [Integer]
backwardsPrime start stop =
  filter revIsPrime $ filter isPrime $ filter notPalindrome [start .. stop]
  where
    notPalindrome n = n /= revNum n
    revIsPrime = isPrime . revNum
    revNum = read . reverse . show

isPrime :: Integral a => a -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime n
  | even n = False
  | otherwise = notElem 0 $ map (mod n) [3,5 .. stop]
  where
    stop = round (sqrt $ fromIntegral n :: Double)
