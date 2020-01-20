-- https://www.codewars.com/kata/59a8570b570190d313000037/
-- Given a number n, find the sum of all cubes [1 .. n].

module SumOfCubes where
  sumCubes :: Integer -> Integer
  sumCubes = sum . map (^ (3 :: Integer)) . enumFromTo 1

--  sumCubes = go 0 (0 :: Integer)
--    where go current result goal
--           | current < goal = go next (result + nextCubed) goal
--           | otherwise = result
--           where
--             next = current + 1
--             nextCubed = next ^ (3 :: Integer)
