-- https://www.codewars.com/kata/563e320cee5dddcf77000158
-- Get the average value from an array. Round down to the nearest integer.

module Codewars.AverageCalculator where

getAverage :: [Int] -> Int
getAverage x = div (sum x) (length x)
