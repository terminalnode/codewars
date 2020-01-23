-- https://www.codewars.com/kata/549ee8b47111a81214000941/
-- Given a two chess positions, count the number of moves
-- required for a knight to get from one to the other.

module ShortestKnightPath.Kata (knight) where

import Data.Char
import Data.List

type Coordinate = (Int, Int)

knight :: String -> String -> Int
knight start stop = go [parsePosition start] [parsePosition start] 0 (parsePosition stop)
  where
    go :: [Coordinate] -> [Coordinate] -> Int -> Coordinate -> Int
    go visited current count goal
      | elem goal visited = count
      | otherwise = go newVisited newCurrent (count + 1) goal
      where
        newCurrent = knightMovements current \\ visited
        newVisited = visited ++ knightMovements current

knightMovements :: [Coordinate] -> [Coordinate]
knightMovements = filter validPosition . concat . map movementMatrix
    where
      movementMatrix :: Coordinate -> [Coordinate]
      movementMatrix (x,y) = [ (x - 1, y + 2), (x - 1, y - 2)
                             , (x + 1, y + 2), (x + 1, y - 2)
                             , (x - 2, y + 1), (x - 2, y - 1)
                             , (x + 2, y + 1), (x + 2, y - 1)
                             ]

parsePosition :: String -> Coordinate
parsePosition (y:x:[]) = ((digitToInt x) - 1, (ord y) - 97)
parsePosition _ = undefined -- invalid position

validPosition :: Coordinate -> Bool
validPosition (x,y) = ok x && ok y
  where ok = flip elem [0..7]
