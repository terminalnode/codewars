-- https://www.codewars.com/kata/59ccf051dcc4050f7800008f
-- Given a number range of numbers, find the first (n,m) such that
-- n and m is within range and that the sum of all of n's proper
-- divisors is m + 1 and vice versa. If there is no such number in
-- range return Nothing.
module Buddy.Kata
  ( buddy
  ) where

import Data.List

buddy :: Int -> Int -> Maybe (Int, Int)
buddy start lim
  | start > lim = Nothing
  | otherwise = go start
  where
    go n
      | isMatch = Just (n, myBuddy - 1)
      | otherwise = buddy (start + 1) lim
    myBuddy = sumDiv start
    isMatch = myBuddy > start && sumDiv (myBuddy - 1) == start + 1

sumDiv :: Int -> Int
sumDiv 0 = 0
sumDiv 1 = 0
sumDiv n = sum $ nub $ completedSet incompleteSet
  where
    completedSet xs = xs ++ map (n `div`) (tail xs)
    incompleteSet = filter isDivisor [1 .. floor . sqrt $ fromIntegral n]
    isDivisor x = 0 == mod n x
