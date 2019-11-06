{- GENERIC NUMERIC TEMPLATE FORMATTER
    https://www.codewars.com/kata/generic-numeric-template-formatter
    Given two strings, use the first as a template to format the first.
    - If the second string is empty, use "1234567890" to fill the template.
    - If the second string is too short, repeat it to fill all spaces.
    - Only replace alphabetic characters, not numbers or other characters.
-}
module Kata.NumericFormatter (numericFormatter) where
import Data.Char (isAlpha)

numericFormatter :: String -> String -> String
numericFormatter template number
  | null number = go [] template (cycle "1234567890")
  | otherwise   = go [] template (cycle number)
  where
    go result [] _ = reverse result
    go result t n
      | (isAlpha . head) t = go (head n : result) (tail t) (tail n)
      | otherwise          = go (head t : result) (tail t) n
