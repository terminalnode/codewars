-- https://www.codewars.com/kata/find-the-odd-int
-- Given a list, find the [Int] that appears an 
-- odd number of times. The tests will always
-- provide such a number, and the list will
-- always contain at least one element.
--
-- This solution will throw an exception when given a list
-- with no such number, but the problem statement explicitly
-- states that we need not worry about such things.
module Codewars.Kata.FindOdd where

import Data.List

findOdd :: [Int] -> Int
findOdd = head . head . filter (odd . length) . group . sort
