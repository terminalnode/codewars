# Are they the "same"?
# https://www.codewars.com/kata/550498447451fbbd7600041c
# Given two arrays of whole numbers, return true if the
# second array is the same as the first array squared
# regardless of order. Otherwise return false.
#
# If either of the arrays are nil, return false.

def comp(a1, a2)
  return false if (a1.nil? or a2.nil?)

  a1 = a1.sort.map { |i| i**2 }
  a2 = a2.sort

  a1 == a2
end

# ---------------------- #
# Tests
# ---------------------- #
def test(a1, a2, expected)
  puts "Testing with inputs:\n a1: #{a1}\n a2: #{a2}"
  result = comp a1, a2

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test [121, 144, 19, 161, 19, 144, 19, 11],
     [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19],
     true
test [1, 1, 2], [1, 4, 4], false
test nil, [1, 2, 3], false
test [1, 2, 3], nil, false
