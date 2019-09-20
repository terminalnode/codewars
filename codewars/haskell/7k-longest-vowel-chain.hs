-- https://www.codewars.com/kata/longest-vowel-chain
-- Given a string, find the longst string of consecutive vowels.
-- In the string "codewarriors" the consecutive vowel substrings are ["o", "e", "a", "io"].
-- The longest of these is "io", so the function should return 2.
module Kata where

solve :: String -> Int
solve s = go s []
  where
    go [] [] = 0
    go [] list = maximum $ map length list
    go str list
      | isVowel $ head str = go (dropVowels str) (getVowels str : list)
      | otherwise = go (dropNonvowels str) list
    getVowels = takeWhile isVowel
    dropVowels = dropWhile isVowel
    dropNonvowels = dropWhile (not . isVowel)

isVowel :: Char -> Bool
isVowel = flip elem "aeiou"

-- Test
allWorks :: Bool
allWorks = works0 && works1 && works2 && works3

works0 :: Bool
works0 = solve "codewarriors" == 2

works1 :: Bool
works1 = solve "alexander" == 1

works2 :: Bool
works2 = solve "aeonian" == 3

works3 :: Bool
works3 = solve "aqueous" == 4
