module IPv4 where
import Data.Word  (Word32)
import Numeric (showIntAtBase)
import Data.Char (intToDigit, digitToInt)
import Data.List (foldl', intercalate)
import Data.List.Split (chunksOf)

type IPString = String

word32ToIP :: Word32 -> IPString
word32ToIP = joinBinaryIPStrings . chunksOf 8 . padString . decToBinary
  where padString s
          | length s < 32 = padString ('0' : s)
          | otherwise = s

decToBinary :: (Integral a, Show a) => a -> String
decToBinary = flip (showIntAtBase 2 intToDigit) ""

binaryToDec :: String -> String
binaryToDec = show . foldl' (\acc x -> acc * 2 + digitToInt x) 0

joinBinaryIPStrings :: [IPString] -> IPString
joinBinaryIPStrings = intercalate "." . map binaryToDec
