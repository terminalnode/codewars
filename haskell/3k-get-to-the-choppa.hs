-- https://www.codewars.com/kata/5573f28798d3a46a4900007a/

module Kata.GetToTheChoppa where

import Data.Maybe

type Pos = (Int, Int)
data Node = Passable | NotPassable deriving (Eq, Show)
type Grid = [[ Node ]]
type Path = [ Pos ]

shortestPath :: Grid -> Pos -> Pos -> Path
shortestPath grid start goal = undefined

isPassable :: Grid -> Pos -> Bool
isPassable grid (x,y) = fromMaybe False $ do
  row <- get y grid
  node <- get x row
  return (node == Passable)

get :: Int -> [a] -> Maybe a
get 0 (x:_) = Just x
get _ [] = Nothing
get n (_:xs)
  | n > 0 = get (n - 1) xs
  | otherwise = Nothing
