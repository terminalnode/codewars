-- https://www.codewars.com/kata/all-balanced-parentheses
-- Given a number, give a [String] showing all valid parentheses permutations.

module Balanced.Parens where

balancedParens :: Int -> [String]
balancedParens n = addParen [("", n, 0)] []
  where
      addParen :: [(String, Int, Int)] -> [String] -> [String]
      addParen [] allP = allP
      addParen ((str, maxP, openP):xs) allP
        | maxP == 0 && openP == 0 = addParen xs (str : allP)
        | maxP == 0               = addParen (newClosed:xs) allP
        | openP == 0              = addParen (newOpen:xs) allP
        | otherwise               = addParen (newOpen:newClosed:xs) allP
        where
          newOpen                 = (')':str, maxP - 1, openP + 1)
          newClosed               = ('(':str, maxP, openP - 1)
