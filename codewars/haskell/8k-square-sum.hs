-- https://www.codewars.com/kata/515e271a311df0350d00000f
-- Complete the square sum function so that it squares each number
-- passed into it and then sums the result together.
-- For example [1,2,2] should return 9 because 1^2 + 2^2 + 2^2 = 9
module SquareSum where

squareSum :: [Integer] -> Integer
squareSum x = sum $ squareAll x

squareAll :: [Integer] -> [Integer]
squareAll x = map (^2) x 
