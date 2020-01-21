-- https://www.codewars.com/kata/5592e3bd57b64d00f3000047
-- For a given number, find n where the sum of [n^3, (n-1)^3 ... 1]
-- is equal to that number. If no such n exists return -1.
--
-- This solution isn't fast enough though. It is in every other
-- language apparently, but in haskell this is not a 6k problem.

module Codewars.Kata.PileOfCubes where

findNb :: Integer -> Integer
findNb = go 1
  where go cubes volume
         | volume > 0 = go (cubes + 1) (volume - cubes ^ 3)
         | volume == 0 = cubes - 1
         | otherwise = -1
