-- https://www.codewars.com/kata/quick-n-choose-k-calculator
-- Make a calculator that outputs the n choose k value for a given n and k.
-- n choose k or binomial coefficient it the number of possible combinations
-- you can get if you take k elements from a set of n elements.
--
-- The formula for this is n!/(k!*(n-k)!), however a
-- certain degree of optimization is said to be expected.
--
-- edit: no optimization was necessary. oh well
module QuickCombin where

choose' :: Integer -> Integer -> Integer
choose' n k
  | n < k = 0
  | otherwise = div (factorial n) (factorial k * factorial (n - k))
  where
    factorial n = product [1 .. n]
