-- https://www.codewars.com/kata/find-the-missing-letter
-- Given an array of upper or lower case letters, not mixed case,
-- find the one missing in the sequence. There will always
-- be exactly one missing.
module Kata where

findMissingLetter :: String -> Char
findMissingLetter (x:xs) = go xs (succ x)
  where
    go (y:ys) next
      | next /= y = next
      | otherwise = go ys (succ y)
