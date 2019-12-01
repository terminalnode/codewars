-- https://www.codewars.com/kata/duplicate-encoder/
-- Given a string of random characters, return a new string where each character is
-- replaced by ( if the character appears only once in the string and ) otherwise.
--
-- Ignore case.
module Dups where

import Data.Char

duplicateEncode :: String -> String
duplicateEncode s = map (g . f . toLower) s
  where
    f c = length . filter ((== c) . toLower) $ s
    g 1 = '('
    g _ = ')'

testAll :: Bool
testAll = t0 && t1 && t2 && t3 && t4 && t5
  where
    t0 = duplicateEncode "din" == "((("
    t1 = duplicateEncode "recede" == "()()()"
    t2 = duplicateEncode "Success" == ")())())"
    t3 = duplicateEncode "CodeWarrior" == "()(((())())"
    t4 = duplicateEncode "Supralapsarian" == ")()))()))))()("
    t5 = duplicateEncode "iiiiii" == "))))))"
