-- https://www.codewars.com/kata/decoded-string-by-the-numbers
-- From a string of pseudo-random characters, return a list of strings
-- containing each character from the string individually. If a
-- backslash followed by a number is encountered, the next string in
-- the list should be that many characters long.
--
-- Some edge cases that are not explained on the codewars page:
-- * "\\\\abc" should be parsed as ["\\", "\\", "a", "b", "c"]
-- * "\\0ab" should be parsed as ["\\", "0", "a", "b"].
-- * "\\02abc" should be parsed as ["ab", "c"]
module ByTheNumbers
  ( decode
  ) where

import Data.Char

decode :: String -> [String]
decode = go []
  where
    go result [] = reverse result
    go result ('\\':x:xs)
      | isDigit x && getNum (x : xs) /= 0 =
        go (getChars (x : xs) : result) (dropNum (x : xs))
      | otherwise = go (['\\'] : result) (x : xs)
    go result (x:xs) = go ([x] : result) xs
    getNum xs = read $ takeWhile isDigit xs
    dropNum xs = drop (getNum xs) . dropWhile isDigit $ xs
    getChars xs = take (getNum xs) (dropWhile isDigit xs)
