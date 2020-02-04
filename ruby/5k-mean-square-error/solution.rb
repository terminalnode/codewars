# 5k Mean Square Error
# https://www.codewars.com/kata/51edd51599a189fe7f000015/
#
# Given two arrays of equal length, square the difference of
# each entry ((a1[0] - a2[0])^2 and so on), then divide the
# sum of the new list by it's length.

def solution (a1, a2)
  a1.zip(a2)
    .map { |a| (a[0] - a[1]) ** 2 }
    .sum
    .fdiv a1.length
end

# ---------------------- #
# Tests
# ---------------------- #
def test(a1, a2, expected)
  puts "Testing with inputs:\n a1: #{a1}\n a2: #{a2}"
  result = solution a1, a2

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test [1, 2, 3], [4, 5, 6], 9
test [10, 20, 10, 2], [10, 25, 5, -2], 16.5
test [-1, 0], [0, -1], 1
