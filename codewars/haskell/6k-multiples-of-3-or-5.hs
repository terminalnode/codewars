-- https://www.codewars.com/kata/multiples-of-3-or-5
-- For a number n, return the sum of all numbers between 1 (inclusive)
-- and n (exclusive) that are divisible by 3 and/or 5.
module MultiplesOf3And5 where

solution :: Integer -> Integer
solution number = sum $ filter fizzbuzz [1 .. number - 1]
  where
    fizz n = 0 == mod n 5
    buzz n = 0 == mod n 3
    fizzbuzz n = buzz n || fizz n
