-- https://www.codewars.com/kata/5601409514fc93442500010b
-- Given [Int] and Int, determine if the Int is greater than the average of [Int].
-- Return bool.
--
module HowGoodAreYou where

betterThanAverage :: [Int] -> Int -> Bool
betterThanAverage a b = theAverage a < b

theAverage :: [Int] -> Int
theAverage x = sum x `div` length x
