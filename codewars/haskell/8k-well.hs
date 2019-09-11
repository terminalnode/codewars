-- https://www.codewars.com/kata/57f222ce69e09c3630000212
-- Given a list containing a combination of the [char] "good" and the [char] "bad",
-- if the number of "good" > 2: return "I smell a series!"
-- if the number of good are > 0: return "Publish!"
-- otherwise return "Fail!"

module Well where

well :: [String] -> String
well x =
    if (goods > 2) then "I smell a series!"
    else if (goods > 0) then "Publish!"
    else "Fail!"
    where goods = countGood x

countGood :: [String] -> Int
countGood x = length $ filter filterGood x

filterGood :: String -> Bool
filterGood x = x == "good"
