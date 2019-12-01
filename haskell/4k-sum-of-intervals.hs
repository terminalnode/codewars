-- https://www.codewars.com/kata/sum-of-intervals/
-- Calculate the sum of a list of intervalls. If there is an overlap
-- the overlapping regions should only be counted once.
-- Thus [(1,4), (3,5)] can be considered the same as [(1,5)].
--
-- The problem is unclear as to whether the ends are inclusive or exclusive.
-- I've solved it assuming that the start is inclusive and the end is exclusive,
-- and that seems to have worked fine.
module SumOfIntervals
  ( sumOfIntervals
  ) where

import Data.List

sumOfIntervals :: [(Int, Int)] -> Int
sumOfIntervals = length . nub . concatMap createIntervals
  where
    createIntervals x = [fst x .. snd x - 1]
