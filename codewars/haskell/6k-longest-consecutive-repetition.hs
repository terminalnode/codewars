-- https://www.codewars.com/kata/character-with-longest-consecutive-repetition/
-- Given a string, return Nothing for empty string and the character with the
-- most consecutive repetitions for anything else.
-- If there are multiple characters tied for the position, return the one that
-- occurs first in the string.
module Kata(longestRepetition) where
import Data.List

longestRepetition :: String -> Maybe (Char, Int)
longestRepetition [] = Nothing
longestRepetition input = Just (head mostRepetitions, length mostRepetitions)
  where
    mostRepetitions = last . sortOn length . reverse . group $ input
