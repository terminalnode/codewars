-- https://www.codewars.com/kata/5550d638a99ddb113e0000a2
-- Given a list xs and an integer n, remove every n:th
-- value from xs and create a new list with the order
-- they were being removed in.
module Josephus where

josephus :: [a] -> Int -> [a]
josephus start n = go [] start
  where
    go ys [] = reverse ys
    go ys xs = go (head (rotate xs) : ys) (tail (rotate xs))
    rotate xs = take (length xs) (drop (n - 1) (cycle xs))
