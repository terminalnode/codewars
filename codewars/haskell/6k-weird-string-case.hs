-- https://www.codewars.com/kata/weird-string-case
-- Given a string, return another string where for every word
-- the first letter is capitalised and every letter after that
-- alters in case. "this is a test" should return "ThIs Is A TeSt"
--
-- Note that the case switching only operates within words,
-- not between them. It's always "A TeSt", never "a tEsT".  
module WeIrDStRiNgCaSe where

import Data.Char

toWeirdCase :: String -> String
toWeirdCase str = unwords . map (go zero []) $ words str
  where
    go _ result [] = reverse result
    go n result (x:xs)
      | even n = go (n + 1) (toUpper x : result) xs
      | otherwise = go (n + 1) (toLower x : result) xs
    zero = 0 :: Integer -- For avoiding type inference
