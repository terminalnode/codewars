{- SNAIL
    https://www.codewars.com/kata/snail
    Traverse a 2D array clockwise, return numbers in the order they come up.
    [ [1,2,3]
    , [4,5,6]
    , [7,8,9] ]
    should return [1,2,3] ++ [6,9] ++ [8,7] ++ [4] ++ [5]
    
    My earlier Java solution to the same problem:
    https://github.com/terminalnode/tiny-projects/tree/master/codewars/java/4k-snail/src
-}

module Snail where

snail :: [[Int]] -> [Int]
snail [] = []
snail xs = map (\(y,x) -> xs !! y !! x) coordinates
  where
    moves = cycle [ (0, 1), (1, 0), (0, -1), (-1, 0) ]
    distances = tail . reverse . concat $ [[x,x] | x <- [1 .. length xs]]
    movePattern = concat $ zipWith (\x y -> take x (repeat y)) distances moves
    coordinates = tail $ scanl (\(x1,y1) (x2,y2) -> (x1+x2, y1+y2)) (0,-1) movePattern
