-- https://www.codewars.com/kata/54da539698b8a2ad76000228
-- Return True if supplied [Char] is exactly 10 entries long
-- and has exactly as many 'w' as 'e' and 's' as 'n'.
-- Otherwise return False.

module Codewars.Kata.TenMinuteWalk where

type Point = (Int, Int)

isValidWalk :: [Char] -> Bool
isValidWalk walk
  | badWalk walk = False
  | otherwise = (0,0) == iterateWalk walk
  where
    badWalk = (/= 10) . length . take 11

iterateWalk :: [Char] -> Point
iterateWalk = go (0,0)
  where
    go result [] = result
    go (x,y) (next:xs)
      | next == 'e' = go (x+1, y) xs
      | next == 'w' = go (x-1, y) xs
      | next == 'n' = go (x, y-1) xs
      | next == 's' = go (x, y+1) xs
      | otherwise = go (x,y) xs

