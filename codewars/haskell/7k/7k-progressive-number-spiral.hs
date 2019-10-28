{- PROGRESSIVE SPIRAL NUMBER POSITION
    We're storing stuff in an outwardsgoing spiral for some reason. Given a number
    of things to store, how many layers must the spiral have?
    Ex. 1: For 9 things we need two layers:
    05 04 03
    06 01 02
    07 08 09

    Ex. 2: For 1 thing we need one layer:
    01

    I.e., how many layers are there in the smallest square of
    an odd number that is larger than the input.
-}

module Layers where

layers :: Int -> Int
layers = (+1) . (`div` 2) . nextOdd . intSqrt
  where
    floorSqrt = floor . sqrt . fromIntegral
    intSqrt n
      | (floorSqrt n) ^ 2 == n = floorSqrt n
      | otherwise = floorSqrt n + 1
    nextOdd n
      | odd n = n
      | otherwise = n + 1

-- TIL about `ceiling`, which would've rendered all the helper functions unneccesary:
-- layers = (+1) . (`div` 2) . ceiling . sqrt . fromIntegral
