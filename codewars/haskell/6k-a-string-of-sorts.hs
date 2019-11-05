{- A STRING OF SORTS
    https://www.codewars.com/kata/a-string-of-sorts/
    Given two strings, sort the first one based on the order of the second one.

    sortString "foos" "of"       -> "oofs"
    sortString "string" "gnirts" -> "gnirts"
    sortString "banana" "abn"    -> "aaabnn"
-}
module AStringOfSorts (sortString) where
import Data.List

sortString :: String -> String -> String
sortString s1 s2 = sortBy compareIndex (filter inS2 s1) ++ filter (not . inS2) s1
  where
    inS2 = flip elem s2
    compareIndex a b = compare (elemIndex a s2) (elemIndex b s2)
