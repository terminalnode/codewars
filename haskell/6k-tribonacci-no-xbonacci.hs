-- https://www.codewars.com/kata/tribonacci-sequence
-- Make a fibonacci-like sequence, but instead of each cell entry being the
-- sum of the last two cells, make it the sum of the last three cells.
--
-- The inputs to the function are:
--  * a 3-tuple with the first three numbers
--  * a number indicating the length of the list to be returned
module Tribonacci where

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (a, b, c) n = take n mapGo
    where
        mapGo = a : b : map (\(x:_) -> x) go
        go = scanl (\xs _ -> [(sum . take 3) xs, head xs, xs !! 1]) [c,b,a] go
