-- https://www.codewars.com/kata/fibonacci-tribonacci-and-friends
-- Similar to the tribonacci exercise except here we're given a list of
-- an arbitrary length signifying what n-bonacci it is. For example if the
-- list contains 2 elements and those are [1,1] (or [0,1] depending on definition)
-- then it's a regular fibonacci list. If it contains three values it's a
-- tribonacci and so on and so on.
-- 
-- This solution is also used in one of my tribonacci solutions.
module Xbonacci where

xbonacci :: Num a => [a] -> Int -> [a]
xbonacci as n = take n mapGo
    where
        mapGo = take (len - 1) as ++ map (\(x:_) -> x) go
        go = scanl (\xs _ -> (sum . take len) xs : take len xs) (reverse as) go
        len = length as
