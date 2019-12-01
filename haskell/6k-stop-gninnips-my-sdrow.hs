-- https://www.codewars.com/kata/stop-gninnips-my-sdrow/
-- Given a string of one or more words, return the same string but
-- with all words of 5 characters or more reversed. The strings
-- will only ever consist of letters and spaces. Keep capitalization.
module Codewars.Kata.Spinning where

spinWords :: String -> String
spinWords str = unwords . map f $ words str
  where
    f s
      | length s < 5 = s
      | otherwise = reverse s
