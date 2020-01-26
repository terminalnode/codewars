-- https://www.codewars.com/kata/55c45be3b2079eccff00010f
-- Given a string containing space separated words with
-- exactly one number in them. Sort the words of the string
-- based on the number they contain. Return the result as a
-- new space separated string.
--
-- E.g. "is2 Thi1s T4est 3a"
-- Should produce: "Thi1s is2 3a T4est"
module Codewars.Kata.YourOrderPlease where

import Data.List
import Data.Char

yourOrderPlease :: String -> String
yourOrderPlease = intercalate " " . sortOn (filter isNumber) . words
