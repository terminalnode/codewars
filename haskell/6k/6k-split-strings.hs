-- https://www.codewars.com/kata/515de9ae9dcfc28eb6000001
-- Split a [Char] into a list of length two [Char]. If the
-- length of the initial [Char] is odd add a '_'.

module Codewars.Kata.SplitStrings where
import Data.List.Split

solution :: String -> [String]
solution = (chunksOf 2) . go
  where go x
         | (even . length) x = x
         | otherwise = x ++ "_"
