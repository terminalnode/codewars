-- https://www.codewars.com/kata/sum-of-differences-in-array
-- Sort the list in descending order, return the sum of all differences.
-- So for [10,2,1] return (10 - 2) + (2 - 1) = 9
module Diff where

import Data.List
import Data.Ord

sumOfDifferences :: [Int] -> Maybe Int
sumOfDifferences [] = Nothing
sumOfDifferences [_] = Nothing
sumOfDifferences xs = Just $ go (sortedList xs)
  where
    sortedList = sortOn Data.Ord.Down
    go [x1, x2] = x1 - x2
    go (x1:x2:xs) = x1 - x2 + go (x2 : xs)
