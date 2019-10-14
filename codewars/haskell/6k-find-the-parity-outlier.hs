-- https://www.codewars.com/kata/find-the-parity-outlier
-- Given a list where all except one number are odd or even, find the outlier.
-- Examples:
--   findOutlier [2,3,4] is 3
--   findOutlier [1,2,3] is 2
-- All lists have at least three numbers.
module Kata
  ( findOutlier
  ) where

findOutlier :: [Int] -> Int
findOutlier xs
  | oddOutlier xs = head . filter odd $ xs
  | otherwise = head . filter even $ xs
  where
    oddOutlier = (> 1) . length . filter id . map even . take 3
-- Apparently there's a great function called partition in Data.List
-- partition :: (a -> Bool) -> [a] -> ([a], [a])
-- That would've been better to use I suppose.
