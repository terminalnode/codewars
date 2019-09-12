-- https://www.codewars.com/kata/5899dc03bc95b1bf1b0000ad
-- Given a list of integers, return a corresponding list where positive
-- numbers are turned to negatives and vice versa.

module Kata (invert) where
invert :: [Integer] -> [Integer]
invert arr = map negate arr
