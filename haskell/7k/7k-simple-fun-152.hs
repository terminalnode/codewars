{- SIMPLE FUN #152: INVITE MORE WOMEN?
    https://www.codewars.com/kata/simple-fun-number-152-invite-more-women
    Something something stupid sexist premise. Given a list of 1s and -1s,
    return True if there are fewer -1 than 1, otherwise False. -}

module SF153 where

inviteMoreWomen :: [Int] -> Bool
inviteMoreWomen = (0 <) . sum
