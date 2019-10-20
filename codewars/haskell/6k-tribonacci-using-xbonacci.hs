-- https://www.codewars.com/kata/tribonacci-sequence
-- Make a fibonacci-like sequence, but instead of each cell entry being the
-- sum of the last two cells, make it the sum of the last three cells.
--
-- The inputs to the function are:
--  * a 3-tuple with the first three numbers
--  * a number indicating the length of the list to be returned
module Tribonacci where

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (a, b, c) n = take n (xbonacci [a,b,c] n)

xbonacci :: Num a => [a] -> Int -> [a]
xbonacci as n = take n mapGo
    where
        mapGo = take (len - 1) as ++ map (\(x:_) -> x) go
        go = scanl (\xs _ -> (sum . take len) xs : take len xs) (reverse as) go
        len = length as

testAccuracy :: Bool
testAccuracy = test1 && test2 && test3
  where
    test1 = tribonacci (1, 1, 1 :: Int) 10 == [1, 1, 1, 3, 5, 9, 17, 31, 57, 105]
    test2 = tribonacci (0, 0, 1 :: Int) 10 == [0, 0, 1, 1, 2, 4, 7, 13, 24, 44]
    test3 = tribonacci (0, 1, 1 :: Int) 10 == [0, 1, 1, 2, 4, 7, 13, 24, 44, 81]
