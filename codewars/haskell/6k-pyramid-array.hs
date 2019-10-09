-- https://www.codewars.com/kata/pyramid-array
-- Write a function that when given a number >= 0 returns
-- a list of ascending length subarrays filled with 1s.
--
-- pyramid(0) should be [ ]
-- pyramid(1) should be [ [1] ]
-- pyramid(2) should be [ [1], [1,1] ]
-- etc
module Kata where

pyramid :: Int -> [[Int]]
pyramid 0 = []
pyramid n = map (`replicate` 1) [1 .. n]
