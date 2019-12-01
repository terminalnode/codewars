-- https://www.codewars.com/kata/square-matrix-multiplication
-- Write a function to multiply two square matrices.
-- How to square matrix multiplication:
-- The dot product of row 1 in matrix one and column 1 in matrix two is the first cell in the resulting matrix.
-- The dot product of say [a1,b1,c1] and [a2,b2,c2] is a1*a2 + b1*b2 + c1*c2.
module MatrixMul where

import Data.List (transpose)
type Mat a = [[a]]

matMul :: Num a => Mat a -> Mat a -> Mat a
matMul xs ys = go xs (transpose ys) []
    where
        go [] _ result = reverse result
        go (z:zs) tys result = go zs tys (getRow z tys : result)
        getRow z = map (sum . zipWith (*) z)

test :: Bool
test = matMul input1 input2 == result
    where input1 = [[1,2,3],[4,5,6]] :: [[Int]]
          input2 = [[7,8],[9,10],[11,12]] :: [[Int]]
          result = [[58,64],[139,154]] :: [[Int]]
