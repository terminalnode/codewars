-- https://www.codewars.com/kata/baby-magpies/
-- Given two strings of 'B's and 'W's representing the color pattern
-- of two magpies, determine if can be a child or grandchild of another.
-- A child must have one difference from it's parent and at most two.
-- Thus a grandchild can have 0 to 4 differences from it's grandmother
-- with zero being possible in case one of the colors flip-flopped.
module BabyMagpies
  ( child
  , grandchild
  ) where

child, grandchild :: String -> String -> Bool
child x1 x2 = numDiff x1 x2 == 1 || numDiff x1 x2 == 2

grandchild x1 x2
  | length x1 == 1 = x1 == x2 -- Due to one-mutation minimum we need this exception.
  | otherwise = numDiff x1 x2 <= 4

numDiff :: Eq a => [a] -> [a] -> Int
numDiff x1 x2 = length . filter (uncurry (/=)) $ zip x1 x2
