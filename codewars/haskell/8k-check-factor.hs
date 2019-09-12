-- https://www.codewars.com/kata/grasshopper-check-for-factor/
-- Check if factor is a factor of base, if it is, return true otherwise false.
--
module CheckFactor where

checkForFactor :: Int -> Int -> Bool
checkForFactor base factor = (mod base factor) == 0
