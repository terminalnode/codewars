-- https://www.codewars.com/kata/57a1fd2ce298a731b20006a4
-- Given a string, see if it's a palindrome. Ignore case.
module Palindroms where
import Data.Char -- toLower is here

isPalindrom :: String -> Bool
isPalindrom str = x == reverse x
    where x = map toLower str
