-- https://www.codewars.com/kata/beginner-lost-without-a-map
-- Given an array of integern, return a new array with each value doubled.
-- Author suggests using the map method, jokes on them. It's the only
-- list interraction I know in Haskell.
-- [1,2,3] -> [2,4,6]

module Codewars.Kata.LostWithout where
maps :: [Int] -> [Int]
maps xs = map (*2) xs
