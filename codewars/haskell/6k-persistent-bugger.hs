-- https://www.codewars.com/kata/persistent-bugger
-- Function takes a positive parameter and returns it's "multiplicative persistence",
-- that is how many times we need to repeat a process where we multiple the digits
-- in a number before reaching a single digit product.
-- For example:
-- `persistence 4` returns `0` because 4 is already single digit.
-- `persistence 28` returns `2` because 2 * 8 is 16 and 1 * 6 is 6.
module Codewars.G.Persistence where

persistence :: Int -> Int
persistence = go 0
  where
    go n num
      | getLength num == 1 = n
      | otherwise = go (n + 1) $ getProduct num
    digitize :: Int -> [Int]
    digitize = map (read . (: [])) . show
    getLength = length . digitize
    getProduct = product . digitize
