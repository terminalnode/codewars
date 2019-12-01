-- https://www.codewars.com/kata/unique-in-order/
-- Given a list of items with an instance of Eq, remove all
-- identical items that lie next to eachother. For example
-- "AABBAA" should return "ABA". "AAaaBBbbAAaa" should return "AaBbAa".
--
-- Best solution:
-- uniqueInOrder = map head . group
module UniqueInOrder
  ( uniqueInOrder
  ) where

uniqueInOrder :: Eq a => [a] -> [a]
uniqueInOrder [] = []
uniqueInOrder (x:xs) = go [x] x xs
  where
    go result _ [] = reverse result
    go result lastInput (y:ys)
      | y /= lastInput = go (y : result) y ys
      | otherwise = go result lastInput ys
