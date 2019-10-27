{- ALPHABETICAL ADDITION
    https://www.codewars.com/kata/alphabetical-addition
    Given a list of lower-case letters, add them together according to their position
    in the alphabet and return the resulting letter. If the letters overflow return to
    the start of the alphabet. I.e. 'z' + 'a' is 'a'.
-}
module AddingUpLetters (addLetters) where
import Data.Char

addLetters :: String -> Char
addLetters = getLetter . sum . map getIndexes
  where
    getLetter = succ . chr . (+ 96) . flip mod 26 . pred
    getIndexes = subtract 96 . ord
