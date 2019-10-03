-- https://www.codewars.com/kata/which-section-did-you-scroll-to/
-- We have a website split into sections. The first section starts at
-- pixel 0 and is lasts until pixel (list !! 0) - 1. The second one
-- starts at pixel (list !! 0) and lasts until that value plus (list !! 1) - 1.
-- If we scroll past the last sectcion, return Nothing.
module Section
  ( section
  ) where

section :: Int -> [Int] -> Maybe Int
section = go 0 0 -- Start index and start minimum values
  where
    go _ _ _ [] = Nothing -- It's over
    go index lower current (upper:xs)
      | current >= lower && current < (lower + upper) = Just index
      | otherwise = go (index + 1) (lower + upper) current xs
