-- https://www.codewars.com/kata/pyramid-slide-down
-- Given a pyramid in the form of [[x], [x1,x2], [x3,x4,x5]],
-- find the longest slide down. I.e. starting with the top value,
-- going down to the larger of the two values on the second row,
-- then down to the larger of the next two adjacent to that one.
module PyramidSlideDown where

longestSlideDown :: [[Int]] -> Int
longestSlideDown = head . mergeRows . reverse
  where
      mergeRows (x1:x2:xs) = mergeRows (zipWith (+) (mergers x1 []) x2 : xs)
      mergeRows [x] = x
      mergeRows [] = [0]
      mergers (x1:x2:xs) pairs = mergers (x2:xs) (max x1 x2 : pairs)
      mergers _ pairs = reverse pairs

-- Pyramids for testing purposes
smallPyramid :: [[Int]] -- Should be 23
smallPyramid = [ [3]
               , [7, 4]
               , [2, 4, 6]
               , [8, 5, 9, 3]
               ]

mediumPyramid :: [[Int]] -- Should be 1074
mediumPyramid = [ [75]
                , [95, 64]
                , [17, 47, 82]
                , [18, 35, 87, 10]
                , [20, 04, 82, 47, 65]
                , [19, 01, 23, 75, 03, 34]
                , [88, 02, 77, 73, 07, 63, 67]
                , [99, 65, 04, 28, 06, 16, 70, 92]
                , [41, 41, 26, 56, 83, 40, 80, 70, 33]
                , [41, 48, 72, 33, 47, 32, 37, 16, 94, 29]
                , [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14]
                , [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57]
                , [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48]
                , [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31]
                , [04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23]
                ]
